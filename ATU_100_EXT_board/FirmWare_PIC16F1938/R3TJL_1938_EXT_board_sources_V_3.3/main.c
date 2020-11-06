  //   ATU-100 project
 //   David Fainitski & Vlad Agafonov
 //   2016 - 2019

#include    "oled_control.h"
#include    "pic_init.h"
#include    "main.h"


// Variables
  int SWR_fixed_old = 0, work_int;
  unsigned char work_char, work_str[7], work_str_2[7];
  float Forward;
  int Power =0, Power_old = 10000;
  int SWR_old = 10000;
  char type, Soft_tune = 0, Auto = 0, Track = 0;
  char bypas = 0, cap_mem = 0, ind_mem = 0, SW_mem = 0, Auto_mem = 0;
  int Auto_delta;
  char Restart = 0, Test = 0, lcd_prep_short = 0;
  char L = 1, but= 0;
  int Cap1, Cap2, Cap3, Cap4, Cap5, Cap6, Cap7;
  int Ind1, Ind2, Ind3, Ind4, Ind5, Ind6, Ind7;
  char Dysp_delay = 0;
  int dysp_cnt = 0;
  float dysp_cnt_mult = 2.3;
  char Loss_mode = 0, Fid_loss;

//void interrupt () {
//}


void main() {
   if(STATUS.B4==0) Restart = 1;
   pic_init();
   //
   Delay_ms (100);
   asm CLRWDT;
   cells_init();
   Soft_I2C_Init();
   if(type==0) { // 2-colors led  reset
      LATB.B6 = 1;
      LATB.B7 = 1;
   }
   dysp_cnt = Dysp_delay * dysp_cnt_mult;
   //
   Delay_ms(200);
   asm CLRWDT;
    //
   if(L_q==5)L_mult = 1;
   else if(L_q==6) L_mult = 2;
   else if(L_q==7) L_mult = 4;
   if(C_q==5) C_mult =1;
   else if(C_q==6) C_mult = 2;
   else if(C_q==7) C_mult = 4;
   
   led_init();
   //
   if(Test==0) {
      cap = EEPROM_Read(255);
      ind = EEPROM_Read(254);
      SW = EEPROM_Read(253);
      swr_a = EEPROM_Read(252) * 256;
      swr_a += EEPROM_Read(251);
      set_ind(ind);
      set_cap(cap);
      set_sw(SW);
      if(Restart==1 ) lcd_prep_short = 1;
      lcd_prep();
   }

   lcd_ind();



 //*******************************

   while(1) {
     asm CLRWDT;
     lcd_pwr();
     //
     if(Test==0) button_proc();
     else button_proc_test();
     //
     if(dysp_cnt!=0) dysp_cnt --;
     else if(Test==0 & Dysp_delay!=0) dysp_off();

     // next While code

  }
}


//***************** Routines *****************

 void button_proc_test(void) {
     if(Button(&PORTB, 0, 50, 0)){    // Tune btn
        Delay_ms(250);
        asm CLRWDT;
        if(PORTB.B0==1) { // short press button
           if(SW==0) SW = 1; else SW = 0;
           set_sw(SW);
           lcd_ind();
        }
         else {
             if(L==1) L = 0; else L = 1;
             if(L==1) {
               if(type==4 |type==5)   // 128*64 OLED
                 led_wr_str (0, 16+12*8, "l", 1);
               else if(type!=0)              // 1602 LCD & 128*32 OLED
                 led_wr_str (0, 8, "l", 1);
             }

             else {
               if(type==4 |type==5)   // 128*64 OLED
                 led_wr_str (0, 16+12*8, "c", 1);
               else if(type!=0)              // 1602 LCD & 128*32 OLED
                 led_wr_str (0, 8, "c", 1);
             }
          Delay_ms(1500);
          asm CLRWDT;
          if(PORTB.B0==0) {     // long press button
            Test = 0; // wery long press button
            if(EEPROM_Read(2) == 1) Auto = 1;
            // probuem zapis eeprom
            EEPROM_Write(255, cap);
            EEPROM_Write(254, ind);
            EEPROM_Write(253, SW);
            EEPROM_Write(252, swr_a/256);
            EEPROM_Write(251, swr_a%256);
            // end
            if(type==4 | type==5) {    // 128*64 OLED
                   led_wr_str (2, 16, "AUTO    ", 8);
                   asm CLRWDT;
                   delay_ms(1000);
                   led_wr_str (2, 16, "SWR=0.00", 8);
                   if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
                   //else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
                   else led_wr_str (0, 16+8*12, " ", 1);
                   asm CLRWDT;
                }
                else if(type!=0) {// 1602 LCD & 128*32 OLED
                   led_wr_str (1, 0, "AUTO    ", 8);
                   asm CLRWDT;
                   delay_ms(1000);
                   led_wr_str (1, 0, "SWR=0.00", 8);
                   if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
                   //else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
                   else led_wr_str (0, 8, " ", 1);
                   asm CLRWDT;
                }
          }
        }
       while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT ;   }
     }  // END Tune btn
     //
     if(Button(&PORTB, 2, 50, 0)){   // BYP button
        asm CLRWDT;
        while(PORTB.B2==0) {
           if(L & ind<32*L_mult-1) {
              ind ++;
              set_ind(ind);
           }
           else if(!L & cap<32*L_mult-1) {
              cap ++;
              set_cap(cap);
           }
           lcd_ind();
           lcd_pwr();
           Delay_ms(30);
           asm CLRWDT;
        }
     }
    // end of BYP button
     //
     if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
        asm CLRWDT;
        while(PORTB.B1==0) {
           if(L & ind>0) {
              ind --;
              set_ind(ind);
           }
           else if(!L & cap>0) {
              cap --;
              set_cap(cap);
           }
           lcd_ind();
           lcd_pwr();
           Delay_ms(30);
           asm CLRWDT;
        }
     }
     return;
}


void button_proc(void) {
    if(Button(&PORTB, 0, 50, 0) | Soft_tune){
        dysp_on();
        dysp_cnt = Dysp_delay * dysp_cnt_mult;
        Delay_ms(250);
        asm CLRWDT;
        if(Soft_tune == 0 & PORTB.B0==1) { // short press button
           show_reset();
           bypas =0;
        }
        else {  // long press button
           p_Tx = 1;         //
           n_Tx = 0;         // TX request
           Delay_ms(250);    //
           btn_push();
           bypas = 0;
           while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
           Soft_tune = 0;
        }
     }
     //
     if(Button(&PORTB, 2, 50, 0)){   // BYP button
        Delay_ms(450);
        if(PORTB.B2==1) { // short press button
           dysp_on();
           dysp_cnt = Dysp_delay * dysp_cnt_mult;
           asm CLRWDT;
           if(bypas == 0) {
              bypas = 1;
              cap_mem = cap;
              ind_mem = ind;
              SW_mem = SW;
              cap = 0;
              ind = 0;
              SW = 1;
              set_ind(ind);
              set_cap(cap);
              set_SW(SW);
              if(Loss_mode==0) lcd_ind();
              Auto_mem = Auto;
              Auto = 0;
           }
           else {
              bypas = 0;
              cap = cap_mem;
              ind = ind_mem;
              SW = SW_mem;
              set_cap(cap);
              set_ind(ind);
              set_SW(SW);
              if(Loss_mode==0) lcd_ind();
              Auto = Auto_mem;
           }
           if(type==4 | type==5) {      // 128*64 OLED
             if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
             else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
             else led_wr_str (0, 16+8*12, " ", 1);
           }
           else if(type!=0) { //  1602 LCD  or 128*32 OLED
             if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
             else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
             else led_wr_str (0, 8, " ", 1);
           }
           asm CLRWDT;
           while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
        }
        else {
             if (bypas==0 & type!=0) {   // long press button
                Test = 1;
                Auto = 0;
                if(type==4 | type==5) {    // 128*64 OLED
                   led_wr_str (2, 16, "MANUAL  ", 8);
                   asm CLRWDT;
                   delay_ms(1000);
                   led_wr_str (2, 16, "SWR=0.00", 8);
                   if(L==1) led_wr_str (0, 16+8*12, "l", 1); else led_wr_str (0, 16+8*12, "c", 1);
                   asm CLRWDT;
                }
                else if(type!=0) {// 1602 LCD & 128*32 OLED
                   led_wr_str (1, 0, "MANUAL  ", 8);
                   asm CLRWDT;
                   delay_ms(1000);
                   led_wr_str (1, 0, "SWR=0.00", 8);
                   if(L==1) led_wr_str (0, 8, "l", 1); else led_wr_str (0, 8, "c", 1);
                   asm CLRWDT;
                }
             }
        }
     }
     //
     if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
      Delay_ms(450);
      if(PORTB.B1==1) { // short press button
        dysp_on();
        dysp_cnt = Dysp_delay * dysp_cnt_mult;
        asm CLRWDT;
        if(Auto == 0) Auto = 1;
        else Auto = 0;
        EEPROM_Write(2, Auto);
        if(type==4 | type==5) {      // 128*64 OLED
          if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
          else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
          else led_wr_str (0, 16+8*12, " ", 1);
        }
        else if(type!=0) { //  1602 LCD  or 128*32 OLED
          if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
          else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
          else led_wr_str (0, 8, " ", 1);
        }
        asm CLRWDT;
        while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
      }
      
      else { // long press button
        if(type!=0) user_setup();
      }
      
     }
     return;
}

void show_reset() {
      atu_reset();
      SW = 1;
      set_sw(SW);
      EEPROM_Write(255, 0);
      EEPROM_Write(254, 0);
      EEPROM_Write(253, 1);
      EEPROM_Write(252, 0);
      EEPROM_Write(251, 0);
      lcd_ind();
      Loss_mode = 0;
      p_Tx = 0;
      n_Tx = 1;
      SWR = 0;
      PWR = 0;
      SWR_fixed_old = 0;
      if(type==4 | type==5) {    // 128*64 OLED
         led_wr_str (2, 16, "RESET   ", 8);
         asm CLRWDT;
         delay_ms(600);
         led_wr_str (2, 16, "SWR=0.00", 8);
         asm CLRWDT;
      }
      else if(type!=0) {// 1602 LCD & 128*32 OLED
         led_wr_str (1, 0, "RESET   ", 8);
         asm CLRWDT;
         delay_ms(600);
         led_wr_str (1, 0, "SWR=0.00", 8);
         asm CLRWDT;
      }
      else {
         LATB.B6 = 1;
         LATB.B7 = 1;
      }
      SWR_old = 10000;
      Power_old = 10000;
      lcd_pwr();
      return;
}

void btn_push() {
   asm CLRWDT;
   if(type==4 | type==5)  {   // 128*64 OLED
      led_wr_str (2, 16+12*4, "TUNE", 4);
   }
   else if(type!=0) {   // 1602 LCD & 128*32 OLED
      led_wr_str (1, 4, "TUNE", 4);
   }
   else {
      LATB.B6 = 1;
      LATB.B7 = 1;
   }
   tune();
   if(type==0) {    // real-time 2-colors led work
      if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
      else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
      else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
   }
   else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
   EEPROM_Write(255, cap);
   EEPROM_Write(254, ind);
   EEPROM_Write(253, SW);
   EEPROM_Write(252, swr_a/256);
   EEPROM_Write(251, swr_a%256);
   SWR_old = 10000;
   Power_old = 10000;
   lcd_pwr();
   SWR_fixed_old = SWR;
   p_Tx = 0;
   n_Tx = 1;
   asm CLRWDT;
   return;
}


 void lcd_prep() {
   asm CLRWDT;
   if(type==4 |type==5){   // 128*64 OLED
      if(lcd_prep_short==0) {
        led_wr_str (0, 8, " ATU-100 ", 9);
         led_wr_str (2, 16, "7x7 v3.3", 8);
         led_wr_str (4, 16, "by N7DDC", 8);
         led_wr_str (6, 22, "& R3TJL", 7);
         asm CLRWDT;
         Delay_ms(800);
         asm CLRWDT;
         Delay_ms(500);
         asm CLRWDT;
//         led_wr_str (0, 16, "        ", 8);
//         led_wr_str (2, 16, "        ", 8);
//       led_wr_str (4, 16, "        ", 8);
//       led_wr_str (6, 22, "       ", 7);
      }
      Delay_ms(150);
      if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
      else  led_wr_str (0, 16, "PWR=0.0W", 8);
      led_wr_str (2, 16, "SWR=0.00", 8);
      if(Auto) led_wr_str (0, 16+8*12, ".", 1);
   }
   else if(type!=0) {   // 1602 LCD & 128*32 OLED
      if(lcd_prep_short==0) {
         led_wr_str (0, 0, "ATU-100 7x7 v3.3", 16);
         led_wr_str (1, 0, "by N7DDC & R3TJL", 16);
         asm CLRWDT;
         Delay_ms(600);
         asm CLRWDT;
         Delay_ms(500);
         asm CLRWDT;
//         led_wr_str (0, 9, " ", 9);
//         led_wr_str (1, 0, "                ", 16);
      }
      Delay_ms(150);
      led_wr_str (0, 8, " ", 1);
      if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
      else led_wr_str (0, 0, "PWR=0.0W", 8);
      led_wr_str (1, 0, "SWR=0.00", 8);
      if(Auto) led_wr_str (0, 8, ".", 1);
   }
   asm CLRWDT;
   lcd_ind();
   return;
}


void lcd_swr(int swr) {
   asm CLRWDT;
   if(swr!=SWR_old) {
      SWR_old = swr;
      if(swr==1) {  // Low power
         if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
         else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
         else  if(type==0) {    // real-time 2-colors led work
            LATB.B6 = 1;
            LATB.B7 = 1;
         }
         SWR_old = 0;
      }
      else {
         SWR_old = swr;
         IntToStr(swr, work_str);
         work_str_2[0] = work_str[3];
         work_str_2[1] = '.';
         work_str_2[2] = work_str[4];
         work_str_2[3] = work_str[5];
         if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
         else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
         else  if(type==0) {    // real-time 2-colors led work
            if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
            else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
            else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
         }
      }
   }
   asm CLRWDT;
   return;
}


void button_delay() {
   if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
      but = 1;
   }
   return;
}

void show_pwr(int Power, int SWR) {
   int p_ant, eff;
   float a, b;
   a = 100;
   asm CLRWDT;
   //
   if(Test==0 & Loss_ind==1 & SWR>=100) {
        if(Loss_mode==0) {   // prepare
           if(type==4 |type==5){   // 128*64 OLED
              if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
              else led_wr_str(4, 16, "ANT=0.0W", 8);
              led_wr_str(6, 16, "EFF=  0%", 8);
           }
           else if(type==2 | type==3) {   // 128*32 OLED
              if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
              else led_wr_str (0, 9, "ANT=0.0W", 8);
              led_wr_str (1, 9, "EFF=  0%", 8);
           }
           else if(type==1) {   // 1602 LCD
              if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
              else led_wr_str (0, 9, "AN=0.0W", 7);
              led_wr_str (1, 9, "EFF= 0%", 7);
           }
        }
        Loss_mode = 1;
     }
     else {
        if(Loss_mode==1) lcd_ind();
        Loss_mode = 0;
     }
   asm CLRWDT;
   if(Power != Power_old) {
     Power_old = Power;
     //
     if(P_High==0) {
        if(Power >= 100) {   // > 10 W
           Power += 5;  // rounding to 1 W
           IntToStr(Power, work_str);
           work_str_2[0] = work_str[2];
           work_str_2[1] = work_str[3];
           work_str_2[2] = work_str[4];
           work_str_2[3] = 'W';
        }
           else {
           IntToStr(Power, work_str);
           if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
           work_str_2[1] = '.';
           if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
           work_str_2[3] = 'W';
        }
     }
     else { // High Power
        if(Power<999){   // 0 - 1500 Watts
           IntToStr(Power, work_str);
           work_str_2[0] = work_str[3];
           work_str_2[1] = work_str[4];
           work_str_2[2] = work_str[5];
           work_str_2[3] = 'W';
        }
        else {
           IntToStr(Power, work_str);
           work_str_2[0] = work_str[2];
           work_str_2[1] = work_str[3];
           work_str_2[2] = work_str[4];
           work_str_2[2] = work_str[5];
        }
     }
     if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
     else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
     //
     asm CLRWDT;
     //  Loss indication
     if(Loss_mode==1)  {
        if(ind==0 & cap==0) swr_a = SWR;
        a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
        b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
        if(a>=1.0) a = 1.0;
        if(b>=1.0) b = 1.0;
        p_ant = Power * a * b;
        eff = a * b * 100;
        if(eff>=100) eff = 99;
        //
        if(P_High==0) {
           if(p_ant >= 100) {   // > 10 W
              p_ant += 5;  // rounding to 1 W
              IntToStr(p_ant, work_str);
              work_str_2[0] = work_str[2];
              work_str_2[1] = work_str[3];
              work_str_2[2] = work_str[4];
              work_str_2[3] = 'W';
           }
           else {
              IntToStr(p_ant, work_str);
              if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
              work_str_2[1] = '.';
              if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
              work_str_2[3] = 'W';
           }
        }
        else { // High Power
           if(p_ant<999){   // 0 - 1500 Watts
              IntToStr(p_ant, work_str);
              work_str_2[0] = work_str[3];
              work_str_2[1] = work_str[4];
              work_str_2[2] = work_str[5];
              work_str_2[3] = 'W';
           }
           else {
              IntToStr(p_ant, work_str);
              work_str_2[0] = work_str[2];
              work_str_2[1] = work_str[3];
              work_str_2[2] = work_str[4];
              work_str_2[2] = work_str[5];
           }
        }
        if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
        else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
        else if(type==1) led_wr_str (0, 12, work_str_2, 4);  // 1602
        //
        IntToStr(eff, work_str);
        work_str_2[0] = work_str[4];
        work_str_2[1] = work_str[5];
        if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
        else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
        else if(type==1) led_wr_str(1, 13, work_str_2, 2);
     }
   }
   asm CLRWDT;
   return;
}

void lcd_pwr() {
   int p = 0;
   char peak_cnt;
   int delta = Auto_delta - 100;
   char cnt;
   int SWR_fixed = 1;
   PWR = 0;
   asm CLRWDT;
   // peak detector
   cnt = 120;
   for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
      if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
      get_pwr();
      if(PWR>p) {p = PWR; SWR_fixed = SWR;}
      Delay_ms(3);
   }
   asm CLRWDT;
   Power = p;
   lcd_swr(SWR_fixed);
   if(SWR_fixed>=100) {
      dysp_on();          // dysplay ON
      dysp_cnt = Dysp_delay * dysp_cnt_mult;
   }
   //
   if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
      Soft_tune = 1;
   //
   if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
   show_pwr(Power, SWR_fixed);
   //
   if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
   asm CLRWDT;
   if(Overload==1) {
      if(type==4 | type==5) {                  // 128*64 OLED
         led_wr_str (2, 16, "        ", 8);
         delay_ms(100);
         led_wr_str (2, 16, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (2, 16, "        ", 8);
         delay_ms(300);
         asm CLRWDT;
         led_wr_str (2, 16, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (2, 16, "        ", 8);
         delay_ms(300);
         asm CLRWDT;
         led_wr_str (2, 16, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (2, 16, "        ", 8);
         delay_ms(100);
         led_wr_str (2, 16, "SWR=    ", 8);
      }
      else if(type!=0)  {        // 1602  & 128*32// 1602
         led_wr_str (1, 0, "        ", 8);
         delay_ms(100);
         led_wr_str (1, 0, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (1, 0, "        ", 8);
         delay_ms(300);
         asm CLRWDT;
         led_wr_str (1, 0, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (1, 0, "        ", 8);
         delay_ms(300);
         asm CLRWDT;
         led_wr_str (1, 0, "OVERLOAD", 8);
         delay_ms(500);
         asm CLRWDT;
         led_wr_str (1, 0, "        ", 8);
         delay_ms(100);
         led_wr_str (1, 0, "SWR=    ", 8);
      }
      asm CLRWDT;
      SWR_old = 10000;
      lcd_swr(SWR_fixed);
   }
   return;
}

void lcd_ind() {
   char column;
   asm CLRWDT;
   if(1) {
     work_int = 0;
     if(ind.B0) work_int += Ind1;
     if(ind.B1) work_int += Ind2;
     if(ind.B2) work_int += Ind3;
     if(ind.B3) work_int += Ind4;
     if(ind.B4) work_int += Ind5;
     if(ind.B5) work_int += Ind6;
     if(ind.B6) work_int += Ind7;
     if(work_int>9999) {    // more then 9999 nH
        work_int += 50; // round
        IntToStr(work_int, work_str);
        work_str_2[0] = work_str[1];
        work_str_2[1] = work_str[2];
        work_str_2[2] = '.';
        work_str_2[3] = work_str[3];
     }
     else {
        IntToStr(work_int, work_str);
        if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
        work_str_2[1] = '.';
        if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
        if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
     }
     if(type==4 | type==5) {  // 128*64 OLED
        if(SW==1) column = 4; else column = 6;
        led_wr_str (column, 16, "L=", 2);
        led_wr_str (column, 16+6*12, "uH", 2);
        led_wr_str (column, 16+2*12, work_str_2, 4);
     }
     else if(type==2 | type==3) {// 128*32 OLED
        if(SW==1) column = 0; else column = 1;
        led_wr_str (column, 9, "L=", 2);
        led_wr_str (column, 15, "uH", 2);
        led_wr_str (column, 11, work_str_2, 4);
     }
     else if(type==1) { //  1602 LCD
        if(SW==1) column = 0; else column = 1;
        led_wr_str (column, 9, "L=", 2);
        led_wr_str (column, 15, "u", 1);
        led_wr_str (column, 11, work_str_2, 4);
     }
   }
   asm CLRWDT;
   if(1) {
      work_int = 0;
      if(cap.B0) work_int += Cap1;
      if(cap.B1) work_int += Cap2;
      if(cap.B2) work_int += Cap3;
      if(cap.B3) work_int += Cap4;
      if(cap.B4) work_int += Cap5;
      if(cap.B5) work_int += Cap6;
      if(cap.B6) work_int += Cap7;
      IntToStr(work_int, work_str);
      work_str_2[0] = work_str[2];
      work_str_2[1] = work_str[3];
      work_str_2[2] = work_str[4];
      work_str_2[3] = work_str[5];
     //
     if(type==4 | type==5) {  // 128*64 OLED
        if(SW==1) column = 6; else column = 4;
        led_wr_str (column, 16, "C=", 2);
        led_wr_str (column, 16+6*12, "pF", 2);
        led_wr_str (column, 16+2*12, work_str_2, 4);
     }
     else if(type==2 | type==3) {// 128*32 OLED
        if(SW==1) column = 1; else column = 0;
        led_wr_str (column, 9, "C=", 2);
        led_wr_str (column, 15, "pF", 2);
        led_wr_str (column, 11, work_str_2, 4);
     }
     else if(type==1) { // 1602 LCD
        if(SW==1) column = 1; else column = 0;
        led_wr_str (column, 9, "C=", 2);
        led_wr_str (column, 15, "p", 1);
        led_wr_str (column, 11, work_str_2, 4);
     }
   }
   asm CLRWDT;
   return;
}

void cells_init(void) {
 // Cells init
   asm CLRWDT;
   //oled_addr = EEPROM_Read(0); // address
   type = EEPROM_Read(1); // type of display
   if(EEPROM_Read(2) == 1) Auto = 1;
   Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
   Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
   min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
   max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
   // 7  - shift down
   // 8 - shift left
   max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
   L_q = EEPROM_Read(10);
   L_linear = EEPROM_Read(11);
   C_q = EEPROM_Read(12);
   C_linear = EEPROM_Read(13);
   D_correction = EEPROM_Read(14);
   L_invert = EEPROM_Read(15);
   //
   asm CLRWDT;
   Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
   Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
   Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
   Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
   Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
   Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
   Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
   //
   Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
   Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
   Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
   Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
   Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
   Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
   Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
   //
   P_High = EEPROM_Read(0x30);  // High power
   K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
   Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
   Loss_ind = EEPROM_Read(0x33);
   Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
   asm CLRWDT;
   return;
   
}

void user_setup()  {
   int usr_set;
   char SWR_str[9];
   usr_set = 1;
   asm CLRWDT;
   dysp_on();          // dysplay ON
   if(type==4 | type==5) {    // 128*64 OLED
      led_wr_str (0, 1, "          ", 10);
      led_wr_str (2, 1, "          ", 10);
      led_wr_str (4, 1, "          ", 10);
      led_wr_str (6, 1, "          ", 10);
      asm CLRWDT;
      delay_ms(200);
      asm CLRWDT;
   }
   else if(type!=0) {   // 1602 LCD & 128*32 OLED
      led_wr_str (0, 0, "                 ", 17);
      led_wr_str (1, 0, "                 ", 17);
      asm CLRWDT;
      Delay_ms(200);
      asm CLRWDT;
   }
   // read eeprom parameters
   //Auto_delta = Bcd2Dec(EEPROM_Read(4));
   //max_for_start = Bcd2Dec(EEPROM_Read(6));
   // cls_time = Bcd2Dec(EEPROM_Read(50));
//   Delay_ms(500);
  // asm CLRWDT;
   //
   while(usr_set > 0) {
      asm CLRWDT;
      if(usr_set == 1) {   // min SWR setup
         inttostr((Auto_delta / 10), swr_str);
         if(type==4 | type==5) {    // 128*64 OLED
            led_wr_str(0, 16, "Min SWR  ", 9);
            asm CLRWDT;
            led_wr_str(3, 6, swr_str, 6);
            asm CLRWDT;
            delay_ms(100);
//            asm CLRWDT;
         }
         else if(type!=0) {   // 1602 LCD & 128*32 OLED
            led_wr_str(0, 1, "Min SWR  ", 9);
            led_wr_str(1, 1, SWR_str, 6);
            asm CLRWDT;
            Delay_ms(100);
         }
         if(Button(&PORTB, 2, 50, 0)){   // BYP button
            asm CLRWDT;
            if(Auto_delta < 190) {
              Auto_delta = Auto_delta + 10;
            }
            Delay_ms(30);
            asm CLRWDT;
         } // end of BYP button
         if(Button(&PORTB, 1, 50, 0)){   // Auto button
            asm CLRWDT;
            if(Auto_delta > 110) {
              Auto_delta = Auto_delta - 10;
            }
            Delay_ms(30);
            asm CLRWDT;
         }
      } // end min SWR setup
      if(usr_set == 2) {   // max PWR setup
         inttostr((max_for_start / 10), swr_str);
         if(type==4 | type==5) {    // 128*64 OLED
            led_wr_str(0, 16, "Max PWR", 7);
            asm CLRWDT;
            led_wr_str(3, 6, swr_str, 6);
            asm CLRWDT;
            delay_ms(100);
//            asm CLRWDT;
         }
         else if(type!=0) {   // 1602 LCD & 128*32 OLED
            led_wr_str(0, 1, "Max PWR", 7);
            led_wr_str(1, 1, SWR_str, 6);
            asm CLRWDT;
            Delay_ms(100);
         }
         if(Button(&PORTB, 2, 50, 0)){   // BYP button
            asm CLRWDT;
            if(max_for_start < 900) {
              max_for_start = max_for_start + 100;
            }
            Delay_ms(30);
            asm CLRWDT;
         } // end of BYP button
         if(Button(&PORTB, 1, 50, 0)){   // Auto button
            asm CLRWDT;
            if(max_for_start > 0) {
              max_for_start = max_for_start - 100;
            }
            Delay_ms(30);
            asm CLRWDT;
         }
      } // end max PWR setup
      if(usr_set == 5) {   // clear screen delay
         inttostr(Dysp_delay, swr_str);
         if(type==4 | type==5) {    // 128*64 OLED
            led_wr_str(0, 16, "ScrDel ", 7);
            asm CLRWDT;
            led_wr_str(3, 6, swr_str, 7);
            asm CLRWDT;
            delay_ms(100);
//            asm CLRWDT;
         }
         else if(type!=0) {   // 1602 LCD & 128*32 OLED
            led_wr_str(0, 1, "ScrDel ", 7);
            led_wr_str(1, 1, SWR_str, 6);
            asm CLRWDT;
            Delay_ms(100);
         }
         if(Button(&PORTB, 2, 50, 0)){   // BYP button
            asm CLRWDT;
            if(Dysp_delay < 90) {
              Dysp_delay = Dysp_delay + 10;
            }
            Delay_ms(30);
            asm CLRWDT;
         } // end of BYP button
         if(Button(&PORTB, 1, 50, 0)){   // Auto button
            asm CLRWDT;
            if(Dysp_delay > 0) {
              Dysp_delay = Dysp_delay - 10;
              if (Dysp_delay < 10)
                 Dysp_delay = 0;
            }
            Delay_ms(30);
            asm CLRWDT;
         }
      } // end clear screen delay setup
      if(usr_set == 4) {   // losses setup
         inttostr(Fid_loss, swr_str);
         if(type==4 | type==5) {    // 128*64 OLED
            led_wr_str(0, 16, "Losses  ", 8);
//            asm CLRWDT;
            led_wr_str(3, 6, swr_str, 7);
            asm CLRWDT;
            delay_ms(100);
//            asm CLRWDT;
         }
         else if(type!=0) {   // 1602 LCD & 128*32 OLED
            led_wr_str(0, 1, "Losses  ", 8);
            led_wr_str(1, 1, SWR_str, 6);
            asm CLRWDT;
            Delay_ms(100);
         }
         if(Button(&PORTB, 2, 50, 0)){   // BYP button
            asm CLRWDT;
            if(Fid_loss < 99) {
              Fid_loss = Fid_loss + 1;
            }
            Delay_ms(30);
            asm CLRWDT;
         } // end of BYP button
         if(Button(&PORTB, 1, 50, 0)){   // Auto button
            asm CLRWDT;
            if(Fid_loss > 0) {
              Fid_loss = Fid_loss - 1;
            }
            Delay_ms(30);
            asm CLRWDT;
         }
      } // end losses setup
      
      if(usr_set == 3) {   // loss mode
         if(type==4 | type==5) {    // 128*64 OLED
            led_wr_str(0, 16, "Loss ind", 8);
//            asm CLRWDT;
            if (Loss_ind == 1)
               led_wr_str(3, 16, "   ON  ", 7);
            else
               led_wr_str(3, 16, "   OFF ", 7);
            delay_ms(100);
            asm CLRWDT;
         }
         else if(type!=0) {   // 1602 LCD & 128*32 OLED
            led_wr_str(0, 1, "Loss ind", 8);
            if (Loss_ind == 1)
              led_wr_str(1, 1, "   ON  ", 7);
            else
              led_wr_str(1, 1, "   OFF ", 7);
            asm CLRWDT;
            Delay_ms(100);
         }
         if(Button(&PORTB, 2, 50, 0)){   // BYP button
            asm CLRWDT;
            if(Loss_ind == 0) {
              Loss_ind = 1;
            }
            Delay_ms(30);
            asm CLRWDT;
         } // end of BYP button
         if(Button(&PORTB, 1, 50, 0)){   // Auto button
            asm CLRWDT;
            if(Loss_ind == 1) {
              Loss_ind = 0;
            }
            Delay_ms(30);
            asm CLRWDT;
         }
      } // end lose mode setup
        // poslednij block pered RETURN
      if(Button(&PORTB, 0, 50, 0)){    // Tune btn
         Delay_ms(300);
         asm CLRWDT;
         if(PORTB.B0==1) { // short press button
           usr_set ++;
           if (usr_set > 5)
             usr_set = 1;
         }
         else {
           asm CLRWDT;
           usr_set = 0; // exit setup
         }
        asm CLRWDT;
      }  // END Tune btn

   }
     // end button block
   EEPROM_Write(4, dec2bcd(Auto_delta / 10));
   EEPROM_Write(6, dec2bcd(max_for_start / 10));
   EEPROM_Write(50, dec2bcd(Dysp_delay));
   EEPROM_Write(0x34, dec2bcd(Fid_loss));
   EEPROM_Write(0x33, dec2bcd(Loss_ind));
   dysp_cnt = Dysp_delay * dysp_cnt_mult;
   //delay_ms(250);
   asm CLRWDT;
   lcd_prep_short = 1;
   //led_init ();
   lcd_prep();
   delay_ms(500);
   lcd_ind();
   return;
}
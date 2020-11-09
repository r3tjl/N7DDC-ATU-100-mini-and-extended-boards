
_correction:

;main.h,42 :: 		int correction(int input) {
;main.h,44 :: 		if(input <= 80) return 0;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction547
	MOVF       FARG_correction_input+0, 0
	SUBLW      80
L__correction547:
	BTFSS      STATUS+0, 0
	GOTO       L_correction0
	CLRF       R0
	CLRF       R1
	GOTO       L_end_correction
L_correction0:
;main.h,45 :: 		if(input <= 171) input += 244;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction548
	MOVF       FARG_correction_input+0, 0
	SUBLW      171
L__correction548:
	BTFSS      STATUS+0, 0
	GOTO       L_correction1
	MOVLW      244
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction2
L_correction1:
;main.h,46 :: 		else if(input <= 328) input += 254;
	MOVLW      128
	XORLW      1
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction549
	MOVF       FARG_correction_input+0, 0
	SUBLW      72
L__correction549:
	BTFSS      STATUS+0, 0
	GOTO       L_correction3
	MOVLW      254
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction4
L_correction3:
;main.h,47 :: 		else if(input <= 582) input += 280;
	MOVLW      128
	XORLW      2
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction550
	MOVF       FARG_correction_input+0, 0
	SUBLW      70
L__correction550:
	BTFSS      STATUS+0, 0
	GOTO       L_correction5
	MOVLW      24
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction6
L_correction5:
;main.h,48 :: 		else if(input <= 820) input += 297;
	MOVLW      128
	XORLW      3
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction551
	MOVF       FARG_correction_input+0, 0
	SUBLW      52
L__correction551:
	BTFSS      STATUS+0, 0
	GOTO       L_correction7
	MOVLW      41
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction8
L_correction7:
;main.h,49 :: 		else if(input <= 1100) input += 310;
	MOVLW      128
	XORLW      4
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction552
	MOVF       FARG_correction_input+0, 0
	SUBLW      76
L__correction552:
	BTFSS      STATUS+0, 0
	GOTO       L_correction9
	MOVLW      54
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction10
L_correction9:
;main.h,50 :: 		else if(input <= 2181) input += 430;
	MOVLW      128
	XORLW      8
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction553
	MOVF       FARG_correction_input+0, 0
	SUBLW      133
L__correction553:
	BTFSS      STATUS+0, 0
	GOTO       L_correction11
	MOVLW      174
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction12
L_correction11:
;main.h,51 :: 		else if(input <= 3322) input += 484;
	MOVLW      128
	XORLW      12
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction554
	MOVF       FARG_correction_input+0, 0
	SUBLW      250
L__correction554:
	BTFSS      STATUS+0, 0
	GOTO       L_correction13
	MOVLW      228
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction14
L_correction13:
;main.h,52 :: 		else if(input <= 4623) input += 530;
	MOVLW      128
	XORLW      18
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction555
	MOVF       FARG_correction_input+0, 0
	SUBLW      15
L__correction555:
	BTFSS      STATUS+0, 0
	GOTO       L_correction15
	MOVLW      18
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction16
L_correction15:
;main.h,53 :: 		else if(input <= 5862) input += 648;
	MOVLW      128
	XORLW      22
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction556
	MOVF       FARG_correction_input+0, 0
	SUBLW      230
L__correction556:
	BTFSS      STATUS+0, 0
	GOTO       L_correction17
	MOVLW      136
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction18
L_correction17:
;main.h,54 :: 		else if(input <= 7146) input += 743;
	MOVLW      128
	XORLW      27
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction557
	MOVF       FARG_correction_input+0, 0
	SUBLW      234
L__correction557:
	BTFSS      STATUS+0, 0
	GOTO       L_correction19
	MOVLW      231
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction20
L_correction19:
;main.h,55 :: 		else if(input <= 8502) input += 800;
	MOVLW      128
	XORLW      33
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction558
	MOVF       FARG_correction_input+0, 0
	SUBLW      54
L__correction558:
	BTFSS      STATUS+0, 0
	GOTO       L_correction21
	MOVLW      32
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction22
L_correction21:
;main.h,56 :: 		else if(input <= 10500) input += 840;
	MOVLW      128
	XORLW      41
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction559
	MOVF       FARG_correction_input+0, 0
	SUBLW      4
L__correction559:
	BTFSS      STATUS+0, 0
	GOTO       L_correction23
	MOVLW      72
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction24
L_correction23:
;main.h,57 :: 		else  input += 860;
	MOVLW      92
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
L_correction24:
L_correction22:
L_correction20:
L_correction18:
L_correction16:
L_correction14:
L_correction12:
L_correction10:
L_correction8:
L_correction6:
L_correction4:
L_correction2:
;main.h,59 :: 		return input;
	MOVF       FARG_correction_input+0, 0
	MOVWF      R0
	MOVF       FARG_correction_input+1, 0
	MOVWF      R1
;main.h,60 :: 		}
L_end_correction:
	RETURN
; end of _correction

_get_reverse:

;main.h,64 :: 		int get_reverse() {
;main.h,66 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,67 :: 		while(FVRCON.B6 == 0);
L_get_reverse25:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse26
	GOTO       L_get_reverse25
L_get_reverse26:
;main.h,68 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,69 :: 		if(Reverse <= 1000) return Reverse;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse561
	MOVF       R0, 0
	SUBLW      232
L__get_reverse561:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse27
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_reverse
L_get_reverse27:
;main.h,70 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,71 :: 		while(FVRCON.B6 == 0);
L_get_reverse28:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse29
	GOTO       L_get_reverse28
L_get_reverse29:
;main.h,72 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,73 :: 		if(Reverse <= 1000) return Reverse * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse562
	MOVF       R0, 0
	SUBLW      232
L__get_reverse562:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse30
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	GOTO       L_end_get_reverse
L_get_reverse30:
;main.h,74 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,75 :: 		while(FVRCON.B6 == 0);
L_get_reverse31:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse32
	GOTO       L_get_reverse31
L_get_reverse32:
;main.h,76 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,77 :: 		return Reverse * 4;
	MOVF       R0, 0
	MOVWF      R2
	MOVF       R1, 0
	MOVWF      R3
	LSLF       R2, 1
	RLF        R3, 1
	LSLF       R2, 1
	RLF        R3, 1
	MOVF       R2, 0
	MOVWF      R0
	MOVF       R3, 0
	MOVWF      R1
;main.h,78 :: 		}
L_end_get_reverse:
	RETURN
; end of _get_reverse

_get_forward:

;main.h,81 :: 		int get_forward() {
;main.h,83 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,84 :: 		while(FVRCON.B6 == 0);
L_get_forward33:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward34
	GOTO       L_get_forward33
L_get_forward34:
;main.h,85 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,86 :: 		if(Forward <= 1000) return Forward;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward564
	MOVF       R0, 0
	SUBLW      232
L__get_forward564:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward35
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_forward
L_get_forward35:
;main.h,87 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,88 :: 		while(FVRCON.B6 == 0);
L_get_forward36:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward37
	GOTO       L_get_forward36
L_get_forward37:
;main.h,89 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,90 :: 		if(Forward <= 1000) return Forward * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward565
	MOVF       R0, 0
	SUBLW      232
L__get_forward565:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward38
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	GOTO       L_end_get_forward
L_get_forward38:
;main.h,91 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,92 :: 		while(FVRCON.B6 == 0);
L_get_forward39:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward40
	GOTO       L_get_forward39
L_get_forward40:
;main.h,93 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,94 :: 		if(Forward == 1024) Overload = 1;
	MOVF       R1, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward566
	MOVLW      0
	XORWF      R0, 0
L__get_forward566:
	BTFSS      STATUS+0, 2
	GOTO       L_get_forward41
	MOVLW      1
	MOVWF      main_Overload+0
	GOTO       L_get_forward42
L_get_forward41:
;main.h,95 :: 		else Overload = 0;
	CLRF       main_Overload+0
L_get_forward42:
;main.h,96 :: 		return Forward * 4;
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	LSLF       R0, 1
	RLF        R1, 1
;main.h,97 :: 		}
L_end_get_forward:
	RETURN
; end of _get_forward

_get_pwr:

;main.h,99 :: 		void get_pwr() {
;main.h,102 :: 		asm CLRWDT;
	CLRWDT
;main.h,104 :: 		Forward = get_forward();
	CALL       _get_forward+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVLW      0
	BTFSC      get_pwr_Forward_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Forward_L0+2
	MOVWF      get_pwr_Forward_L0+3
;main.h,105 :: 		Reverse = get_reverse();
	CALL       _get_reverse+0
	MOVF       R0, 0
	MOVWF      get_pwr_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Reverse_L0+1
	MOVLW      0
	BTFSC      get_pwr_Reverse_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Reverse_L0+2
	MOVWF      get_pwr_Reverse_L0+3
;main.h,106 :: 		if(D_correction==1) p = correction(Forward * 3);
	MOVF       main_D_correction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr43
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVLW      3
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Mul_16x16_U+0
	MOVF       R0, 0
	MOVWF      FARG_correction_input+0
	MOVF       R1, 0
	MOVWF      FARG_correction_input+1
	CALL       _correction+0
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr44
L_get_pwr43:
;main.h,107 :: 		else p = Forward * 3;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      3
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	CALL       _Longint2Double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr44:
;main.h,109 :: 		if(Reverse >= Forward)
	MOVLW      128
	XORWF      get_pwr_Reverse_L0+3, 0
	MOVWF      R0
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr568
	MOVF       get_pwr_Forward_L0+2, 0
	SUBWF      get_pwr_Reverse_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr568
	MOVF       get_pwr_Forward_L0+1, 0
	SUBWF      get_pwr_Reverse_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr568
	MOVF       get_pwr_Forward_L0+0, 0
	SUBWF      get_pwr_Reverse_L0+0, 0
L__get_pwr568:
	BTFSS      STATUS+0, 0
	GOTO       L_get_pwr45
;main.h,110 :: 		Forward = 999;
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
	GOTO       L_get_pwr46
L_get_pwr45:
;main.h,112 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF       get_pwr_Reverse_L0+0, 0
	ADDWF      get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Reverse_L0+1, 0
	ADDWFC     get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Reverse_L0+2, 0
	ADDWFC     get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Reverse_L0+3, 0
	ADDWFC     get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      100
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R7
	MOVF       get_pwr_Reverse_L0+0, 0
	SUBWF      R4, 1
	MOVF       get_pwr_Reverse_L0+1, 0
	SUBWFB     R5, 1
	MOVF       get_pwr_Reverse_L0+2, 0
	SUBWFB     R6, 1
	MOVF       get_pwr_Reverse_L0+3, 0
	SUBWFB     R7, 1
	CALL       _Div_32x32_S+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_Forward_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_Forward_L0+3
;main.h,113 :: 		if(Forward>999) Forward = 999;
	MOVLW      128
	MOVWF      R4
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R4, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr569
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr569
	MOVF       R1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr569
	MOVF       R0, 0
	SUBLW      231
L__get_pwr569:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr47
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
L_get_pwr47:
;main.h,114 :: 		}
L_get_pwr46:
;main.h,116 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
	MOVF       main_K_Mult+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      122
	MOVWF      R6
	MOVLW      136
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,117 :: 		p = p / 1.414;
	MOVLW      244
	MOVWF      R4
	MOVLW      253
	MOVWF      R5
	MOVLW      52
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,118 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr48
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr49
L_get_pwr48:
;main.h,119 :: 		else p = p * p / 5;               // 0 - 1510 (151.0 Watts)
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      129
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr49:
;main.h,120 :: 		p = p + 0.5;    // rounding
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      126
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,122 :: 		PWR = p;
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _PWR+0
	MOVF       R1, 0
	MOVWF      _PWR+1
;main.h,123 :: 		if(PWR<10) SWR = 1;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr570
	MOVLW      10
	SUBWF      R0, 0
L__get_pwr570:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr50
	MOVLW      1
	MOVWF      _SWR+0
	MOVLW      0
	MOVWF      _SWR+1
	GOTO       L_get_pwr51
L_get_pwr50:
;main.h,124 :: 		else if(Forward<100) SWR = 999;
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr571
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr571
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr571
	MOVLW      100
	SUBWF      get_pwr_Forward_L0+0, 0
L__get_pwr571:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr52
	MOVLW      231
	MOVWF      _SWR+0
	MOVLW      3
	MOVWF      _SWR+1
	GOTO       L_get_pwr53
L_get_pwr52:
;main.h,125 :: 		else SWR = Forward;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      _SWR+0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      _SWR+1
L_get_pwr53:
L_get_pwr51:
;main.h,126 :: 		return;
;main.h,127 :: 		}
L_end_get_pwr:
	RETURN
; end of _get_pwr

_get_swr:

;main.h,129 :: 		void get_swr() {
;main.h,130 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,131 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr54
;main.h,132 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,133 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr573
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr573:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr55
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr55:
;main.h,134 :: 		}
	GOTO       L_get_swr56
L_get_swr54:
;main.h,136 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,137 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,138 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,139 :: 		}
L_get_swr56:
;main.h,140 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr57:
	MOVLW      128
	XORWF      _PWR+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      main_min_for_start+1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr574
	MOVF       main_min_for_start+0, 0
	SUBWF      _PWR+0, 0
L__get_swr574:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R2
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	MOVWF      R1
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr575
	MOVF       _PWR+0, 0
	SUBWF      main_max_for_start+0, 0
L__get_swr575:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr576
	MOVF       main_max_for_start+0, 0
	SUBLW      0
L__get_swr576:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	MOVF       R2, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr58
;main.h,141 :: 		asm CLRWDT;
	CLRWDT
;main.h,142 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,143 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr59
;main.h,144 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,145 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr577
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr577:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr60
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr60:
;main.h,146 :: 		}
	GOTO       L_get_swr61
L_get_swr59:
;main.h,148 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,149 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,150 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,151 :: 		}
L_get_swr61:
;main.h,153 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr62
	MOVLW      1
	MOVWF      _rready+0
L_get_swr62:
;main.h,154 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
	MOVF       _rready+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      FLOC__get_swr+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__get_swr+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr63
;main.h,155 :: 		show_reset();
	CALL       _show_reset+0
;main.h,156 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.h,157 :: 		return;
	GOTO       L_end_get_swr
;main.h,158 :: 		}
L_get_swr63:
;main.h,159 :: 		} //  good power
	GOTO       L_get_swr57
L_get_swr58:
;main.h,160 :: 		return;
;main.h,161 :: 		}
L_end_get_swr:
	RETURN
; end of _get_swr

_set_ind:

;main.h,163 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,164 :: 		if(L_invert == 0) {
	MOVF       main_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_ind64
;main.h,165 :: 		Ind_005 = Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind579
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind580
L__set_ind579:
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind580:
;main.h,166 :: 		Ind_011 = Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind581
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind582
L__set_ind581:
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind582:
;main.h,167 :: 		Ind_022 = Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind583
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind584
L__set_ind583:
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind584:
;main.h,168 :: 		Ind_045 = Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind585
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind586
L__set_ind585:
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind586:
;main.h,169 :: 		Ind_1   = Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind587
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind588
L__set_ind587:
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind588:
;main.h,170 :: 		Ind_22  = Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind589
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind590
L__set_ind589:
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind590:
;main.h,171 :: 		Ind_45  = Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind591
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind592
L__set_ind591:
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind592:
;main.h,173 :: 		}
	GOTO       L_set_ind65
L_set_ind64:
;main.h,175 :: 		Ind_005 = ~Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind593
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind594
L__set_ind593:
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind594:
;main.h,176 :: 		Ind_011 = ~Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind595
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind596
L__set_ind595:
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind596:
;main.h,177 :: 		Ind_022 = ~Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind597
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind598
L__set_ind597:
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind598:
;main.h,178 :: 		Ind_045 = ~Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind599
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind600
L__set_ind599:
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind600:
;main.h,179 :: 		Ind_1   = ~Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind601
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind602
L__set_ind601:
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind602:
;main.h,180 :: 		Ind_22  = ~Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind603
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind604
L__set_ind603:
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind604:
;main.h,181 :: 		Ind_45  = ~Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind605
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind606
L__set_ind605:
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind606:
;main.h,183 :: 		}
L_set_ind65:
;main.h,184 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,185 :: 		}
L_end_set_ind:
	RETURN
; end of _set_ind

_set_cap:

;main.h,187 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,188 :: 		Cap_10  =  Cap.B0;
	BTFSC      FARG_set_cap_Cap+0, 0
	GOTO       L__set_cap608
	BCF        LATC7_bit+0, BitPos(LATC7_bit+0)
	GOTO       L__set_cap609
L__set_cap608:
	BSF        LATC7_bit+0, BitPos(LATC7_bit+0)
L__set_cap609:
;main.h,189 :: 		Cap_22  =  Cap.B1;
	BTFSC      FARG_set_cap_Cap+0, 1
	GOTO       L__set_cap610
	BCF        LATC3_bit+0, BitPos(LATC3_bit+0)
	GOTO       L__set_cap611
L__set_cap610:
	BSF        LATC3_bit+0, BitPos(LATC3_bit+0)
L__set_cap611:
;main.h,190 :: 		Cap_47  =  Cap.B2;
	BTFSC      FARG_set_cap_Cap+0, 2
	GOTO       L__set_cap612
	BCF        LATC6_bit+0, BitPos(LATC6_bit+0)
	GOTO       L__set_cap613
L__set_cap612:
	BSF        LATC6_bit+0, BitPos(LATC6_bit+0)
L__set_cap613:
;main.h,191 :: 		Cap_100 =  Cap.B3;
	BTFSC      FARG_set_cap_Cap+0, 3
	GOTO       L__set_cap614
	BCF        LATC2_bit+0, BitPos(LATC2_bit+0)
	GOTO       L__set_cap615
L__set_cap614:
	BSF        LATC2_bit+0, BitPos(LATC2_bit+0)
L__set_cap615:
;main.h,192 :: 		Cap_220 =  Cap.B4;
	BTFSC      FARG_set_cap_Cap+0, 4
	GOTO       L__set_cap616
	BCF        LATC5_bit+0, BitPos(LATC5_bit+0)
	GOTO       L__set_cap617
L__set_cap616:
	BSF        LATC5_bit+0, BitPos(LATC5_bit+0)
L__set_cap617:
;main.h,193 :: 		Cap_470 =  Cap.B5;
	BTFSC      FARG_set_cap_Cap+0, 5
	GOTO       L__set_cap618
	BCF        LATC1_bit+0, BitPos(LATC1_bit+0)
	GOTO       L__set_cap619
L__set_cap618:
	BSF        LATC1_bit+0, BitPos(LATC1_bit+0)
L__set_cap619:
;main.h,194 :: 		Cap_1000 =  Cap.B6;
	BTFSC      FARG_set_cap_Cap+0, 6
	GOTO       L__set_cap620
	BCF        LATC4_bit+0, BitPos(LATC4_bit+0)
	GOTO       L__set_cap621
L__set_cap620:
	BSF        LATC4_bit+0, BitPos(LATC4_bit+0)
L__set_cap621:
;main.h,196 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,197 :: 		}
L_end_set_cap:
	RETURN
; end of _set_cap

_set_sw:

;main.h,199 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,200 :: 		Cap_sw = SW;
	BTFSC      FARG_set_sw_SW+0, 0
	GOTO       L__set_sw623
	BCF        LATC0_bit+0, BitPos(LATC0_bit+0)
	GOTO       L__set_sw624
L__set_sw623:
	BSF        LATC0_bit+0, BitPos(LATC0_bit+0)
L__set_sw624:
;main.h,201 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,202 :: 		}
L_end_set_sw:
	RETURN
; end of _set_sw

_atu_reset:

;main.h,204 :: 		void atu_reset() {
;main.h,205 :: 		ind = 0;
	CLRF       main_ind+0
;main.h,206 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,207 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,208 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,209 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,210 :: 		}
L_end_atu_reset:
	RETURN
; end of _atu_reset

_coarse_cap:

;main.h,213 :: 		void coarse_cap() {
;main.h,214 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_cap_step_L0+0
;main.h,218 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,219 :: 		set_cap(cap);
	CLRF       FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,220 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,221 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap627
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap627:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap66
	GOTO       L_end_coarse_cap
L_coarse_cap66:
;main.h,222 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,223 :: 		for(count=step; count<=31;) {
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      coarse_cap_count_L0+0
L_coarse_cap67:
	MOVF       coarse_cap_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_cap68
;main.h,224 :: 		set_cap(count*C_mult);
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,225 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap628
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap628:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap70
	GOTO       L_end_coarse_cap
L_coarse_cap70:
;main.h,226 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap629
	MOVF       coarse_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_cap629:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap71
;main.h,227 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,228 :: 		cap = count*C_mult;
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.h,229 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,230 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap630
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_cap630:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap72
	GOTO       L_coarse_cap68
L_coarse_cap72:
;main.h,231 :: 		count +=step;
	MOVF       coarse_cap_step_L0+0, 0
	ADDWF      coarse_cap_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_cap_count_L0+0
;main.h,232 :: 		if(C_linear==0 & count==9) count = 8;
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap73
	MOVLW      8
	MOVWF      coarse_cap_count_L0+0
	GOTO       L_coarse_cap74
L_coarse_cap73:
;main.h,233 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_cap_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap75
	MOVLW      16
	MOVWF      coarse_cap_count_L0+0
	MOVLW      4
	MOVWF      coarse_cap_step_L0+0
L_coarse_cap75:
L_coarse_cap74:
;main.h,234 :: 		}
	GOTO       L_coarse_cap76
L_coarse_cap71:
;main.h,235 :: 		else break;
	GOTO       L_coarse_cap68
L_coarse_cap76:
;main.h,236 :: 		}
	GOTO       L_coarse_cap67
L_coarse_cap68:
;main.h,237 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,238 :: 		return;
;main.h,239 :: 		}
L_end_coarse_cap:
	RETURN
; end of _coarse_cap

_coarse_tune:

;main.h,241 :: 		void coarse_tune() {
;main.h,242 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_tune_step_L0+0
;main.h,247 :: 		mem_cap = 0;
	CLRF       coarse_tune_mem_cap_L0+0
;main.h,248 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,249 :: 		mem_step_cap = 3;
	MOVLW      3
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,250 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,251 :: 		for(count=0; count<=31;) {
	CLRF       coarse_tune_count_L0+0
L_coarse_tune77:
	MOVF       coarse_tune_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_tune78
;main.h,252 :: 		set_ind(count*L_mult);
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,253 :: 		coarse_cap();
	CALL       _coarse_cap+0
;main.h,254 :: 		get_swr();  if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune632
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_tune632:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_tune80
	GOTO       L_end_coarse_tune
L_coarse_tune80:
;main.h,255 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_tune_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune633
	MOVF       coarse_tune_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_tune633:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune81
;main.h,256 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,257 :: 		ind = count*L_mult;
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.h,258 :: 		mem_cap = cap;
	MOVF       main_cap+0, 0
	MOVWF      coarse_tune_mem_cap_L0+0
;main.h,259 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,260 :: 		mem_step_cap = step_cap;
	MOVF       main_step_cap+0, 0
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,261 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune634
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_tune634:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune82
	GOTO       L_coarse_tune78
L_coarse_tune82:
;main.h,262 :: 		count +=step;
	MOVF       coarse_tune_step_L0+0, 0
	ADDWF      coarse_tune_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_tune_count_L0+0
;main.h,263 :: 		if(L_linear==0 & count==9) count = 8;
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune83
	MOVLW      8
	MOVWF      coarse_tune_count_L0+0
	GOTO       L_coarse_tune84
L_coarse_tune83:
;main.h,264 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_tune_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune85
	MOVLW      16
	MOVWF      coarse_tune_count_L0+0
	MOVLW      4
	MOVWF      coarse_tune_step_L0+0
L_coarse_tune85:
L_coarse_tune84:
;main.h,265 :: 		}
	GOTO       L_coarse_tune86
L_coarse_tune81:
;main.h,266 :: 		else break;
	GOTO       L_coarse_tune78
L_coarse_tune86:
;main.h,267 :: 		}
	GOTO       L_coarse_tune77
L_coarse_tune78:
;main.h,268 :: 		cap = mem_cap;
	MOVF       coarse_tune_mem_cap_L0+0, 0
	MOVWF      main_cap+0
;main.h,269 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,270 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,271 :: 		step_cap = mem_step_cap;
	MOVF       coarse_tune_mem_step_cap_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,272 :: 		Delay_ms(10);
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_coarse_tune87:
	DECFSZ     R13, 1
	GOTO       L_coarse_tune87
	DECFSZ     R12, 1
	GOTO       L_coarse_tune87
	NOP
	NOP
;main.h,273 :: 		return;
;main.h,274 :: 		}
L_end_coarse_tune:
	RETURN
; end of _coarse_tune

_sharp_cap:

;main.h,276 :: 		void sharp_cap() {
;main.h,279 :: 		range = step_cap*C_mult;
	MOVF       main_step_cap+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_cap_range_L0+0
;main.h,281 :: 		max_range = cap + range;
	MOVF       R0, 0
	ADDWF      main_cap+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_cap_max_range_L0+0
;main.h,282 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_C_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_cap636:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap637
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_cap636
L__sharp_cap637:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap638
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_cap638:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap88
	MOVLW      5
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      sharp_cap_max_range_L0+0
	MOVF       R0, 0
L__sharp_cap639:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap640
	LSLF       sharp_cap_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_cap639
L__sharp_cap640:
	DECF       sharp_cap_max_range_L0+0, 1
L_sharp_cap88:
;main.h,283 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF       main_cap+0, 0
	SUBWF      sharp_cap_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap89
	MOVF       sharp_cap_range_L0+0, 0
	SUBWF      main_cap+0, 0
	MOVWF      sharp_cap_min_range_L0+0
	GOTO       L_sharp_cap90
L_sharp_cap89:
	CLRF       sharp_cap_min_range_L0+0
L_sharp_cap90:
;main.h,284 :: 		cap = min_range;
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      main_cap+0
;main.h,285 :: 		set_cap(cap);
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,286 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap641
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap641:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap91
	GOTO       L_end_sharp_cap
L_sharp_cap91:
;main.h,287 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,288 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_min_range_L0+0, 0
	MOVWF      sharp_cap_count_L0+0
L_sharp_cap92:
	MOVF       sharp_cap_count_L0+0, 0
	SUBWF      sharp_cap_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap93
;main.h,289 :: 		set_cap(count);
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,290 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap642
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap642:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap95
	GOTO       L_end_sharp_cap
L_sharp_cap95:
;main.h,291 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap643
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap643:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap96
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap97:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap97
	DECFSZ     R12, 1
	GOTO       L_sharp_cap97
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap96:
;main.h,292 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap644
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap644:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap98
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap99:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap99
	DECFSZ     R12, 1
	GOTO       L_sharp_cap99
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap98:
;main.h,293 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap645
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap645:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap100
;main.h,294 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,295 :: 		cap = count;
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      main_cap+0
;main.h,296 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap646
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_cap646:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap101
	GOTO       L_sharp_cap93
L_sharp_cap101:
;main.h,297 :: 		}
	GOTO       L_sharp_cap102
L_sharp_cap100:
;main.h,298 :: 		else break;
	GOTO       L_sharp_cap93
L_sharp_cap102:
;main.h,288 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_count_L0+0, 1
;main.h,299 :: 		}
	GOTO       L_sharp_cap92
L_sharp_cap93:
;main.h,300 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,301 :: 		return;
;main.h,302 :: 		}
L_end_sharp_cap:
	RETURN
; end of _sharp_cap

_sharp_ind:

;main.h,304 :: 		void sharp_ind() {
;main.h,307 :: 		range = step_ind * L_mult;
	MOVF       main_step_ind+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_ind_range_L0+0
;main.h,309 :: 		max_range = ind + range;
	MOVF       R0, 0
	ADDWF      main_ind+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_ind_max_range_L0+0
;main.h,310 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_ind648:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind649
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_ind648
L__sharp_ind649:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind650
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_ind650:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind103
	MOVLW      5
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      sharp_ind_max_range_L0+0
	MOVF       R0, 0
L__sharp_ind651:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind652
	LSLF       sharp_ind_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_ind651
L__sharp_ind652:
	DECF       sharp_ind_max_range_L0+0, 1
L_sharp_ind103:
;main.h,311 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF       main_ind+0, 0
	SUBWF      sharp_ind_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind104
	MOVF       sharp_ind_range_L0+0, 0
	SUBWF      main_ind+0, 0
	MOVWF      sharp_ind_min_range_L0+0
	GOTO       L_sharp_ind105
L_sharp_ind104:
	CLRF       sharp_ind_min_range_L0+0
L_sharp_ind105:
;main.h,312 :: 		ind = min_range;
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      main_ind+0
;main.h,313 :: 		set_ind(ind);
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,314 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind653
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind653:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind106
	GOTO       L_end_sharp_ind
L_sharp_ind106:
;main.h,315 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,316 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_min_range_L0+0, 0
	MOVWF      sharp_ind_count_L0+0
L_sharp_ind107:
	MOVF       sharp_ind_count_L0+0, 0
	SUBWF      sharp_ind_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind108
;main.h,317 :: 		set_ind(count);
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,318 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind654
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind654:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind110
	GOTO       L_end_sharp_ind
L_sharp_ind110:
;main.h,319 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind655
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind655:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind111
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind112:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind112
	DECFSZ     R12, 1
	GOTO       L_sharp_ind112
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind111:
;main.h,320 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind656
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind656:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind113
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind114:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind114
	DECFSZ     R12, 1
	GOTO       L_sharp_ind114
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind113:
;main.h,321 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind657
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind657:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind115
;main.h,322 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,323 :: 		ind = count;
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      main_ind+0
;main.h,324 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind658
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_ind658:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind116
	GOTO       L_sharp_ind108
L_sharp_ind116:
;main.h,325 :: 		}
	GOTO       L_sharp_ind117
L_sharp_ind115:
;main.h,326 :: 		else break;
	GOTO       L_sharp_ind108
L_sharp_ind117:
;main.h,316 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_count_L0+0, 1
;main.h,327 :: 		}
	GOTO       L_sharp_ind107
L_sharp_ind108:
;main.h,328 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,329 :: 		return;
;main.h,330 :: 		}
L_end_sharp_ind:
	RETURN
; end of _sharp_ind

_sub_tune:

;main.h,333 :: 		void sub_tune () {
;main.h,336 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,337 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune660
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune660:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune118
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune118:
;main.h,338 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune661
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune661:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune119
	GOTO       L_end_sub_tune
L_sub_tune119:
;main.h,339 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune662
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune662:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune120
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune120:
;main.h,340 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune663
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune663:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune121
	GOTO       L_end_sub_tune
L_sub_tune121:
;main.h,341 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune664
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune664:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune122
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune122:
;main.h,342 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune665
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune665:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune123
	GOTO       L_end_sub_tune
L_sub_tune123:
;main.h,344 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R1
	MOVLW      128
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune666
	MOVLW      200
	SUBWF      _SWR+0, 0
L__sub_tune666:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune667
	MOVF       sub_tune_swr_mem_L0+0, 0
	SUBWF      _SWR+0, 0
L__sub_tune667:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 0
	MOVWF      R3
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
	MOVWF      R1
	MOVF       _SWR+1, 0
	SUBWFB     sub_tune_swr_mem_L0+1, 0
	MOVWF      R2
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune668
	MOVF       R1, 0
	SUBLW      100
L__sub_tune668:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_sub_tune124
	GOTO       L_end_sub_tune
L_sub_tune124:
;main.h,345 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,346 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      sub_tune_ind_mem_L0+0
	CLRF       sub_tune_ind_mem_L0+1
;main.h,347 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      sub_tune_cap_mem_L0+0
	CLRF       sub_tune_cap_mem_L0+1
;main.h,349 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune125
	CLRF       main_SW+0
	GOTO       L_sub_tune126
L_sub_tune125:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune126:
;main.h,350 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,351 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,352 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_sub_tune127:
	DECFSZ     R13, 1
	GOTO       L_sub_tune127
	DECFSZ     R12, 1
	GOTO       L_sub_tune127
	DECFSZ     R11, 1
	GOTO       L_sub_tune127
	NOP
;main.h,353 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune669
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune669:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune128
	GOTO       L_end_sub_tune
L_sub_tune128:
;main.h,355 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune670
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune670:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune129
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune129:
;main.h,356 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune671
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune671:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune130
	GOTO       L_end_sub_tune
L_sub_tune130:
;main.h,357 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune672
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune672:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune131
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune131:
;main.h,358 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune673
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune673:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune132
	GOTO       L_end_sub_tune
L_sub_tune132:
;main.h,359 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune674
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune674:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune133
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune133:
;main.h,360 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune675
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune675:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune134
	GOTO       L_end_sub_tune
L_sub_tune134:
;main.h,362 :: 		if(SWR>swr_mem) {
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune676
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
L__sub_tune676:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune135
;main.h,363 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune136
	CLRF       main_SW+0
	GOTO       L_sub_tune137
L_sub_tune136:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune137:
;main.h,364 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,365 :: 		ind = ind_mem;
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      main_ind+0
;main.h,366 :: 		cap = cap_mem;
	MOVF       sub_tune_cap_mem_L0+0, 0
	MOVWF      main_cap+0
;main.h,367 :: 		set_ind(ind);
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,368 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,369 :: 		SWR = swr_mem;
	MOVF       sub_tune_swr_mem_L0+0, 0
	MOVWF      _SWR+0
	MOVF       sub_tune_swr_mem_L0+1, 0
	MOVWF      _SWR+1
;main.h,370 :: 		}
L_sub_tune135:
;main.h,372 :: 		asm CLRWDT;
	CLRWDT
;main.h,373 :: 		return;
;main.h,374 :: 		}
L_end_sub_tune:
	RETURN
; end of _sub_tune

_tune:

;main.h,378 :: 		void tune() {
;main.h,380 :: 		asm CLRWDT;
	CLRWDT
;main.h,382 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,383 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,385 :: 		rready = 0;
	CLRF       _rready+0
;main.h,386 :: 		get_swr();
	CALL       _get_swr+0
;main.h,387 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune678
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune678:
	BTFSC      STATUS+0, 0
	GOTO       L_tune138
	GOTO       L_end_tune
L_tune138:
;main.h,388 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,389 :: 		if(Loss_ind==0) lcd_ind();
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_tune139
	CALL       _lcd_ind+0
L_tune139:
;main.h,390 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_tune140:
	DECFSZ     R13, 1
	GOTO       L_tune140
	DECFSZ     R12, 1
	GOTO       L_tune140
	DECFSZ     R11, 1
	GOTO       L_tune140
	NOP
;main.h,391 :: 		get_swr();
	CALL       _get_swr+0
;main.h,392 :: 		swr_a = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       _SWR+1, 0
	MOVWF      _swr_a+1
;main.h,393 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune679
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune679:
	BTFSC      STATUS+0, 0
	GOTO       L_tune141
	GOTO       L_end_tune
L_tune141:
;main.h,394 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW      128
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune680
	MOVF       main_max_swr+0, 0
	SUBLW      110
L__tune680:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune681
	MOVF       _SWR+0, 0
	SUBWF      main_max_swr+0, 0
L__tune681:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune142
	GOTO       L_end_tune
L_tune142:
;main.h,396 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _sub_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune682
	MOVLW      0
	XORWF      _SWR+0, 0
L__tune682:
	BTFSS      STATUS+0, 2
	GOTO       L_tune143
	CALL       _atu_reset+0
	GOTO       L_end_tune
L_tune143:
;main.h,397 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune683
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune683:
	BTFSC      STATUS+0, 0
	GOTO       L_tune144
	GOTO       L_end_tune
L_tune144:
;main.h,398 :: 		if(C_q==5 & L_q==5) return;
	MOVF       main_C_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_L_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune145
	GOTO       L_end_tune
L_tune145:
;main.h,400 :: 		if(L_q>5) {
	MOVF       main_L_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune146
;main.h,401 :: 		step_ind = L_mult;
	MOVF       main_L_mult+0, 0
	MOVWF      main_step_ind+0
;main.h,402 :: 		L_mult = 1;
	MOVLW      1
	MOVWF      main_L_mult+0
;main.h,403 :: 		sharp_ind();
	CALL       _sharp_ind+0
;main.h,404 :: 		}
L_tune146:
;main.h,405 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune684
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune684:
	BTFSC      STATUS+0, 0
	GOTO       L_tune147
	GOTO       L_end_tune
L_tune147:
;main.h,406 :: 		if(C_q>5) {
	MOVF       main_C_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune148
;main.h,407 :: 		step_cap = C_mult;  // = C_mult
	MOVF       main_C_mult+0, 0
	MOVWF      main_step_cap+0
;main.h,408 :: 		C_mult = 1;
	MOVLW      1
	MOVWF      main_C_mult+0
;main.h,409 :: 		sharp_cap();
	CALL       _sharp_cap+0
;main.h,410 :: 		}
L_tune148:
;main.h,411 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune149
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_tune150
L_tune149:
;main.h,412 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune151
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_tune152
L_tune151:
;main.h,413 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune153
	MOVLW      4
	MOVWF      main_L_mult+0
L_tune153:
L_tune152:
L_tune150:
;main.h,414 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune154
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_tune155
L_tune154:
;main.h,415 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune156
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_tune157
L_tune156:
;main.h,416 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune158
	MOVLW      4
	MOVWF      main_C_mult+0
L_tune158:
L_tune157:
L_tune155:
;main.h,417 :: 		asm CLRWDT;
	CLRWDT
;main.h,418 :: 		return;
;main.h,419 :: 		}
L_end_tune:
	RETURN
; end of _tune

_main:

;main.c,32 :: 		void main() {
;main.c,33 :: 		if(STATUS.B4==0) Restart = 1;
	BTFSC      STATUS+0, 4
	GOTO       L_main159
	MOVLW      1
	MOVWF      _Restart+0
L_main159:
;main.c,34 :: 		pic_init();
	CALL       _pic_init+0
;main.c,36 :: 		Delay_ms (100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_main160:
	DECFSZ     R13, 1
	GOTO       L_main160
	DECFSZ     R12, 1
	GOTO       L_main160
	DECFSZ     R11, 1
	GOTO       L_main160
;main.c,37 :: 		asm CLRWDT;
	CLRWDT
;main.c,38 :: 		cells_init();
	CALL       _cells_init+0
;main.c,39 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;main.c,40 :: 		if(type==0) { // 2-colors led  reset
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main161
;main.c,41 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,42 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,43 :: 		}
L_main161:
;main.c,44 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,46 :: 		Delay_ms(200);
	MOVLW      5
	MOVWF      R11
	MOVLW      15
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_main162:
	DECFSZ     R13, 1
	GOTO       L_main162
	DECFSZ     R12, 1
	GOTO       L_main162
	DECFSZ     R11, 1
	GOTO       L_main162
;main.c,47 :: 		asm CLRWDT;
	CLRWDT
;main.c,49 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main163
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_main164
L_main163:
;main.c,50 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main165
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_main166
L_main165:
;main.c,51 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main167
	MOVLW      4
	MOVWF      main_L_mult+0
L_main167:
L_main166:
L_main164:
;main.c,52 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main168
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_main169
L_main168:
;main.c,53 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main170
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_main171
L_main170:
;main.c,54 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main172
	MOVLW      4
	MOVWF      main_C_mult+0
L_main172:
L_main171:
L_main169:
;main.c,56 :: 		led_init();
	CALL       _led_init+0
;main.c,58 :: 		if(Test==0) {
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main173
;main.c,59 :: 		cap = EEPROM_Read(255);
	MOVLW      255
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.c,60 :: 		ind = EEPROM_Read(254);
	MOVLW      254
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.c,61 :: 		SW = EEPROM_Read(253);
	MOVLW      253
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_SW+0
;main.c,62 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW      252
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _swr_a+1
	CLRF       _swr_a+0
;main.c,63 :: 		swr_a += EEPROM_Read(251);
	MOVLW      251
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	ADDWF      _swr_a+0, 1
	MOVLW      0
	ADDWFC     _swr_a+1, 1
;main.c,64 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,65 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,66 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,67 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF       _Restart+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main174
	MOVLW      1
	MOVWF      _lcd_prep_short+0
L_main174:
;main.c,68 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,69 :: 		}
L_main173:
;main.c,71 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,77 :: 		while(1) {
L_main175:
;main.c,78 :: 		asm CLRWDT;
	CLRWDT
;main.c,79 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,81 :: 		if(Test==0) button_proc();
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main177
	CALL       _button_proc+0
	GOTO       L_main178
L_main177:
;main.c,82 :: 		else button_proc_test();
	CALL       _button_proc_test+0
L_main178:
;main.c,84 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW      0
	XORWF      _dysp_cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main686
	MOVLW      0
	XORWF      _dysp_cnt+0, 0
L__main686:
	BTFSC      STATUS+0, 2
	GOTO       L_main179
	MOVLW      1
	SUBWF      _dysp_cnt+0, 1
	MOVLW      0
	SUBWFB     _dysp_cnt+1, 1
	GOTO       L_main180
L_main179:
;main.c,85 :: 		else if(Test==0 & Dysp_delay!=0) dysp_off();
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _Dysp_delay+0, 0
	XORLW      0
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main181
	CALL       _dysp_off+0
L_main181:
L_main180:
;main.c,89 :: 		}
	GOTO       L_main175
;main.c,90 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_button_proc_test:

;main.c,95 :: 		void button_proc_test(void) {
;main.c,96 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test182
;main.c,97 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc_test183:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test183
	DECFSZ     R12, 1
	GOTO       L_button_proc_test183
	DECFSZ     R11, 1
	GOTO       L_button_proc_test183
	NOP
	NOP
;main.c,98 :: 		asm CLRWDT;
	CLRWDT
;main.c,99 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_button_proc_test184
;main.c,100 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF       main_SW+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test185
	MOVLW      1
	MOVWF      main_SW+0
	GOTO       L_button_proc_test186
L_button_proc_test185:
	CLRF       main_SW+0
L_button_proc_test186:
;main.c,101 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,102 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,103 :: 		}
	GOTO       L_button_proc_test187
L_button_proc_test184:
;main.c,105 :: 		if(L==1) L = 0; else L = 1;
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test188
	CLRF       _L+0
	GOTO       L_button_proc_test189
L_button_proc_test188:
	MOVLW      1
	MOVWF      _L+0
L_button_proc_test189:
;main.c,106 :: 		if(L==1) {
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test190
;main.c,107 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test191
;main.c,108 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr1_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr1_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test192
L_button_proc_test191:
;main.c,109 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test193
;main.c,110 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr2_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr2_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test193:
L_button_proc_test192:
;main.c,111 :: 		}
	GOTO       L_button_proc_test194
L_button_proc_test190:
;main.c,114 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test195
;main.c,115 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr3_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr3_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test196
L_button_proc_test195:
;main.c,116 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test197
;main.c,117 :: 		led_wr_str (0, 8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr4_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr4_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test197:
L_button_proc_test196:
;main.c,118 :: 		}
L_button_proc_test194:
;main.c,119 :: 		Delay_ms(1500);
	MOVLW      31
	MOVWF      R11
	MOVLW      113
	MOVWF      R12
	MOVLW      30
	MOVWF      R13
L_button_proc_test198:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test198
	DECFSZ     R12, 1
	GOTO       L_button_proc_test198
	DECFSZ     R11, 1
	GOTO       L_button_proc_test198
	NOP
;main.c,120 :: 		asm CLRWDT;
	CLRWDT
;main.c,121 :: 		if(PORTB.B0==0) {     // long press button
	BTFSC      PORTB+0, 0
	GOTO       L_button_proc_test199
;main.c,122 :: 		Test = 0; // wery long press button
	CLRF       _Test+0
;main.c,123 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test200
	MOVLW      1
	MOVWF      _Auto+0
L_button_proc_test200:
;main.c,125 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,126 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,127 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,128 :: 		EEPROM_Write(252, swr_a/256);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _swr_a+1, 0
	MOVWF      R0
	MOVLW      0
	BTFSC      _swr_a+1, 7
	MOVLW      255
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,129 :: 		EEPROM_Write(251, swr_a%256);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      0
	MOVWF      R4
	MOVLW      1
	MOVWF      R5
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,131 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test201
;main.c,132 :: 		led_wr_str (2, 16, "AUTO    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr5_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr5_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,133 :: 		asm CLRWDT;
	CLRWDT
;main.c,134 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc_test202:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test202
	DECFSZ     R12, 1
	GOTO       L_button_proc_test202
	DECFSZ     R11, 1
	GOTO       L_button_proc_test202
	NOP
;main.c,135 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr6_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr6_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,136 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test203
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr7_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr7_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test204
L_button_proc_test203:
;main.c,138 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr8_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr8_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test204:
;main.c,139 :: 		asm CLRWDT;
	CLRWDT
;main.c,140 :: 		}
	GOTO       L_button_proc_test205
L_button_proc_test201:
;main.c,141 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test206
;main.c,142 :: 		led_wr_str (1, 0, "AUTO    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr9_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr9_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,143 :: 		asm CLRWDT;
	CLRWDT
;main.c,144 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc_test207:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test207
	DECFSZ     R12, 1
	GOTO       L_button_proc_test207
	DECFSZ     R11, 1
	GOTO       L_button_proc_test207
	NOP
;main.c,145 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr10_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr10_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,146 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test208
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr11_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr11_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test209
L_button_proc_test208:
;main.c,148 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr12_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr12_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test209:
;main.c,149 :: 		asm CLRWDT;
	CLRWDT
;main.c,150 :: 		}
L_button_proc_test206:
L_button_proc_test205:
;main.c,151 :: 		}
L_button_proc_test199:
;main.c,152 :: 		}
L_button_proc_test187:
;main.c,153 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT ;   }
L_button_proc_test210:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test211
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc_test210
L_button_proc_test211:
;main.c,154 :: 		}  // END Tune btn
L_button_proc_test182:
;main.c,156 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test212
;main.c,157 :: 		asm CLRWDT;
	CLRWDT
;main.c,158 :: 		while(PORTB.B2==0) {
L_button_proc_test213:
	BTFSC      PORTB+0, 2
	GOTO       L_button_proc_test214
;main.c,159 :: 		if(L & ind<32*L_mult-1) {
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test688:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test689
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test688
L__button_proc_test689:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test690
	MOVF       R2, 0
	SUBWF      main_ind+0, 0
L__button_proc_test690:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test215
;main.c,160 :: 		ind ++;
	INCF       main_ind+0, 1
;main.c,161 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,162 :: 		}
	GOTO       L_button_proc_test216
L_button_proc_test215:
;main.c,163 :: 		else if(!L & cap<32*L_mult-1) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R4
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test691:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test692
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test691
L__button_proc_test692:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test693
	MOVF       R2, 0
	SUBWF      main_cap+0, 0
L__button_proc_test693:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R4, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test217
;main.c,164 :: 		cap ++;
	INCF       main_cap+0, 1
;main.c,165 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,166 :: 		}
L_button_proc_test217:
L_button_proc_test216:
;main.c,167 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,168 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,169 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test218:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test218
	DECFSZ     R12, 1
	GOTO       L_button_proc_test218
;main.c,170 :: 		asm CLRWDT;
	CLRWDT
;main.c,171 :: 		}
	GOTO       L_button_proc_test213
L_button_proc_test214:
;main.c,172 :: 		}
L_button_proc_test212:
;main.c,175 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test219
;main.c,176 :: 		asm CLRWDT;
	CLRWDT
;main.c,177 :: 		while(PORTB.B1==0) {
L_button_proc_test220:
	BTFSC      PORTB+0, 1
	GOTO       L_button_proc_test221
;main.c,178 :: 		if(L & ind>0) {
	MOVF       main_ind+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test222
;main.c,179 :: 		ind --;
	DECF       main_ind+0, 1
;main.c,180 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,181 :: 		}
	GOTO       L_button_proc_test223
L_button_proc_test222:
;main.c,182 :: 		else if(!L & cap>0) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test224
;main.c,183 :: 		cap --;
	DECF       main_cap+0, 1
;main.c,184 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,185 :: 		}
L_button_proc_test224:
L_button_proc_test223:
;main.c,186 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,187 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,188 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test225:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test225
	DECFSZ     R12, 1
	GOTO       L_button_proc_test225
;main.c,189 :: 		asm CLRWDT;
	CLRWDT
;main.c,190 :: 		}
	GOTO       L_button_proc_test220
L_button_proc_test221:
;main.c,191 :: 		}
L_button_proc_test219:
;main.c,192 :: 		return;
;main.c,193 :: 		}
L_end_button_proc_test:
	RETURN
; end of _button_proc_test

_button_proc:

;main.c,195 :: 		void button_proc(void) {
;main.c,196 :: 		if(Button(&PORTB, 0, 50, 0) | Soft_tune){
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _Soft_tune+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc226
;main.c,197 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,198 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,199 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc227:
	DECFSZ     R13, 1
	GOTO       L_button_proc227
	DECFSZ     R12, 1
	GOTO       L_button_proc227
	DECFSZ     R11, 1
	GOTO       L_button_proc227
	NOP
	NOP
;main.c,200 :: 		asm CLRWDT;
	CLRWDT
;main.c,201 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF       _Soft_tune+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	BTFSC      PORTB+0, 0
	GOTO       L__button_proc695
	BCF        3, 0
	GOTO       L__button_proc696
L__button_proc695:
	BSF        3, 0
L__button_proc696:
	CLRF       R0
	BTFSC      3, 0
	INCF       R0, 1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc228
;main.c,202 :: 		show_reset();
	CALL       _show_reset+0
;main.c,203 :: 		bypas =0;
	CLRF       _bypas+0
;main.c,204 :: 		}
	GOTO       L_button_proc229
L_button_proc228:
;main.c,206 :: 		p_Tx = 1;         //
	BSF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,207 :: 		n_Tx = 0;         // TX request
	BCF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,208 :: 		Delay_ms(250);    //
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc230:
	DECFSZ     R13, 1
	GOTO       L_button_proc230
	DECFSZ     R12, 1
	GOTO       L_button_proc230
	DECFSZ     R11, 1
	GOTO       L_button_proc230
	NOP
	NOP
;main.c,209 :: 		btn_push();
	CALL       _btn_push+0
;main.c,210 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,211 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc231:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc232
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc231
L_button_proc232:
;main.c,212 :: 		Soft_tune = 0;
	CLRF       _Soft_tune+0
;main.c,213 :: 		}
L_button_proc229:
;main.c,214 :: 		}
L_button_proc226:
;main.c,216 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc233
;main.c,217 :: 		Delay_ms(450);
	MOVLW      10
	MOVWF      R11
	MOVLW      34
	MOVWF      R12
	MOVLW      161
	MOVWF      R13
L_button_proc234:
	DECFSZ     R13, 1
	GOTO       L_button_proc234
	DECFSZ     R12, 1
	GOTO       L_button_proc234
	DECFSZ     R11, 1
	GOTO       L_button_proc234
;main.c,218 :: 		if(PORTB.B2==1) { // short press button
	BTFSS      PORTB+0, 2
	GOTO       L_button_proc235
;main.c,219 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,220 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,221 :: 		asm CLRWDT;
	CLRWDT
;main.c,222 :: 		if(bypas == 0) {
	MOVF       _bypas+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc236
;main.c,223 :: 		bypas = 1;
	MOVLW      1
	MOVWF      _bypas+0
;main.c,224 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      _cap_mem+0
;main.c,225 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      _ind_mem+0
;main.c,226 :: 		SW_mem = SW;
	MOVF       main_SW+0, 0
	MOVWF      _SW_mem+0
;main.c,227 :: 		cap = 0;
	CLRF       main_cap+0
;main.c,228 :: 		ind = 0;
	CLRF       main_ind+0
;main.c,229 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,230 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,231 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,232 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,233 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc237
	CALL       _lcd_ind+0
L_button_proc237:
;main.c,234 :: 		Auto_mem = Auto;
	MOVF       _Auto+0, 0
	MOVWF      _Auto_mem+0
;main.c,235 :: 		Auto = 0;
	CLRF       _Auto+0
;main.c,236 :: 		}
	GOTO       L_button_proc238
L_button_proc236:
;main.c,238 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,239 :: 		cap = cap_mem;
	MOVF       _cap_mem+0, 0
	MOVWF      main_cap+0
;main.c,240 :: 		ind = ind_mem;
	MOVF       _ind_mem+0, 0
	MOVWF      main_ind+0
;main.c,241 :: 		SW = SW_mem;
	MOVF       _SW_mem+0, 0
	MOVWF      main_SW+0
;main.c,242 :: 		set_cap(cap);
	MOVF       _cap_mem+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,243 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,244 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,245 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc239
	CALL       _lcd_ind+0
L_button_proc239:
;main.c,246 :: 		Auto = Auto_mem;
	MOVF       _Auto_mem+0, 0
	MOVWF      _Auto+0
;main.c,247 :: 		}
L_button_proc238:
;main.c,248 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc240
;main.c,249 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc241
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr13_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr13_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc242
L_button_proc241:
;main.c,250 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc243
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr14_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr14_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc244
L_button_proc243:
;main.c,251 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr15_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr15_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc244:
L_button_proc242:
;main.c,252 :: 		}
	GOTO       L_button_proc245
L_button_proc240:
;main.c,253 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc246
;main.c,254 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc247
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr16_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr16_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc248
L_button_proc247:
;main.c,255 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc249
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr17_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr17_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc250
L_button_proc249:
;main.c,256 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr18_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr18_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc250:
L_button_proc248:
;main.c,257 :: 		}
L_button_proc246:
L_button_proc245:
;main.c,258 :: 		asm CLRWDT;
	CLRWDT
;main.c,259 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc251:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc252
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc251
L_button_proc252:
;main.c,260 :: 		}
	GOTO       L_button_proc253
L_button_proc235:
;main.c,262 :: 		if (bypas==0 & type!=0) {   // long press button
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      0
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc254
;main.c,263 :: 		Test = 1;
	MOVLW      1
	MOVWF      _Test+0
;main.c,264 :: 		Auto = 0;
	CLRF       _Auto+0
;main.c,265 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc255
;main.c,266 :: 		led_wr_str (2, 16, "MANUAL  ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr19_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr19_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,267 :: 		asm CLRWDT;
	CLRWDT
;main.c,268 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc256:
	DECFSZ     R13, 1
	GOTO       L_button_proc256
	DECFSZ     R12, 1
	GOTO       L_button_proc256
	DECFSZ     R11, 1
	GOTO       L_button_proc256
	NOP
;main.c,269 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr20_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr20_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,270 :: 		if(L==1) led_wr_str (0, 16+8*12, "l", 1); else led_wr_str (0, 16+8*12, "c", 1);
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc257
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr21_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr21_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc258
L_button_proc257:
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr22_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr22_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc258:
;main.c,271 :: 		asm CLRWDT;
	CLRWDT
;main.c,272 :: 		}
	GOTO       L_button_proc259
L_button_proc255:
;main.c,273 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc260
;main.c,274 :: 		led_wr_str (1, 0, "MANUAL  ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr23_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr23_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,275 :: 		asm CLRWDT;
	CLRWDT
;main.c,276 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc261:
	DECFSZ     R13, 1
	GOTO       L_button_proc261
	DECFSZ     R12, 1
	GOTO       L_button_proc261
	DECFSZ     R11, 1
	GOTO       L_button_proc261
	NOP
;main.c,277 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr24_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr24_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,278 :: 		if(L==1) led_wr_str (0, 8, "l", 1); else led_wr_str (0, 8, "c", 1);
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc262
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr25_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr25_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc263
L_button_proc262:
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr26_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr26_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc263:
;main.c,279 :: 		asm CLRWDT;
	CLRWDT
;main.c,280 :: 		}
L_button_proc260:
L_button_proc259:
;main.c,281 :: 		}
L_button_proc254:
;main.c,282 :: 		}
L_button_proc253:
;main.c,283 :: 		}
L_button_proc233:
;main.c,285 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc264
;main.c,286 :: 		Delay_ms(450);
	MOVLW      10
	MOVWF      R11
	MOVLW      34
	MOVWF      R12
	MOVLW      161
	MOVWF      R13
L_button_proc265:
	DECFSZ     R13, 1
	GOTO       L_button_proc265
	DECFSZ     R12, 1
	GOTO       L_button_proc265
	DECFSZ     R11, 1
	GOTO       L_button_proc265
;main.c,287 :: 		if(PORTB.B1==1) { // short press button
	BTFSS      PORTB+0, 1
	GOTO       L_button_proc266
;main.c,288 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,289 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,290 :: 		asm CLRWDT;
	CLRWDT
;main.c,291 :: 		if(Auto == 0) Auto = 1;
	MOVF       _Auto+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc267
	MOVLW      1
	MOVWF      _Auto+0
	GOTO       L_button_proc268
L_button_proc267:
;main.c,292 :: 		else Auto = 0;
	CLRF       _Auto+0
L_button_proc268:
;main.c,293 :: 		EEPROM_Write(2, Auto);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _Auto+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,294 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc269
;main.c,295 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc270
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr27_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr27_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc271
L_button_proc270:
;main.c,296 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc272
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr28_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr28_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc273
L_button_proc272:
;main.c,297 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr29_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr29_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc273:
L_button_proc271:
;main.c,298 :: 		}
	GOTO       L_button_proc274
L_button_proc269:
;main.c,299 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc275
;main.c,300 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc276
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr30_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr30_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc277
L_button_proc276:
;main.c,301 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc278
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr31_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr31_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc279
L_button_proc278:
;main.c,302 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr32_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr32_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc279:
L_button_proc277:
;main.c,303 :: 		}
L_button_proc275:
L_button_proc274:
;main.c,304 :: 		asm CLRWDT;
	CLRWDT
;main.c,305 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc280:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc281
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc280
L_button_proc281:
;main.c,306 :: 		}
	GOTO       L_button_proc282
L_button_proc266:
;main.c,309 :: 		if(type!=0) user_setup();
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc283
	CALL       _user_setup+0
L_button_proc283:
;main.c,310 :: 		}
L_button_proc282:
;main.c,312 :: 		}
L_button_proc264:
;main.c,313 :: 		return;
;main.c,314 :: 		}
L_end_button_proc:
	RETURN
; end of _button_proc

_show_reset:

;main.c,316 :: 		void show_reset() {
;main.c,317 :: 		atu_reset();
	CALL       _atu_reset+0
;main.c,318 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,319 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,320 :: 		EEPROM_Write(255, 0);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,321 :: 		EEPROM_Write(254, 0);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,322 :: 		EEPROM_Write(253, 1);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,323 :: 		EEPROM_Write(252, 0);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,324 :: 		EEPROM_Write(251, 0);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,325 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,326 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,327 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,328 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,329 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.c,330 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,331 :: 		SWR_fixed_old = 0;
	CLRF       _SWR_fixed_old+0
	CLRF       _SWR_fixed_old+1
;main.c,332 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset284
;main.c,333 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr33_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr33_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,334 :: 		asm CLRWDT;
	CLRWDT
;main.c,335 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset285:
	DECFSZ     R13, 1
	GOTO       L_show_reset285
	DECFSZ     R12, 1
	GOTO       L_show_reset285
	DECFSZ     R11, 1
	GOTO       L_show_reset285
	NOP
	NOP
;main.c,336 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr34_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr34_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,337 :: 		asm CLRWDT;
	CLRWDT
;main.c,338 :: 		}
	GOTO       L_show_reset286
L_show_reset284:
;main.c,339 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset287
;main.c,340 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr35_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr35_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,341 :: 		asm CLRWDT;
	CLRWDT
;main.c,342 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset288:
	DECFSZ     R13, 1
	GOTO       L_show_reset288
	DECFSZ     R12, 1
	GOTO       L_show_reset288
	DECFSZ     R11, 1
	GOTO       L_show_reset288
	NOP
	NOP
;main.c,343 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr36_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr36_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,344 :: 		asm CLRWDT;
	CLRWDT
;main.c,345 :: 		}
	GOTO       L_show_reset289
L_show_reset287:
;main.c,347 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,348 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,349 :: 		}
L_show_reset289:
L_show_reset286:
;main.c,350 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,351 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,352 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,353 :: 		return;
;main.c,354 :: 		}
L_end_show_reset:
	RETURN
; end of _show_reset

_btn_push:

;main.c,356 :: 		void btn_push() {
;main.c,357 :: 		asm CLRWDT;
	CLRWDT
;main.c,358 :: 		if(type==4 | type==5)  {   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push290
;main.c,359 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr37_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr37_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,360 :: 		}
	GOTO       L_btn_push291
L_btn_push290:
;main.c,361 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push292
;main.c,362 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr38_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr38_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,363 :: 		}
	GOTO       L_btn_push293
L_btn_push292:
;main.c,365 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,366 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,367 :: 		}
L_btn_push293:
L_btn_push291:
;main.c,368 :: 		tune();
	CALL       _tune+0
;main.c,369 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_btn_push294
;main.c,370 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push699
	MOVF       _SWR+0, 0
	SUBLW      150
L__btn_push699:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push295
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_btn_push296
L_btn_push295:
;main.c,371 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push700
	MOVF       _SWR+0, 0
	SUBLW      250
L__btn_push700:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push297
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_btn_push298
L_btn_push297:
;main.c,372 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_btn_push298:
L_btn_push296:
;main.c,373 :: 		}
	GOTO       L_btn_push299
L_btn_push294:
;main.c,374 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push300
	CALL       _lcd_ind+0
L_btn_push300:
L_btn_push299:
;main.c,375 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,376 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,377 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,378 :: 		EEPROM_Write(252, swr_a/256);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _swr_a+1, 0
	MOVWF      R0
	MOVLW      0
	BTFSC      _swr_a+1, 7
	MOVLW      255
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,379 :: 		EEPROM_Write(251, swr_a%256);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      0
	MOVWF      R4
	MOVLW      1
	MOVWF      R5
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,380 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,381 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,382 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,383 :: 		SWR_fixed_old = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _SWR_fixed_old+0
	MOVF       _SWR+1, 0
	MOVWF      _SWR_fixed_old+1
;main.c,384 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main.c,385 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main.c,386 :: 		asm CLRWDT;
	CLRWDT
;main.c,387 :: 		return;
;main.c,388 :: 		}
L_end_btn_push:
	RETURN
; end of _btn_push

_lcd_prep:

;main.c,391 :: 		void lcd_prep() {
;main.c,392 :: 		asm CLRWDT;
	CLRWDT
;main.c,393 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep301
;main.c,394 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep302
;main.c,395 :: 		led_wr_str (0, 8, " ATU-100 ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr39_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr39_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,396 :: 		led_wr_str (2, 16, "7x7 v3.4", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr40_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr40_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,397 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr41_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr41_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,398 :: 		led_wr_str (6, 22, "& R3TJL", 7);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      22
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr42_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr42_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,399 :: 		asm CLRWDT;
	CLRWDT
;main.c,400 :: 		Delay_ms(800);
	MOVLW      17
	MOVWF      R11
	MOVLW      60
	MOVWF      R12
	MOVLW      203
	MOVWF      R13
L_lcd_prep303:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep303
	DECFSZ     R12, 1
	GOTO       L_lcd_prep303
	DECFSZ     R11, 1
	GOTO       L_lcd_prep303
;main.c,401 :: 		asm CLRWDT;
	CLRWDT
;main.c,402 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep304:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep304
	DECFSZ     R12, 1
	GOTO       L_lcd_prep304
	DECFSZ     R11, 1
	GOTO       L_lcd_prep304
	NOP
	NOP
;main.c,403 :: 		asm CLRWDT;
	CLRWDT
;main.c,408 :: 		}
L_lcd_prep302:
;main.c,409 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep305:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep305
	DECFSZ     R12, 1
	GOTO       L_lcd_prep305
	DECFSZ     R11, 1
	GOTO       L_lcd_prep305
	NOP
	NOP
;main.c,410 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep306
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr43_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr43_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep307
L_lcd_prep306:
;main.c,411 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr44_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr44_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep307:
;main.c,412 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr45_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr45_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,413 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep308
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr46_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr46_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep308:
;main.c,414 :: 		}
	GOTO       L_lcd_prep309
L_lcd_prep301:
;main.c,415 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep310
;main.c,416 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep311
;main.c,417 :: 		led_wr_str (0, 0, "ATU-100 7x7 v3.4", 16);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr47_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr47_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,418 :: 		led_wr_str (1, 0, "by N7DDC & R3TJL", 16);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr48_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr48_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,419 :: 		asm CLRWDT;
	CLRWDT
;main.c,420 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep312:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep312
	DECFSZ     R12, 1
	GOTO       L_lcd_prep312
	DECFSZ     R11, 1
	GOTO       L_lcd_prep312
	NOP
	NOP
;main.c,421 :: 		asm CLRWDT;
	CLRWDT
;main.c,422 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep313:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep313
	DECFSZ     R12, 1
	GOTO       L_lcd_prep313
	DECFSZ     R11, 1
	GOTO       L_lcd_prep313
	NOP
	NOP
;main.c,423 :: 		asm CLRWDT;
	CLRWDT
;main.c,426 :: 		}
L_lcd_prep311:
;main.c,427 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep314:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep314
	DECFSZ     R12, 1
	GOTO       L_lcd_prep314
	DECFSZ     R11, 1
	GOTO       L_lcd_prep314
	NOP
	NOP
;main.c,428 :: 		led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr49_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr49_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,429 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep315
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr50_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr50_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep316
L_lcd_prep315:
;main.c,430 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr51_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr51_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep316:
;main.c,431 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr52_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr52_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,432 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep317
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr53_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr53_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep317:
;main.c,433 :: 		}
L_lcd_prep310:
L_lcd_prep309:
;main.c,434 :: 		asm CLRWDT;
	CLRWDT
;main.c,435 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,436 :: 		return;
;main.c,437 :: 		}
L_end_lcd_prep:
	RETURN
; end of _lcd_prep

_lcd_swr:

;main.c,440 :: 		void lcd_swr(int swr) {
;main.c,441 :: 		asm CLRWDT;
	CLRWDT
;main.c,442 :: 		if(swr!=SWR_old) {
	MOVF       FARG_lcd_swr_swr+1, 0
	XORWF      _SWR_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr703
	MOVF       _SWR_old+0, 0
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr703:
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr318
;main.c,443 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,444 :: 		if(swr==1) {  // Low power
	MOVLW      0
	XORWF      FARG_lcd_swr_swr+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr704
	MOVLW      1
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr704:
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr319
;main.c,445 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr320
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr54_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr54_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr321
L_lcd_swr320:
;main.c,446 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr322
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr55_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr55_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr323
L_lcd_swr322:
;main.c,447 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr324
;main.c,448 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,449 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,450 :: 		}
L_lcd_swr324:
L_lcd_swr323:
L_lcd_swr321:
;main.c,451 :: 		SWR_old = 0;
	CLRF       _SWR_old+0
	CLRF       _SWR_old+1
;main.c,452 :: 		}
	GOTO       L_lcd_swr325
L_lcd_swr319:
;main.c,454 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,455 :: 		IntToStr(swr, work_str);
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,456 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,457 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,458 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,459 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,460 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr326
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr327
L_lcd_swr326:
;main.c,461 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr328
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr329
L_lcd_swr328:
;main.c,462 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr330
;main.c,463 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr705
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      150
L__lcd_swr705:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr331
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_lcd_swr332
L_lcd_swr331:
;main.c,464 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr706
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      250
L__lcd_swr706:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr333
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_lcd_swr334
L_lcd_swr333:
;main.c,465 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_lcd_swr334:
L_lcd_swr332:
;main.c,466 :: 		}
L_lcd_swr330:
L_lcd_swr329:
L_lcd_swr327:
;main.c,467 :: 		}
L_lcd_swr325:
;main.c,468 :: 		}
L_lcd_swr318:
;main.c,469 :: 		asm CLRWDT;
	CLRWDT
;main.c,470 :: 		return;
;main.c,471 :: 		}
L_end_lcd_swr:
	RETURN
; end of _lcd_swr

_button_delay:

;main.c,474 :: 		void button_delay() {
;main.c,475 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	MOVWF      FLOC__button_delay+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	IORWF       FLOC__button_delay+0, 1
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__button_delay+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_delay335
;main.c,476 :: 		but = 1;
	MOVLW      1
	MOVWF      _but+0
;main.c,477 :: 		}
L_button_delay335:
;main.c,478 :: 		return;
;main.c,479 :: 		}
L_end_button_delay:
	RETURN
; end of _button_delay

_show_pwr:

;main.c,481 :: 		void show_pwr(int Power, int SWR) {
;main.c,484 :: 		a = 100;
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      72
	MOVWF      show_pwr_a_L0+2
	MOVLW      133
	MOVWF      show_pwr_a_L0+3
;main.c,485 :: 		asm CLRWDT;
	CLRWDT
;main.c,487 :: 		if(Test==0 & Loss_ind==1 & SWR>=100) {
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 1
	MOVLW      128
	XORWF      FARG_show_pwr_SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr709
	MOVLW      100
	SUBWF      FARG_show_pwr_SWR+0, 0
L__show_pwr709:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr336
;main.c,488 :: 		if(Loss_mode==0) {   // prepare
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr337
;main.c,489 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr338
;main.c,490 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr339
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr56_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr56_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr340
L_show_pwr339:
;main.c,491 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr57_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr57_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr340:
;main.c,492 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr58_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr58_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,493 :: 		}
	GOTO       L_show_pwr341
L_show_pwr338:
;main.c,494 :: 		else if(type==2 | type==3) {   // 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr342
;main.c,495 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr343
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr59_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr59_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr344
L_show_pwr343:
;main.c,496 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr60_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr60_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr344:
;main.c,497 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr61_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr61_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,498 :: 		}
	GOTO       L_show_pwr345
L_show_pwr342:
;main.c,499 :: 		else if(type==1) {   // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr346
;main.c,500 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr347
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr62_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr62_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr348
L_show_pwr347:
;main.c,501 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr63_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr63_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr348:
;main.c,502 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr64_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr64_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,503 :: 		}
L_show_pwr346:
L_show_pwr345:
L_show_pwr341:
;main.c,504 :: 		}
L_show_pwr337:
;main.c,505 :: 		Loss_mode = 1;
	MOVLW      1
	MOVWF      _Loss_mode+0
;main.c,506 :: 		}
	GOTO       L_show_pwr349
L_show_pwr336:
;main.c,508 :: 		if(Loss_mode==1) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr350
	CALL       _lcd_ind+0
L_show_pwr350:
;main.c,509 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,510 :: 		}
L_show_pwr349:
;main.c,511 :: 		asm CLRWDT;
	CLRWDT
;main.c,512 :: 		if(Power != Power_old) {
	MOVF       FARG_show_pwr_Power+1, 0
	XORWF      _Power_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr710
	MOVF       _Power_old+0, 0
	XORWF      FARG_show_pwr_Power+0, 0
L__show_pwr710:
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr351
;main.c,513 :: 		Power_old = Power;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      _Power_old+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      _Power_old+1
;main.c,515 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr352
;main.c,516 :: 		if(Power >= 100) {   // > 10 W
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr711
	MOVLW      100
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr711:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr353
;main.c,517 :: 		Power += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     FARG_show_pwr_Power+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       R1, 0
	MOVWF      FARG_show_pwr_Power+1
;main.c,518 :: 		IntToStr(Power, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,519 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,520 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,521 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,522 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,523 :: 		}
	GOTO       L_show_pwr354
L_show_pwr353:
;main.c,525 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,526 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr355
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr356
L_show_pwr355:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr356:
;main.c,527 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,528 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr357
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr358
L_show_pwr357:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr358:
;main.c,529 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,530 :: 		}
L_show_pwr354:
;main.c,531 :: 		}
	GOTO       L_show_pwr359
L_show_pwr352:
;main.c,533 :: 		if(Power<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr712
	MOVLW      231
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr712:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr360
;main.c,534 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,535 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,536 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,537 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,538 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,539 :: 		}
	GOTO       L_show_pwr361
L_show_pwr360:
;main.c,541 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,542 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,543 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,544 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,545 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,546 :: 		}
L_show_pwr361:
;main.c,547 :: 		}
L_show_pwr359:
;main.c,548 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr362
	CLRF       FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr363
L_show_pwr362:
;main.c,549 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr364
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr364:
L_show_pwr363:
;main.c,551 :: 		asm CLRWDT;
	CLRWDT
;main.c,553 :: 		if(Loss_mode==1)  {
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr365
;main.c,554 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF       main_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr366
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      _swr_a+1
L_show_pwr366:
;main.c,555 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       _Fid_loss+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      130
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVLW      31
	MOVWF      R4
	MOVLW      133
	MOVWF      R5
	MOVLW      107
	MOVWF      R6
	MOVLW      123
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      127
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+8
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+9
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+10
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+11
	MOVF       FLOC__show_pwr+8, 0
	MOVWF      show_pwr_a_L0+0
	MOVF       FLOC__show_pwr+9, 0
	MOVWF      show_pwr_a_L0+1
	MOVF       FLOC__show_pwr+10, 0
	MOVWF      show_pwr_a_L0+2
	MOVF       FLOC__show_pwr+11, 0
	MOVWF      show_pwr_a_L0+3
;main.c,556 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      128
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      129
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      show_pwr_b_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_b_L0+1
	MOVF       R2, 0
	MOVWF      show_pwr_b_L0+2
	MOVF       R3, 0
	MOVWF      show_pwr_b_L0+3
;main.c,557 :: 		if(a>=1.0) a = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       FLOC__show_pwr+8, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+9, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+10, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+11, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr367
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      0
	MOVWF      show_pwr_a_L0+2
	MOVLW      127
	MOVWF      show_pwr_a_L0+3
L_show_pwr367:
;main.c,558 :: 		if(b>=1.0) b = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr368
	MOVLW      0
	MOVWF      show_pwr_b_L0+0
	MOVLW      0
	MOVWF      show_pwr_b_L0+1
	MOVLW      0
	MOVWF      show_pwr_b_L0+2
	MOVLW      127
	MOVWF      show_pwr_b_L0+3
L_show_pwr368:
;main.c,559 :: 		p_ant = Power * a * b;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,560 :: 		eff = a * b * 100;
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R3
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      show_pwr_eff_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_eff_L0+1
;main.c,561 :: 		if(eff>=100) eff = 99;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr713
	MOVLW      100
	SUBWF      R0, 0
L__show_pwr713:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr369
	MOVLW      99
	MOVWF      show_pwr_eff_L0+0
	MOVLW      0
	MOVWF      show_pwr_eff_L0+1
L_show_pwr369:
;main.c,563 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr370
;main.c,564 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr714
	MOVLW      100
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr714:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr371
;main.c,565 :: 		p_ant += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      show_pwr_p_ant_L0+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     show_pwr_p_ant_L0+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,566 :: 		IntToStr(p_ant, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,567 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,568 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,569 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,570 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,571 :: 		}
	GOTO       L_show_pwr372
L_show_pwr371:
;main.c,573 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,574 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr373
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr374
L_show_pwr373:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr374:
;main.c,575 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,576 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr375
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr376
L_show_pwr375:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr376:
;main.c,577 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,578 :: 		}
L_show_pwr372:
;main.c,579 :: 		}
	GOTO       L_show_pwr377
L_show_pwr370:
;main.c,581 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr715
	MOVLW      231
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr715:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr378
;main.c,582 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,583 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,584 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,585 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,586 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,587 :: 		}
	GOTO       L_show_pwr379
L_show_pwr378:
;main.c,589 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,590 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,591 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,592 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,593 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,594 :: 		}
L_show_pwr379:
;main.c,595 :: 		}
L_show_pwr377:
;main.c,596 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr380
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr381
L_show_pwr380:
;main.c,597 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr382
	CLRF       FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr383
L_show_pwr382:
;main.c,598 :: 		else if(type==1) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr384
	CLRF       FARG_led_wr_str+0
	MOVLW      12
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr384:
L_show_pwr383:
L_show_pwr381:
;main.c,600 :: 		IntToStr(eff, work_str);
	MOVF       show_pwr_eff_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_eff_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,601 :: 		work_str_2[0] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
;main.c,602 :: 		work_str_2[1] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+1
;main.c,603 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr385
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      76
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr386
L_show_pwr385:
;main.c,604 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr387
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      14
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr388
L_show_pwr387:
;main.c,605 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr389
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr389:
L_show_pwr388:
L_show_pwr386:
;main.c,606 :: 		}
L_show_pwr365:
;main.c,607 :: 		}
L_show_pwr351:
;main.c,608 :: 		asm CLRWDT;
	CLRWDT
;main.c,609 :: 		return;
;main.c,610 :: 		}
L_end_show_pwr:
	RETURN
; end of _show_pwr

_lcd_pwr:

;main.c,612 :: 		void lcd_pwr() {
;main.c,613 :: 		int p = 0;
	CLRF       lcd_pwr_p_L0+0
	CLRF       lcd_pwr_p_L0+1
;main.c,615 :: 		int delta = Auto_delta - 100;
	MOVLW      100
	SUBWF      _Auto_delta+0, 0
	MOVWF      lcd_pwr_delta_L0+0
	MOVLW      0
	SUBWFB     _Auto_delta+1, 0
	MOVWF      lcd_pwr_delta_L0+1
;main.c,617 :: 		int SWR_fixed = 1;
	MOVLW      1
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVLW      0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
;main.c,618 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,619 :: 		asm CLRWDT;
	CLRWDT
;main.c,621 :: 		cnt = 120;
	MOVLW      120
	MOVWF      lcd_pwr_cnt_L0+0
;main.c,622 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF       lcd_pwr_peak_cnt_L0+0
L_lcd_pwr390:
	MOVF       lcd_pwr_cnt_L0+0, 0
	SUBWF      lcd_pwr_peak_cnt_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr391
;main.c,623 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr717
	BSF        R6, 0
	GOTO       L__lcd_pwr718
L__lcd_pwr717:
	BCF        R6, 0
L__lcd_pwr718:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr719
	BSF        3, 0
	GOTO       L__lcd_pwr720
L__lcd_pwr719:
	BCF        3, 0
L__lcd_pwr720:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr721
	BTFSC      3, 0
	GOTO       L__lcd_pwr721
	BCF        R6, 0
	GOTO       L__lcd_pwr722
L__lcd_pwr721:
	BSF        R6, 0
L__lcd_pwr722:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr723
	BSF        3, 0
	GOTO       L__lcd_pwr724
L__lcd_pwr723:
	BCF        3, 0
L__lcd_pwr724:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr725
	BTFSC      3, 0
	GOTO       L__lcd_pwr725
	BCF        R6, 0
	GOTO       L__lcd_pwr726
L__lcd_pwr725:
	BSF        R6, 0
L__lcd_pwr726:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr393
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr394
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr394:
L_lcd_pwr393:
;main.c,624 :: 		get_pwr();
	CALL       _get_pwr+0
;main.c,625 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW      128
	XORWF      lcd_pwr_p_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr727
	MOVF       _PWR+0, 0
	SUBWF      lcd_pwr_p_L0+0, 0
L__lcd_pwr727:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr395
	MOVF       _PWR+0, 0
	MOVWF      lcd_pwr_p_L0+0
	MOVF       _PWR+1, 0
	MOVWF      lcd_pwr_p_L0+1
	MOVF       _SWR+0, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVF       _SWR+1, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
L_lcd_pwr395:
;main.c,626 :: 		Delay_ms(3);
	MOVLW      16
	MOVWF      R12
	MOVLW      148
	MOVWF      R13
L_lcd_pwr396:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr396
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr396
	NOP
;main.c,622 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF       lcd_pwr_peak_cnt_L0+0, 1
;main.c,627 :: 		}
	GOTO       L_lcd_pwr390
L_lcd_pwr391:
;main.c,628 :: 		asm CLRWDT;
	CLRWDT
;main.c,629 :: 		Power = p;
	MOVF       lcd_pwr_p_L0+0, 0
	MOVWF      _Power+0
	MOVF       lcd_pwr_p_L0+1, 0
	MOVWF      _Power+1
;main.c,630 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,631 :: 		if(SWR_fixed>=100) {
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr728
	MOVLW      100
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr728:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_pwr397
;main.c,632 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main.c,633 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,634 :: 		}
L_lcd_pwr397:
;main.c,636 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr729
	MOVF       _Auto_delta+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr729:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      _Auto+0, 0
	MOVWF      R5
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr730
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
L__lcd_pwr730:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	SUBWFB     lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr731
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr731:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R3, 0
	MOVWF      R4
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr732
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr732:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
	MOVWF      R1
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	SUBWFB     _SWR_fixed_old+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr733
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr733:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	MOVF       R0, 0
	IORWF       R4, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr734
	MOVLW      231
	XORWF      _SWR_fixed_old+0, 0
L__lcd_pwr734:
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	MOVF       R5, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr398
;main.c,637 :: 		Soft_tune = 1;
	MOVLW      1
	MOVWF      _Soft_tune+0
L_lcd_pwr398:
;main.c,639 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr735
	BSF        R6, 0
	GOTO       L__lcd_pwr736
L__lcd_pwr735:
	BCF        R6, 0
L__lcd_pwr736:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr737
	BSF        3, 0
	GOTO       L__lcd_pwr738
L__lcd_pwr737:
	BCF        3, 0
L__lcd_pwr738:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr739
	BTFSC      3, 0
	GOTO       L__lcd_pwr739
	BCF        R6, 0
	GOTO       L__lcd_pwr740
L__lcd_pwr739:
	BSF        R6, 0
L__lcd_pwr740:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr741
	BSF        3, 0
	GOTO       L__lcd_pwr742
L__lcd_pwr741:
	BCF        3, 0
L__lcd_pwr742:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr743
	BTFSC      3, 0
	GOTO       L__lcd_pwr743
	BCF        R6, 0
	GOTO       L__lcd_pwr744
L__lcd_pwr743:
	BSF        R6, 0
L__lcd_pwr744:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr399
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr400
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr400:
L_lcd_pwr399:
;main.c,640 :: 		show_pwr(Power, SWR_fixed);
	MOVF       _Power+0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       _Power+1, 0
	MOVWF      FARG_show_pwr_Power+1
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_show_pwr_SWR+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_show_pwr_SWR+1
	CALL       _show_pwr+0
;main.c,642 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr745
	BSF        R6, 0
	GOTO       L__lcd_pwr746
L__lcd_pwr745:
	BCF        R6, 0
L__lcd_pwr746:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr747
	BSF        3, 0
	GOTO       L__lcd_pwr748
L__lcd_pwr747:
	BCF        3, 0
L__lcd_pwr748:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr749
	BTFSC      3, 0
	GOTO       L__lcd_pwr749
	BCF        R6, 0
	GOTO       L__lcd_pwr750
L__lcd_pwr749:
	BSF        R6, 0
L__lcd_pwr750:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr751
	BSF        3, 0
	GOTO       L__lcd_pwr752
L__lcd_pwr751:
	BCF        3, 0
L__lcd_pwr752:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr753
	BTFSC      3, 0
	GOTO       L__lcd_pwr753
	BCF        R6, 0
	GOTO       L__lcd_pwr754
L__lcd_pwr753:
	BSF        R6, 0
L__lcd_pwr754:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr401
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr402
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr402:
L_lcd_pwr401:
;main.c,643 :: 		asm CLRWDT;
	CLRWDT
;main.c,644 :: 		if(Overload==1) {
	MOVF       main_Overload+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr403
;main.c,645 :: 		if(type==4 | type==5) {                  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr404
;main.c,646 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr65_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr65_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,647 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr405:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr405
;main.c,648 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr66_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr66_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,649 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr406:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr406
	NOP
	NOP
;main.c,650 :: 		asm CLRWDT;
	CLRWDT
;main.c,651 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr67_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr67_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,652 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr407:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr407
	NOP
;main.c,653 :: 		asm CLRWDT;
	CLRWDT
;main.c,654 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr68_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr68_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,655 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr408:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr408
	NOP
	NOP
;main.c,656 :: 		asm CLRWDT;
	CLRWDT
;main.c,657 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr69_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr69_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,658 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr409:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr409
	NOP
;main.c,659 :: 		asm CLRWDT;
	CLRWDT
;main.c,660 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr70_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr70_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,661 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr410:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr410
	NOP
	NOP
;main.c,662 :: 		asm CLRWDT;
	CLRWDT
;main.c,663 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr71_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr71_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,664 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr411:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr411
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr411
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr411
;main.c,665 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr72_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr72_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,666 :: 		}
	GOTO       L_lcd_pwr412
L_lcd_pwr404:
;main.c,667 :: 		else if(type!=0)  {        // 1602  & 128*32// 1602
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr413
;main.c,668 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr73_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr73_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,669 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr414:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr414
;main.c,670 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr74_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr74_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,671 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr415:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr415
	NOP
	NOP
;main.c,672 :: 		asm CLRWDT;
	CLRWDT
;main.c,673 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr75_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr75_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,674 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr416:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr416
	NOP
;main.c,675 :: 		asm CLRWDT;
	CLRWDT
;main.c,676 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr76_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr76_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,677 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr417:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr417
	NOP
	NOP
;main.c,678 :: 		asm CLRWDT;
	CLRWDT
;main.c,679 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr77_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr77_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,680 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr418:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr418
	NOP
;main.c,681 :: 		asm CLRWDT;
	CLRWDT
;main.c,682 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr78_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr78_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,683 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr419:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr419
	NOP
	NOP
;main.c,684 :: 		asm CLRWDT;
	CLRWDT
;main.c,685 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr79_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr79_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,686 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr420:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr420
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr420
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr420
;main.c,687 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr80_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr80_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,688 :: 		}
L_lcd_pwr413:
L_lcd_pwr412:
;main.c,689 :: 		asm CLRWDT;
	CLRWDT
;main.c,690 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,691 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,692 :: 		}
L_lcd_pwr403:
;main.c,693 :: 		return;
;main.c,694 :: 		}
L_end_lcd_pwr:
	RETURN
; end of _lcd_pwr

_lcd_ind:

;main.c,696 :: 		void lcd_ind() {
;main.c,698 :: 		asm CLRWDT;
	CLRWDT
;main.c,700 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,701 :: 		if(ind.B0) work_int += Ind1;
	BTFSS      main_ind+0, 0
	GOTO       L_lcd_ind422
	MOVF       _Ind1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind422:
;main.c,702 :: 		if(ind.B1) work_int += Ind2;
	BTFSS      main_ind+0, 1
	GOTO       L_lcd_ind423
	MOVF       _Ind2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind423:
;main.c,703 :: 		if(ind.B2) work_int += Ind3;
	BTFSS      main_ind+0, 2
	GOTO       L_lcd_ind424
	MOVF       _Ind3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind424:
;main.c,704 :: 		if(ind.B3) work_int += Ind4;
	BTFSS      main_ind+0, 3
	GOTO       L_lcd_ind425
	MOVF       _Ind4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind425:
;main.c,705 :: 		if(ind.B4) work_int += Ind5;
	BTFSS      main_ind+0, 4
	GOTO       L_lcd_ind426
	MOVF       _Ind5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind426:
;main.c,706 :: 		if(ind.B5) work_int += Ind6;
	BTFSS      main_ind+0, 5
	GOTO       L_lcd_ind427
	MOVF       _Ind6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind427:
;main.c,707 :: 		if(ind.B6) work_int += Ind7;
	BTFSS      main_ind+0, 6
	GOTO       L_lcd_ind428
	MOVF       _Ind7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind428:
;main.c,708 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW      128
	XORLW      39
	MOVWF      R0
	MOVLW      128
	XORWF      _work_int+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_ind756
	MOVF       _work_int+0, 0
	SUBLW      15
L__lcd_ind756:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_ind429
;main.c,709 :: 		work_int += 50; // round
	MOVLW      50
	ADDWF      _work_int+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     _work_int+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      _work_int+0
	MOVF       R1, 0
	MOVWF      _work_int+1
;main.c,710 :: 		IntToStr(work_int, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,711 :: 		work_str_2[0] = work_str[1];
	MOVF       _work_str+1, 0
	MOVWF      _work_str_2+0
;main.c,712 :: 		work_str_2[1] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+1
;main.c,713 :: 		work_str_2[2] = '.';
	MOVLW      46
	MOVWF      _work_str_2+2
;main.c,714 :: 		work_str_2[3] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+3
;main.c,715 :: 		}
	GOTO       L_lcd_ind430
L_lcd_ind429:
;main.c,717 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,718 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF       _work_str+2, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind431
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
	GOTO       L_lcd_ind432
L_lcd_ind431:
	MOVLW      48
	MOVWF      _work_str_2+0
L_lcd_ind432:
;main.c,719 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,720 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF       _work_str+3, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind433
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+2
	GOTO       L_lcd_ind434
L_lcd_ind433:
	MOVLW      48
	MOVWF      _work_str_2+2
L_lcd_ind434:
;main.c,721 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind435
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+3
	GOTO       L_lcd_ind436
L_lcd_ind435:
	MOVLW      48
	MOVWF      _work_str_2+3
L_lcd_ind436:
;main.c,722 :: 		}
L_lcd_ind430:
;main.c,723 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind437
;main.c,724 :: 		if(SW==1) column = 4; else column = 6;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind438
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind439
L_lcd_ind438:
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind439:
;main.c,725 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr81_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr81_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,726 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr82_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr82_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,727 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,728 :: 		}
	GOTO       L_lcd_ind440
L_lcd_ind437:
;main.c,729 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind441
;main.c,730 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind442
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind443
L_lcd_ind442:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind443:
;main.c,731 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr83_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr83_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,732 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr84_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr84_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,733 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,734 :: 		}
	GOTO       L_lcd_ind444
L_lcd_ind441:
;main.c,735 :: 		else if(type==1) { //  1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind445
;main.c,736 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind446
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind447
L_lcd_ind446:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind447:
;main.c,737 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr85_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr85_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,738 :: 		led_wr_str (column, 15, "u", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr86_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr86_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,739 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,740 :: 		}
L_lcd_ind445:
L_lcd_ind444:
L_lcd_ind440:
;main.c,742 :: 		asm CLRWDT;
	CLRWDT
;main.c,744 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,745 :: 		if(cap.B0) work_int += Cap1;
	BTFSS      main_cap+0, 0
	GOTO       L_lcd_ind449
	MOVF       _Cap1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind449:
;main.c,746 :: 		if(cap.B1) work_int += Cap2;
	BTFSS      main_cap+0, 1
	GOTO       L_lcd_ind450
	MOVF       _Cap2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind450:
;main.c,747 :: 		if(cap.B2) work_int += Cap3;
	BTFSS      main_cap+0, 2
	GOTO       L_lcd_ind451
	MOVF       _Cap3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind451:
;main.c,748 :: 		if(cap.B3) work_int += Cap4;
	BTFSS      main_cap+0, 3
	GOTO       L_lcd_ind452
	MOVF       _Cap4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind452:
;main.c,749 :: 		if(cap.B4) work_int += Cap5;
	BTFSS      main_cap+0, 4
	GOTO       L_lcd_ind453
	MOVF       _Cap5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind453:
;main.c,750 :: 		if(cap.B5) work_int += Cap6;
	BTFSS      main_cap+0, 5
	GOTO       L_lcd_ind454
	MOVF       _Cap6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind454:
;main.c,751 :: 		if(cap.B6) work_int += Cap7;
	BTFSS      main_cap+0, 6
	GOTO       L_lcd_ind455
	MOVF       _Cap7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind455:
;main.c,752 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,753 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,754 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,755 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,756 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,758 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind456
;main.c,759 :: 		if(SW==1) column = 6; else column = 4;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind457
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind458
L_lcd_ind457:
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind458:
;main.c,760 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr87_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr87_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,761 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr88_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr88_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,762 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,763 :: 		}
	GOTO       L_lcd_ind459
L_lcd_ind456:
;main.c,764 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind460
;main.c,765 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind461
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind462
L_lcd_ind461:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind462:
;main.c,766 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr89_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr89_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,767 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr90_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr90_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,768 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,769 :: 		}
	GOTO       L_lcd_ind463
L_lcd_ind460:
;main.c,770 :: 		else if(type==1) { // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind464
;main.c,771 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind465
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind466
L_lcd_ind465:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind466:
;main.c,772 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr91_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr91_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,773 :: 		led_wr_str (column, 15, "p", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr92_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr92_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,774 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,775 :: 		}
L_lcd_ind464:
L_lcd_ind463:
L_lcd_ind459:
;main.c,777 :: 		asm CLRWDT;
	CLRWDT
;main.c,778 :: 		return;
;main.c,779 :: 		}
L_end_lcd_ind:
	RETURN
; end of _lcd_ind

_cells_init:

;main.c,782 :: 		void cells_init(void) {
;main.c,784 :: 		asm CLRWDT;
	CLRWDT
;main.c,786 :: 		type = EEPROM_Read(1); // type of display
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _type+0
;main.c,787 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_cells_init467
	MOVLW      1
	MOVWF      _Auto+0
L_cells_init467:
;main.c,788 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_Rel_Del+0
	CLRF       main_Rel_Del+1
;main.c,789 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      _Auto_delta+0
	MOVF       R1, 0
	MOVWF      _Auto_delta+1
;main.c,790 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_min_for_start+0
	MOVF       R1, 0
	MOVWF      main_min_for_start+1
;main.c,791 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_max_for_start+0
	MOVF       R1, 0
	MOVWF      main_max_for_start+1
;main.c,794 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW      9
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_max_swr+0
	MOVF       R1, 0
	MOVWF      main_max_swr+1
;main.c,795 :: 		L_q = EEPROM_Read(10);
	MOVLW      10
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_q+0
;main.c,796 :: 		L_linear = EEPROM_Read(11);
	MOVLW      11
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_linear+0
;main.c,797 :: 		C_q = EEPROM_Read(12);
	MOVLW      12
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_q+0
;main.c,798 :: 		C_linear = EEPROM_Read(13);
	MOVLW      13
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_linear+0
;main.c,799 :: 		D_correction = EEPROM_Read(14);
	MOVLW      14
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_D_correction+0
;main.c,800 :: 		L_invert = EEPROM_Read(15);
	MOVLW      15
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_invert+0
;main.c,802 :: 		asm CLRWDT;
	CLRWDT
;main.c,803 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
	MOVLW      16
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      17
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind1+1
;main.c,804 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
	MOVLW      18
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      19
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind2+1
;main.c,805 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
	MOVLW      20
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      21
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind3+1
;main.c,806 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
	MOVLW      22
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      23
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind4+1
;main.c,807 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
	MOVLW      24
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      25
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind5+1
;main.c,808 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
	MOVLW      26
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      27
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind6+1
;main.c,809 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
	MOVLW      28
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      29
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind7+1
;main.c,811 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
	MOVLW      32
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      33
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap1+1
;main.c,812 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
	MOVLW      34
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      35
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap2+1
;main.c,813 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
	MOVLW      36
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      37
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap3+1
;main.c,814 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
	MOVLW      38
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      39
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap4+1
;main.c,815 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
	MOVLW      40
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      41
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap5+1
;main.c,816 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
	MOVLW      42
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      43
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap6+1
;main.c,817 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
	MOVLW      44
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      45
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap7+1
;main.c,819 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW      48
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_P_High+0
;main.c,820 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW      49
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_K_Mult+0
;main.c,821 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW      50
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Dysp_delay+0
;main.c,822 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW      51
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_Loss_ind+0
;main.c,823 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main.c,824 :: 		asm CLRWDT;
	CLRWDT
;main.c,825 :: 		return;
;main.c,827 :: 		}
L_end_cells_init:
	RETURN
; end of _cells_init

_user_setup:

;main.c,828 :: 		void user_setup()  {
;main.c,831 :: 		usr_set = 1;
	MOVLW      1
	MOVWF      user_setup_usr_set_L0+0
	MOVLW      0
	MOVWF      user_setup_usr_set_L0+1
;main.c,832 :: 		asm CLRWDT;
	CLRWDT
;main.c,833 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main.c,834 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup468
;main.c,835 :: 		led_wr_str (0, 1, "          ", 10);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr93_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr93_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,836 :: 		led_wr_str (2, 1, "          ", 10);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr94_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr94_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,837 :: 		led_wr_str (4, 1, "          ", 10);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr95_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr95_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,838 :: 		led_wr_str (6, 1, "          ", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr96_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr96_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,839 :: 		asm CLRWDT;
	CLRWDT
;main.c,840 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11
	MOVLW      15
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_user_setup469:
	DECFSZ     R13, 1
	GOTO       L_user_setup469
	DECFSZ     R12, 1
	GOTO       L_user_setup469
	DECFSZ     R11, 1
	GOTO       L_user_setup469
;main.c,841 :: 		asm CLRWDT;
	CLRWDT
;main.c,842 :: 		}
	GOTO       L_user_setup470
L_user_setup468:
;main.c,843 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup471
;main.c,844 :: 		led_wr_str (0, 0, "                 ", 17);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr97_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr97_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      17
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,845 :: 		led_wr_str (1, 0, "                 ", 17);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr98_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr98_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      17
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,846 :: 		asm CLRWDT;
	CLRWDT
;main.c,847 :: 		Delay_ms(200);
	MOVLW      5
	MOVWF      R11
	MOVLW      15
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_user_setup472:
	DECFSZ     R13, 1
	GOTO       L_user_setup472
	DECFSZ     R12, 1
	GOTO       L_user_setup472
	DECFSZ     R11, 1
	GOTO       L_user_setup472
;main.c,848 :: 		asm CLRWDT;
	CLRWDT
;main.c,849 :: 		}
L_user_setup471:
L_user_setup470:
;main.c,857 :: 		while(usr_set > 0) {
L_user_setup473:
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      user_setup_usr_set_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup759
	MOVF       user_setup_usr_set_L0+0, 0
	SUBLW      0
L__user_setup759:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup474
;main.c,858 :: 		asm CLRWDT;
	CLRWDT
;main.c,859 :: 		if(usr_set == 1) {   // min SWR setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup760
	MOVLW      1
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup760:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup475
;main.c,860 :: 		inttostr((Auto_delta / 10), swr_str);
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _Auto_delta+0, 0
	MOVWF      R0
	MOVF       _Auto_delta+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,861 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup476
;main.c,862 :: 		led_wr_str(0, 16, "Min SWR  ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr99_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr99_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,863 :: 		asm CLRWDT;
	CLRWDT
;main.c,864 :: 		led_wr_str(3, 6, swr_str, 6);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,865 :: 		asm CLRWDT;
	CLRWDT
;main.c,866 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup477:
	DECFSZ     R13, 1
	GOTO       L_user_setup477
	DECFSZ     R12, 1
	GOTO       L_user_setup477
	DECFSZ     R11, 1
	GOTO       L_user_setup477
;main.c,868 :: 		}
	GOTO       L_user_setup478
L_user_setup476:
;main.c,869 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup479
;main.c,870 :: 		led_wr_str(0, 1, "Min SWR  ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr100_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr100_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,871 :: 		led_wr_str(1, 1, SWR_str, 6);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,872 :: 		asm CLRWDT;
	CLRWDT
;main.c,873 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup480:
	DECFSZ     R13, 1
	GOTO       L_user_setup480
	DECFSZ     R12, 1
	GOTO       L_user_setup480
	DECFSZ     R11, 1
	GOTO       L_user_setup480
;main.c,874 :: 		}
L_user_setup479:
L_user_setup478:
;main.c,875 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup481
;main.c,876 :: 		asm CLRWDT;
	CLRWDT
;main.c,877 :: 		if(Auto_delta < 190) {
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup761
	MOVLW      190
	SUBWF      _Auto_delta+0, 0
L__user_setup761:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup482
;main.c,878 :: 		Auto_delta = Auto_delta + 10;
	MOVLW      10
	ADDWF      _Auto_delta+0, 1
	MOVLW      0
	ADDWFC     _Auto_delta+1, 1
;main.c,879 :: 		}
L_user_setup482:
;main.c,880 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup483:
	DECFSZ     R13, 1
	GOTO       L_user_setup483
	DECFSZ     R12, 1
	GOTO       L_user_setup483
;main.c,881 :: 		asm CLRWDT;
	CLRWDT
;main.c,882 :: 		} // end of BYP button
L_user_setup481:
;main.c,883 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup484
;main.c,884 :: 		asm CLRWDT;
	CLRWDT
;main.c,885 :: 		if(Auto_delta > 110) {
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup762
	MOVF       _Auto_delta+0, 0
	SUBLW      110
L__user_setup762:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup485
;main.c,886 :: 		Auto_delta = Auto_delta - 10;
	MOVLW      10
	SUBWF      _Auto_delta+0, 1
	MOVLW      0
	SUBWFB     _Auto_delta+1, 1
;main.c,887 :: 		}
L_user_setup485:
;main.c,888 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup486:
	DECFSZ     R13, 1
	GOTO       L_user_setup486
	DECFSZ     R12, 1
	GOTO       L_user_setup486
;main.c,889 :: 		asm CLRWDT;
	CLRWDT
;main.c,890 :: 		}
L_user_setup484:
;main.c,891 :: 		} // end min SWR setup
L_user_setup475:
;main.c,892 :: 		if(usr_set == 2) {   // max PWR setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup763
	MOVLW      2
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup763:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup487
;main.c,893 :: 		inttostr((max_for_start / 10), swr_str);
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       main_max_for_start+0, 0
	MOVWF      R0
	MOVF       main_max_for_start+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,894 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup488
;main.c,895 :: 		led_wr_str(0, 16, "Max PWR", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr101_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr101_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,896 :: 		asm CLRWDT;
	CLRWDT
;main.c,897 :: 		led_wr_str(3, 6, swr_str, 6);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,898 :: 		asm CLRWDT;
	CLRWDT
;main.c,899 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup489:
	DECFSZ     R13, 1
	GOTO       L_user_setup489
	DECFSZ     R12, 1
	GOTO       L_user_setup489
	DECFSZ     R11, 1
	GOTO       L_user_setup489
;main.c,901 :: 		}
	GOTO       L_user_setup490
L_user_setup488:
;main.c,902 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup491
;main.c,903 :: 		led_wr_str(0, 1, "Max PWR", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr102_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr102_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,904 :: 		led_wr_str(1, 1, SWR_str, 6);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,905 :: 		asm CLRWDT;
	CLRWDT
;main.c,906 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup492:
	DECFSZ     R13, 1
	GOTO       L_user_setup492
	DECFSZ     R12, 1
	GOTO       L_user_setup492
	DECFSZ     R11, 1
	GOTO       L_user_setup492
;main.c,907 :: 		}
L_user_setup491:
L_user_setup490:
;main.c,908 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup493
;main.c,909 :: 		asm CLRWDT;
	CLRWDT
;main.c,910 :: 		if(max_for_start < 900) {
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup764
	MOVLW      132
	SUBWF      main_max_for_start+0, 0
L__user_setup764:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup494
;main.c,911 :: 		max_for_start = max_for_start + 100;
	MOVLW      100
	ADDWF      main_max_for_start+0, 1
	MOVLW      0
	ADDWFC     main_max_for_start+1, 1
;main.c,912 :: 		}
L_user_setup494:
;main.c,913 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup495:
	DECFSZ     R13, 1
	GOTO       L_user_setup495
	DECFSZ     R12, 1
	GOTO       L_user_setup495
;main.c,914 :: 		asm CLRWDT;
	CLRWDT
;main.c,915 :: 		} // end of BYP button
L_user_setup493:
;main.c,916 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup496
;main.c,917 :: 		asm CLRWDT;
	CLRWDT
;main.c,918 :: 		if(max_for_start > 0) {
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup765
	MOVF       main_max_for_start+0, 0
	SUBLW      0
L__user_setup765:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup497
;main.c,919 :: 		max_for_start = max_for_start - 100;
	MOVLW      100
	SUBWF      main_max_for_start+0, 1
	MOVLW      0
	SUBWFB     main_max_for_start+1, 1
;main.c,920 :: 		}
L_user_setup497:
;main.c,921 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup498:
	DECFSZ     R13, 1
	GOTO       L_user_setup498
	DECFSZ     R12, 1
	GOTO       L_user_setup498
;main.c,922 :: 		asm CLRWDT;
	CLRWDT
;main.c,923 :: 		}
L_user_setup496:
;main.c,924 :: 		} // end max PWR setup
L_user_setup487:
;main.c,925 :: 		if(usr_set == 5) {   // clear screen delay
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup766
	MOVLW      5
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup766:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup499
;main.c,926 :: 		inttostr(Dysp_delay, swr_str);
	MOVF       _Dysp_delay+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,927 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup500
;main.c,928 :: 		led_wr_str(0, 16, "ScrDel ", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr103_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr103_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,929 :: 		asm CLRWDT;
	CLRWDT
;main.c,930 :: 		led_wr_str(3, 6, swr_str, 7);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,931 :: 		asm CLRWDT;
	CLRWDT
;main.c,932 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup501:
	DECFSZ     R13, 1
	GOTO       L_user_setup501
	DECFSZ     R12, 1
	GOTO       L_user_setup501
	DECFSZ     R11, 1
	GOTO       L_user_setup501
;main.c,934 :: 		}
	GOTO       L_user_setup502
L_user_setup500:
;main.c,935 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup503
;main.c,936 :: 		led_wr_str(0, 1, "ScrDel ", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr104_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr104_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,937 :: 		led_wr_str(1, 1, SWR_str, 6);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,938 :: 		asm CLRWDT;
	CLRWDT
;main.c,939 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup504:
	DECFSZ     R13, 1
	GOTO       L_user_setup504
	DECFSZ     R12, 1
	GOTO       L_user_setup504
	DECFSZ     R11, 1
	GOTO       L_user_setup504
;main.c,940 :: 		}
L_user_setup503:
L_user_setup502:
;main.c,941 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup505
;main.c,942 :: 		asm CLRWDT;
	CLRWDT
;main.c,943 :: 		if(Dysp_delay < 90) {
	MOVLW      90
	SUBWF      _Dysp_delay+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup506
;main.c,944 :: 		Dysp_delay = Dysp_delay + 10;
	MOVLW      10
	ADDWF      _Dysp_delay+0, 1
;main.c,945 :: 		}
L_user_setup506:
;main.c,946 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup507:
	DECFSZ     R13, 1
	GOTO       L_user_setup507
	DECFSZ     R12, 1
	GOTO       L_user_setup507
;main.c,947 :: 		asm CLRWDT;
	CLRWDT
;main.c,948 :: 		} // end of BYP button
L_user_setup505:
;main.c,949 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup508
;main.c,950 :: 		asm CLRWDT;
	CLRWDT
;main.c,951 :: 		if(Dysp_delay > 0) {
	MOVF       _Dysp_delay+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup509
;main.c,952 :: 		Dysp_delay = Dysp_delay - 10;
	MOVLW      10
	SUBWF      _Dysp_delay+0, 0
	MOVWF      R1
	MOVF       R1, 0
	MOVWF      _Dysp_delay+0
;main.c,953 :: 		if (Dysp_delay < 10)
	MOVLW      10
	SUBWF      R1, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup510
;main.c,954 :: 		Dysp_delay = 0;
	CLRF       _Dysp_delay+0
L_user_setup510:
;main.c,955 :: 		}
L_user_setup509:
;main.c,956 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup511:
	DECFSZ     R13, 1
	GOTO       L_user_setup511
	DECFSZ     R12, 1
	GOTO       L_user_setup511
;main.c,957 :: 		asm CLRWDT;
	CLRWDT
;main.c,958 :: 		}
L_user_setup508:
;main.c,959 :: 		} // end clear screen delay setup
L_user_setup499:
;main.c,960 :: 		if(usr_set == 4) {   // losses setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup767
	MOVLW      4
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup767:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup512
;main.c,961 :: 		inttostr(Fid_loss, swr_str);
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,962 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup513
;main.c,963 :: 		led_wr_str(0, 16, "Losses  ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr105_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr105_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,965 :: 		led_wr_str(3, 6, swr_str, 7);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,966 :: 		asm CLRWDT;
	CLRWDT
;main.c,967 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup514:
	DECFSZ     R13, 1
	GOTO       L_user_setup514
	DECFSZ     R12, 1
	GOTO       L_user_setup514
	DECFSZ     R11, 1
	GOTO       L_user_setup514
;main.c,969 :: 		}
	GOTO       L_user_setup515
L_user_setup513:
;main.c,970 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup516
;main.c,971 :: 		led_wr_str(0, 1, "Losses  ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr106_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr106_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,972 :: 		led_wr_str(1, 1, SWR_str, 6);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,973 :: 		asm CLRWDT;
	CLRWDT
;main.c,974 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup517:
	DECFSZ     R13, 1
	GOTO       L_user_setup517
	DECFSZ     R12, 1
	GOTO       L_user_setup517
	DECFSZ     R11, 1
	GOTO       L_user_setup517
;main.c,975 :: 		}
L_user_setup516:
L_user_setup515:
;main.c,976 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup518
;main.c,977 :: 		asm CLRWDT;
	CLRWDT
;main.c,978 :: 		if(Fid_loss < 99) {
	MOVLW      99
	SUBWF      _Fid_loss+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup519
;main.c,979 :: 		Fid_loss = Fid_loss + 1;
	INCF       _Fid_loss+0, 1
;main.c,980 :: 		}
L_user_setup519:
;main.c,981 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup520:
	DECFSZ     R13, 1
	GOTO       L_user_setup520
	DECFSZ     R12, 1
	GOTO       L_user_setup520
;main.c,982 :: 		asm CLRWDT;
	CLRWDT
;main.c,983 :: 		} // end of BYP button
L_user_setup518:
;main.c,984 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup521
;main.c,985 :: 		asm CLRWDT;
	CLRWDT
;main.c,986 :: 		if(Fid_loss > 0) {
	MOVF       _Fid_loss+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup522
;main.c,987 :: 		Fid_loss = Fid_loss - 1;
	DECF       _Fid_loss+0, 1
;main.c,988 :: 		}
L_user_setup522:
;main.c,989 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup523:
	DECFSZ     R13, 1
	GOTO       L_user_setup523
	DECFSZ     R12, 1
	GOTO       L_user_setup523
;main.c,990 :: 		asm CLRWDT;
	CLRWDT
;main.c,991 :: 		}
L_user_setup521:
;main.c,992 :: 		} // end losses setup
L_user_setup512:
;main.c,994 :: 		if(usr_set == 3) {   // loss mode
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup768
	MOVLW      3
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup768:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup524
;main.c,995 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup525
;main.c,996 :: 		led_wr_str(0, 16, "Loss ind", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr107_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr107_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,998 :: 		if (Loss_ind == 1)
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup526
;main.c,999 :: 		led_wr_str(3, 16, "   ON  ", 7);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr108_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr108_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_user_setup527
L_user_setup526:
;main.c,1001 :: 		led_wr_str(3, 16, "   OFF ", 7);
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr109_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr109_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_user_setup527:
;main.c,1002 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup528:
	DECFSZ     R13, 1
	GOTO       L_user_setup528
	DECFSZ     R12, 1
	GOTO       L_user_setup528
	DECFSZ     R11, 1
	GOTO       L_user_setup528
;main.c,1003 :: 		asm CLRWDT;
	CLRWDT
;main.c,1004 :: 		}
	GOTO       L_user_setup529
L_user_setup525:
;main.c,1005 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup530
;main.c,1006 :: 		led_wr_str(0, 1, "Loss ind", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr110_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr110_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,1007 :: 		if (Loss_ind == 1)
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup531
;main.c,1008 :: 		led_wr_str(1, 1, "   ON  ", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr111_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr111_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_user_setup532
L_user_setup531:
;main.c,1010 :: 		led_wr_str(1, 1, "   OFF ", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr112_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr112_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_user_setup532:
;main.c,1011 :: 		asm CLRWDT;
	CLRWDT
;main.c,1012 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_user_setup533:
	DECFSZ     R13, 1
	GOTO       L_user_setup533
	DECFSZ     R12, 1
	GOTO       L_user_setup533
	DECFSZ     R11, 1
	GOTO       L_user_setup533
;main.c,1013 :: 		}
L_user_setup530:
L_user_setup529:
;main.c,1014 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup534
;main.c,1015 :: 		asm CLRWDT;
	CLRWDT
;main.c,1016 :: 		if(Loss_ind == 0) {
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup535
;main.c,1017 :: 		Loss_ind = 1;
	MOVLW      1
	MOVWF      main_Loss_ind+0
;main.c,1018 :: 		}
L_user_setup535:
;main.c,1019 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup536:
	DECFSZ     R13, 1
	GOTO       L_user_setup536
	DECFSZ     R12, 1
	GOTO       L_user_setup536
;main.c,1020 :: 		asm CLRWDT;
	CLRWDT
;main.c,1021 :: 		} // end of BYP button
L_user_setup534:
;main.c,1022 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup537
;main.c,1023 :: 		asm CLRWDT;
	CLRWDT
;main.c,1024 :: 		if(Loss_ind == 1) {
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup538
;main.c,1025 :: 		Loss_ind = 0;
	CLRF       main_Loss_ind+0
;main.c,1026 :: 		}
L_user_setup538:
;main.c,1027 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup539:
	DECFSZ     R13, 1
	GOTO       L_user_setup539
	DECFSZ     R12, 1
	GOTO       L_user_setup539
;main.c,1028 :: 		asm CLRWDT;
	CLRWDT
;main.c,1029 :: 		}
L_user_setup537:
;main.c,1030 :: 		} // end lose mode setup
L_user_setup524:
;main.c,1032 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup540
;main.c,1033 :: 		Delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_user_setup541:
	DECFSZ     R13, 1
	GOTO       L_user_setup541
	DECFSZ     R12, 1
	GOTO       L_user_setup541
	DECFSZ     R11, 1
	GOTO       L_user_setup541
	NOP
;main.c,1034 :: 		asm CLRWDT;
	CLRWDT
;main.c,1035 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_user_setup542
;main.c,1036 :: 		usr_set ++;
	INCF       user_setup_usr_set_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       user_setup_usr_set_L0+1, 1
;main.c,1037 :: 		if (usr_set > 5)
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      user_setup_usr_set_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup769
	MOVF       user_setup_usr_set_L0+0, 0
	SUBLW      5
L__user_setup769:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup543
;main.c,1038 :: 		usr_set = 1;
	MOVLW      1
	MOVWF      user_setup_usr_set_L0+0
	MOVLW      0
	MOVWF      user_setup_usr_set_L0+1
L_user_setup543:
;main.c,1039 :: 		}
	GOTO       L_user_setup544
L_user_setup542:
;main.c,1041 :: 		asm CLRWDT;
	CLRWDT
;main.c,1042 :: 		usr_set = 0; // exit setup
	CLRF       user_setup_usr_set_L0+0
	CLRF       user_setup_usr_set_L0+1
;main.c,1043 :: 		}
L_user_setup544:
;main.c,1044 :: 		asm CLRWDT;
	CLRWDT
;main.c,1045 :: 		}  // END Tune btn
L_user_setup540:
;main.c,1047 :: 		}
	GOTO       L_user_setup473
L_user_setup474:
;main.c,1049 :: 		EEPROM_Write(4, dec2bcd(Auto_delta / 10));
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _Auto_delta+0, 0
	MOVWF      R0
	MOVF       _Auto_delta+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      4
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,1050 :: 		EEPROM_Write(6, dec2bcd(max_for_start / 10));
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       main_max_for_start+0, 0
	MOVWF      R0
	MOVF       main_max_for_start+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      6
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,1051 :: 		EEPROM_Write(50, dec2bcd(Dysp_delay));
	MOVF       _Dysp_delay+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,1052 :: 		EEPROM_Write(0x34, dec2bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,1053 :: 		EEPROM_Write(0x33, dec2bcd(Loss_ind));
	MOVF       main_Loss_ind+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      51
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,1054 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,1056 :: 		asm CLRWDT;
	CLRWDT
;main.c,1057 :: 		lcd_prep_short = 1;
	MOVLW      1
	MOVWF      _lcd_prep_short+0
;main.c,1059 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,1060 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_user_setup545:
	DECFSZ     R13, 1
	GOTO       L_user_setup545
	DECFSZ     R12, 1
	GOTO       L_user_setup545
	DECFSZ     R11, 1
	GOTO       L_user_setup545
	NOP
	NOP
;main.c,1061 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,1062 :: 		return;
;main.c,1063 :: 		}
L_end_user_setup:
	RETURN
; end of _user_setup


_correction:

;main.h,41 :: 		int correction(int input) {
;main.h,42 :: 		input *= 3; // Devider compensation
	MOVF       FARG_correction_input+0, 0
	MOVWF      R0
	MOVF       FARG_correction_input+1, 0
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
;main.h,44 :: 		if(input <= 80) return 0;
	MOVLW      128
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction528
	MOVF       R0, 0
	SUBLW      80
L__correction528:
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
	GOTO       L__correction529
	MOVF       FARG_correction_input+0, 0
	SUBLW      171
L__correction529:
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
	GOTO       L__correction530
	MOVF       FARG_correction_input+0, 0
	SUBLW      72
L__correction530:
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
	GOTO       L__correction531
	MOVF       FARG_correction_input+0, 0
	SUBLW      70
L__correction531:
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
	GOTO       L__correction532
	MOVF       FARG_correction_input+0, 0
	SUBLW      52
L__correction532:
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
	GOTO       L__correction533
	MOVF       FARG_correction_input+0, 0
	SUBLW      76
L__correction533:
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
	GOTO       L__correction534
	MOVF       FARG_correction_input+0, 0
	SUBLW      133
L__correction534:
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
	GOTO       L__correction535
	MOVF       FARG_correction_input+0, 0
	SUBLW      250
L__correction535:
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
	GOTO       L__correction536
	MOVF       FARG_correction_input+0, 0
	SUBLW      15
L__correction536:
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
	GOTO       L__correction537
	MOVF       FARG_correction_input+0, 0
	SUBLW      230
L__correction537:
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
	GOTO       L__correction538
	MOVF       FARG_correction_input+0, 0
	SUBLW      234
L__correction538:
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
	GOTO       L__correction539
	MOVF       FARG_correction_input+0, 0
	SUBLW      54
L__correction539:
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
	GOTO       L__correction540
	MOVF       FARG_correction_input+0, 0
	SUBLW      4
L__correction540:
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
;main.h,60 :: 		return input;
	MOVF       FARG_correction_input+0, 0
	MOVWF      R0
	MOVF       FARG_correction_input+1, 0
	MOVWF      R1
;main.h,61 :: 		}
L_end_correction:
	RETURN
; end of _correction

_get_reverse:

;main.h,65 :: 		int get_reverse() {
;main.h,67 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,68 :: 		while(FVRCON.B6 == 0);
L_get_reverse25:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse26
	GOTO       L_get_reverse25
L_get_reverse26:
;main.h,69 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,70 :: 		if(Reverse <= 1000) return Reverse;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse542
	MOVF       R0, 0
	SUBLW      232
L__get_reverse542:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse27
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_reverse
L_get_reverse27:
;main.h,71 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,72 :: 		while(FVRCON.B6 == 0);
L_get_reverse28:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse29
	GOTO       L_get_reverse28
L_get_reverse29:
;main.h,73 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,74 :: 		if(Reverse <= 1000) return Reverse * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse543
	MOVF       R0, 0
	SUBLW      232
L__get_reverse543:
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
;main.h,75 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,76 :: 		while(FVRCON.B6 == 0);
L_get_reverse31:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse32
	GOTO       L_get_reverse31
L_get_reverse32:
;main.h,77 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,78 :: 		return Reverse * 4;
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
;main.h,79 :: 		}
L_end_get_reverse:
	RETURN
; end of _get_reverse

_get_forward:

;main.h,82 :: 		int get_forward() {
;main.h,84 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,85 :: 		while(FVRCON.B6 == 0);
L_get_forward33:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward34
	GOTO       L_get_forward33
L_get_forward34:
;main.h,86 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,87 :: 		if(Forward <= 1000) return Forward;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward545
	MOVF       R0, 0
	SUBLW      232
L__get_forward545:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward35
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	GOTO       L_end_get_forward
L_get_forward35:
;main.h,88 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,89 :: 		while(FVRCON.B6 == 0);
L_get_forward36:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward37
	GOTO       L_get_forward36
L_get_forward37:
;main.h,90 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,91 :: 		if(Forward <= 1000) return Forward * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward546
	MOVF       R0, 0
	SUBLW      232
L__get_forward546:
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
;main.h,92 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,93 :: 		while(FVRCON.B6 == 0);
L_get_forward39:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward40
	GOTO       L_get_forward39
L_get_forward40:
;main.h,94 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,95 :: 		if(Forward == 1024) Overload = 1;
	MOVF       R1, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward547
	MOVLW      0
	XORWF      R0, 0
L__get_forward547:
	BTFSS      STATUS+0, 2
	GOTO       L_get_forward41
	MOVLW      1
	MOVWF      main22_Overload+0
	GOTO       L_get_forward42
L_get_forward41:
;main.h,96 :: 		else Overload = 0;
	CLRF       main22_Overload+0
L_get_forward42:
;main.h,97 :: 		return Forward * 4;
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	LSLF       R0, 1
	RLF        R1, 1
;main.h,98 :: 		}
L_end_get_forward:
	RETURN
; end of _get_forward

_get_pwr:

;main.h,100 :: 		void get_pwr() {
;main.h,103 :: 		asm CLRWDT;
	CLRWDT
;main.h,105 :: 		Forward = get_forward();
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
;main.h,106 :: 		Reverse = get_reverse();
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
;main.h,107 :: 		if(D_correction==1) p = correction(Forward);
	MOVF       main22_D_correction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr43
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      FARG_correction_input+0
	MOVF       get_pwr_Forward_L0+1, 0
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
;main.h,108 :: 		else p = Forward;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R3
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
;main.h,110 :: 		if(Reverse >= Forward)
	MOVLW      128
	XORWF      get_pwr_Reverse_L0+3, 0
	MOVWF      R0
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr549
	MOVF       get_pwr_Forward_L0+2, 0
	SUBWF      get_pwr_Reverse_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr549
	MOVF       get_pwr_Forward_L0+1, 0
	SUBWF      get_pwr_Reverse_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr549
	MOVF       get_pwr_Forward_L0+0, 0
	SUBWF      get_pwr_Reverse_L0+0, 0
L__get_pwr549:
	BTFSS      STATUS+0, 0
	GOTO       L_get_pwr45
;main.h,111 :: 		Forward = 999;
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
	GOTO       L_get_pwr46
L_get_pwr45:
;main.h,113 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
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
;main.h,114 :: 		if(Forward>999) Forward = 999;
	MOVLW      128
	MOVWF      R4
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R4, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr550
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr550
	MOVF       R1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr550
	MOVF       R0, 0
	SUBLW      231
L__get_pwr550:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr47
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
L_get_pwr47:
;main.h,115 :: 		}
L_get_pwr46:
;main.h,117 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
	MOVF       main22_K_Mult+0, 0
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
;main.h,118 :: 		p = p / 1.414;
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
;main.h,119 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
	MOVF       main22_P_High+0, 0
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
;main.h,120 :: 		else p = p * p / 5;
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
;main.h,121 :: 		p = p + 0.5;    // rounding to 0.1 W
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
;main.h,123 :: 		PWR = p;   // 0 - 1510 (151.0 Watts)
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _PWR+0
	MOVF       R1, 0
	MOVWF      _PWR+1
;main.h,124 :: 		if(PWR<10) SWR = 1;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr551
	MOVLW      10
	SUBWF      R0, 0
L__get_pwr551:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr50
	MOVLW      1
	MOVWF      _SWR+0
	MOVLW      0
	MOVWF      _SWR+1
	GOTO       L_get_pwr51
L_get_pwr50:
;main.h,125 :: 		else if(Forward<100) SWR = 999;
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr552
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr552
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr552
	MOVLW      100
	SUBWF      get_pwr_Forward_L0+0, 0
L__get_pwr552:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr52
	MOVLW      231
	MOVWF      _SWR+0
	MOVLW      3
	MOVWF      _SWR+1
	GOTO       L_get_pwr53
L_get_pwr52:
;main.h,126 :: 		else SWR = Forward;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      _SWR+0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      _SWR+1
L_get_pwr53:
L_get_pwr51:
;main.h,127 :: 		return;
;main.h,128 :: 		}
L_end_get_pwr:
	RETURN
; end of _get_pwr

_get_swr:

;main.h,130 :: 		void get_swr() {
;main.h,131 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,132 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr54
;main.h,133 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,134 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr554
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr554:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr55
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr55:
;main.h,135 :: 		}
	GOTO       L_get_swr56
L_get_swr54:
;main.h,137 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,138 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,139 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,140 :: 		}
L_get_swr56:
;main.h,141 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr57:
	MOVLW      128
	XORWF      _PWR+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      main22_min_for_start+1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr555
	MOVF       main22_min_for_start+0, 0
	SUBWF      _PWR+0, 0
L__get_swr555:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R2
	MOVLW      128
	XORWF      main22_max_for_start+1, 0
	MOVWF      R1
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr556
	MOVF       _PWR+0, 0
	SUBWF      main22_max_for_start+0, 0
L__get_swr556:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main22_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr557
	MOVF       main22_max_for_start+0, 0
	SUBLW      0
L__get_swr557:
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
;main.h,142 :: 		asm CLRWDT;
	CLRWDT
;main.h,143 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,144 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr59
;main.h,145 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,146 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr558
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr558:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr60
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr60:
;main.h,147 :: 		}
	GOTO       L_get_swr61
L_get_swr59:
;main.h,149 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,150 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,151 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,152 :: 		}
L_get_swr61:
;main.h,154 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
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
;main.h,155 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
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
;main.h,156 :: 		show_reset();
	CALL       _show_reset+0
;main.h,157 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.h,158 :: 		return;
	GOTO       L_end_get_swr
;main.h,159 :: 		}
L_get_swr63:
;main.h,160 :: 		} //  good power
	GOTO       L_get_swr57
L_get_swr58:
;main.h,161 :: 		return;
;main.h,162 :: 		}
L_end_get_swr:
	RETURN
; end of _get_swr

_set_ind:

;main.h,164 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,165 :: 		if(L_invert == 0) {
	MOVF       main22_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_ind64
;main.h,166 :: 		Ind_005 = Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind560
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind561
L__set_ind560:
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind561:
;main.h,167 :: 		Ind_011 = Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind562
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind563
L__set_ind562:
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind563:
;main.h,168 :: 		Ind_022 = Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind564
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind565
L__set_ind564:
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind565:
;main.h,169 :: 		Ind_045 = Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind566
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind567
L__set_ind566:
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind567:
;main.h,170 :: 		Ind_1   = Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind568
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind569
L__set_ind568:
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind569:
;main.h,171 :: 		Ind_22  = Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind570
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind571
L__set_ind570:
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind571:
;main.h,172 :: 		Ind_45  = Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind572
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind573
L__set_ind572:
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind573:
;main.h,174 :: 		}
	GOTO       L_set_ind65
L_set_ind64:
;main.h,176 :: 		Ind_005 = ~Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind574
	BSF        LATB3_bit+0, BitPos(LATB3_bit+0)
	GOTO       L__set_ind575
L__set_ind574:
	BCF        LATB3_bit+0, BitPos(LATB3_bit+0)
L__set_ind575:
;main.h,177 :: 		Ind_011 = ~Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind576
	BSF        LATA2_bit+0, BitPos(LATA2_bit+0)
	GOTO       L__set_ind577
L__set_ind576:
	BCF        LATA2_bit+0, BitPos(LATA2_bit+0)
L__set_ind577:
;main.h,178 :: 		Ind_022 = ~Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind578
	BSF        LATB4_bit+0, BitPos(LATB4_bit+0)
	GOTO       L__set_ind579
L__set_ind578:
	BCF        LATB4_bit+0, BitPos(LATB4_bit+0)
L__set_ind579:
;main.h,179 :: 		Ind_045 = ~Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind580
	BSF        LATA3_bit+0, BitPos(LATA3_bit+0)
	GOTO       L__set_ind581
L__set_ind580:
	BCF        LATA3_bit+0, BitPos(LATA3_bit+0)
L__set_ind581:
;main.h,180 :: 		Ind_1   = ~Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind582
	BSF        LATB5_bit+0, BitPos(LATB5_bit+0)
	GOTO       L__set_ind583
L__set_ind582:
	BCF        LATB5_bit+0, BitPos(LATB5_bit+0)
L__set_ind583:
;main.h,181 :: 		Ind_22  = ~Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind584
	BSF        LATA5_bit+0, BitPos(LATA5_bit+0)
	GOTO       L__set_ind585
L__set_ind584:
	BCF        LATA5_bit+0, BitPos(LATA5_bit+0)
L__set_ind585:
;main.h,182 :: 		Ind_45  = ~Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind586
	BSF        LATA4_bit+0, BitPos(LATA4_bit+0)
	GOTO       L__set_ind587
L__set_ind586:
	BCF        LATA4_bit+0, BitPos(LATA4_bit+0)
L__set_ind587:
;main.h,184 :: 		}
L_set_ind65:
;main.h,185 :: 		Vdelay_ms(Rel_Del);
	MOVF       main22_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main22_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,186 :: 		}
L_end_set_ind:
	RETURN
; end of _set_ind

_set_cap:

;main.h,188 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,189 :: 		Cap_10  =  Cap.B0;
	BTFSC      FARG_set_cap_Cap+0, 0
	GOTO       L__set_cap589
	BCF        LATC7_bit+0, BitPos(LATC7_bit+0)
	GOTO       L__set_cap590
L__set_cap589:
	BSF        LATC7_bit+0, BitPos(LATC7_bit+0)
L__set_cap590:
;main.h,190 :: 		Cap_22  =  Cap.B1;
	BTFSC      FARG_set_cap_Cap+0, 1
	GOTO       L__set_cap591
	BCF        LATC3_bit+0, BitPos(LATC3_bit+0)
	GOTO       L__set_cap592
L__set_cap591:
	BSF        LATC3_bit+0, BitPos(LATC3_bit+0)
L__set_cap592:
;main.h,191 :: 		Cap_47  =  Cap.B2;
	BTFSC      FARG_set_cap_Cap+0, 2
	GOTO       L__set_cap593
	BCF        LATC6_bit+0, BitPos(LATC6_bit+0)
	GOTO       L__set_cap594
L__set_cap593:
	BSF        LATC6_bit+0, BitPos(LATC6_bit+0)
L__set_cap594:
;main.h,192 :: 		Cap_100 =  Cap.B3;
	BTFSC      FARG_set_cap_Cap+0, 3
	GOTO       L__set_cap595
	BCF        LATC2_bit+0, BitPos(LATC2_bit+0)
	GOTO       L__set_cap596
L__set_cap595:
	BSF        LATC2_bit+0, BitPos(LATC2_bit+0)
L__set_cap596:
;main.h,193 :: 		Cap_220 =  Cap.B4;
	BTFSC      FARG_set_cap_Cap+0, 4
	GOTO       L__set_cap597
	BCF        LATC5_bit+0, BitPos(LATC5_bit+0)
	GOTO       L__set_cap598
L__set_cap597:
	BSF        LATC5_bit+0, BitPos(LATC5_bit+0)
L__set_cap598:
;main.h,194 :: 		Cap_470 =  Cap.B5;
	BTFSC      FARG_set_cap_Cap+0, 5
	GOTO       L__set_cap599
	BCF        LATC1_bit+0, BitPos(LATC1_bit+0)
	GOTO       L__set_cap600
L__set_cap599:
	BSF        LATC1_bit+0, BitPos(LATC1_bit+0)
L__set_cap600:
;main.h,195 :: 		Cap_1000 =  Cap.B6;
	BTFSC      FARG_set_cap_Cap+0, 6
	GOTO       L__set_cap601
	BCF        LATC4_bit+0, BitPos(LATC4_bit+0)
	GOTO       L__set_cap602
L__set_cap601:
	BSF        LATC4_bit+0, BitPos(LATC4_bit+0)
L__set_cap602:
;main.h,197 :: 		Vdelay_ms(Rel_Del);
	MOVF       main22_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main22_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,198 :: 		}
L_end_set_cap:
	RETURN
; end of _set_cap

_set_sw:

;main.h,200 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,201 :: 		Cap_sw = SW;
	BTFSC      FARG_set_sw_SW+0, 0
	GOTO       L__set_sw604
	BCF        LATC0_bit+0, BitPos(LATC0_bit+0)
	GOTO       L__set_sw605
L__set_sw604:
	BSF        LATC0_bit+0, BitPos(LATC0_bit+0)
L__set_sw605:
;main.h,202 :: 		Vdelay_ms(Rel_Del);
	MOVF       main22_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main22_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,203 :: 		}
L_end_set_sw:
	RETURN
; end of _set_sw

_atu_reset:

;main.h,205 :: 		void atu_reset() {
;main.h,206 :: 		ind = 0;
	CLRF       main22_ind+0
;main.h,207 :: 		cap = 0;
	CLRF       main22_cap+0
;main.h,208 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,209 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,210 :: 		Vdelay_ms(Rel_Del);
	MOVF       main22_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main22_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,211 :: 		}
L_end_atu_reset:
	RETURN
; end of _atu_reset

_coarse_cap:

;main.h,214 :: 		void coarse_cap() {
;main.h,215 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_cap_step_L0+0
;main.h,219 :: 		cap = 0;
	CLRF       main22_cap+0
;main.h,220 :: 		set_cap(cap);
	CLRF       FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,221 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main22_step_cap+0
;main.h,222 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap608
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap608:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap66
	GOTO       L_end_coarse_cap
L_coarse_cap66:
;main.h,223 :: 		min_swr = SWR + SWR/20;
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
;main.h,224 :: 		for(count=step; count<=31;) {
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      coarse_cap_count_L0+0
L_coarse_cap67:
	MOVF       coarse_cap_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_cap68
;main.h,225 :: 		set_cap(count*C_mult);
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main22_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,226 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap609
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap609:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap70
	GOTO       L_end_coarse_cap
L_coarse_cap70:
;main.h,227 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap610
	MOVF       coarse_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_cap610:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap71
;main.h,228 :: 		min_swr = SWR + SWR/20;
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
;main.h,229 :: 		cap = count*C_mult;
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main22_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main22_cap+0
;main.h,230 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main22_step_cap+0
;main.h,231 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap611
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_cap611:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap72
	GOTO       L_coarse_cap68
L_coarse_cap72:
;main.h,232 :: 		count +=step;
	MOVF       coarse_cap_step_L0+0, 0
	ADDWF      coarse_cap_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_cap_count_L0+0
;main.h,233 :: 		if(C_linear==0 & count==9) count = 8;
	MOVF       main22_C_linear+0, 0
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
;main.h,234 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main22_C_linear+0, 0
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
;main.h,235 :: 		}
	GOTO       L_coarse_cap76
L_coarse_cap71:
;main.h,236 :: 		else break;
	GOTO       L_coarse_cap68
L_coarse_cap76:
;main.h,237 :: 		}
	GOTO       L_coarse_cap67
L_coarse_cap68:
;main.h,238 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,239 :: 		return;
;main.h,240 :: 		}
L_end_coarse_cap:
	RETURN
; end of _coarse_cap

_coarse_tune:

;main.h,242 :: 		void coarse_tune() {
;main.h,243 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_tune_step_L0+0
;main.h,248 :: 		mem_cap = 0;
	CLRF       coarse_tune_mem_cap_L0+0
;main.h,249 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main22_step_ind+0
;main.h,250 :: 		mem_step_cap = 3;
	MOVLW      3
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,251 :: 		min_swr = SWR + SWR/20;
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
;main.h,252 :: 		for(count=0; count<=31;) {
	CLRF       coarse_tune_count_L0+0
L_coarse_tune77:
	MOVF       coarse_tune_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_tune78
;main.h,253 :: 		set_ind(count*L_mult);
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main22_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,254 :: 		coarse_cap();
	CALL       _coarse_cap+0
;main.h,255 :: 		get_swr();  if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune613
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_tune613:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_tune80
	GOTO       L_end_coarse_tune
L_coarse_tune80:
;main.h,256 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_tune_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune614
	MOVF       coarse_tune_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_tune614:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune81
;main.h,257 :: 		min_swr = SWR + SWR/20;
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
;main.h,258 :: 		ind = count*L_mult;
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main22_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main22_ind+0
;main.h,259 :: 		mem_cap = cap;
	MOVF       main22_cap+0, 0
	MOVWF      coarse_tune_mem_cap_L0+0
;main.h,260 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main22_step_ind+0
;main.h,261 :: 		mem_step_cap = step_cap;
	MOVF       main22_step_cap+0, 0
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,262 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune615
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_tune615:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune82
	GOTO       L_coarse_tune78
L_coarse_tune82:
;main.h,263 :: 		count +=step;
	MOVF       coarse_tune_step_L0+0, 0
	ADDWF      coarse_tune_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_tune_count_L0+0
;main.h,264 :: 		if(L_linear==0 & count==9) count = 8;
	MOVF       main22_L_linear+0, 0
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
;main.h,265 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main22_L_linear+0, 0
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
;main.h,266 :: 		}
	GOTO       L_coarse_tune86
L_coarse_tune81:
;main.h,267 :: 		else break;
	GOTO       L_coarse_tune78
L_coarse_tune86:
;main.h,268 :: 		}
	GOTO       L_coarse_tune77
L_coarse_tune78:
;main.h,269 :: 		cap = mem_cap;
	MOVF       coarse_tune_mem_cap_L0+0, 0
	MOVWF      main22_cap+0
;main.h,270 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,271 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,272 :: 		step_cap = mem_step_cap;
	MOVF       coarse_tune_mem_step_cap_L0+0, 0
	MOVWF      main22_step_cap+0
;main.h,273 :: 		Delay_ms(10);
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
;main.h,274 :: 		return;
;main.h,275 :: 		}
L_end_coarse_tune:
	RETURN
; end of _coarse_tune

_sharp_cap:

;main.h,277 :: 		void sharp_cap() {
;main.h,280 :: 		range = step_cap*C_mult;
	MOVF       main22_step_cap+0, 0
	MOVWF      R0
	MOVF       main22_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_cap_range_L0+0
;main.h,282 :: 		max_range = cap + range;
	MOVF       R0, 0
	ADDWF      main22_cap+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_cap_max_range_L0+0
;main.h,283 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main22_C_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_cap617:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap618
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_cap617
L__sharp_cap618:
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
	GOTO       L__sharp_cap619
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_cap619:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap88
	MOVLW      5
	MOVWF      R0
	MOVF       main22_C_mult+0, 0
	MOVWF      sharp_cap_max_range_L0+0
	MOVF       R0, 0
L__sharp_cap620:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap621
	LSLF       sharp_cap_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_cap620
L__sharp_cap621:
	DECF       sharp_cap_max_range_L0+0, 1
L_sharp_cap88:
;main.h,284 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF       main22_cap+0, 0
	SUBWF      sharp_cap_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap89
	MOVF       sharp_cap_range_L0+0, 0
	SUBWF      main22_cap+0, 0
	MOVWF      sharp_cap_min_range_L0+0
	GOTO       L_sharp_cap90
L_sharp_cap89:
	CLRF       sharp_cap_min_range_L0+0
L_sharp_cap90:
;main.h,285 :: 		cap = min_range;
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      main22_cap+0
;main.h,286 :: 		set_cap(cap);
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,287 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap622
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap622:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap91
	GOTO       L_end_sharp_cap
L_sharp_cap91:
;main.h,288 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,289 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main22_C_mult+0, 0
	ADDWF      sharp_cap_min_range_L0+0, 0
	MOVWF      sharp_cap_count_L0+0
L_sharp_cap92:
	MOVF       sharp_cap_count_L0+0, 0
	SUBWF      sharp_cap_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap93
;main.h,290 :: 		set_cap(count);
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,291 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap623
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap623:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap95
	GOTO       L_end_sharp_cap
L_sharp_cap95:
;main.h,292 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap624
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap624:
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
;main.h,293 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap625
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap625:
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
;main.h,294 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap626
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap626:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap100
;main.h,295 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,296 :: 		cap = count;
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      main22_cap+0
;main.h,297 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap627
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_cap627:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap101
	GOTO       L_sharp_cap93
L_sharp_cap101:
;main.h,298 :: 		}
	GOTO       L_sharp_cap102
L_sharp_cap100:
;main.h,299 :: 		else break;
	GOTO       L_sharp_cap93
L_sharp_cap102:
;main.h,289 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main22_C_mult+0, 0
	ADDWF      sharp_cap_count_L0+0, 1
;main.h,300 :: 		}
	GOTO       L_sharp_cap92
L_sharp_cap93:
;main.h,301 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,302 :: 		return;
;main.h,303 :: 		}
L_end_sharp_cap:
	RETURN
; end of _sharp_cap

_sharp_ind:

;main.h,305 :: 		void sharp_ind() {
;main.h,308 :: 		range = step_ind * L_mult;
	MOVF       main22_step_ind+0, 0
	MOVWF      R0
	MOVF       main22_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_ind_range_L0+0
;main.h,310 :: 		max_range = ind + range;
	MOVF       R0, 0
	ADDWF      main22_ind+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_ind_max_range_L0+0
;main.h,311 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main22_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_ind629:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind630
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_ind629
L__sharp_ind630:
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
	GOTO       L__sharp_ind631
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_ind631:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind103
	MOVLW      5
	MOVWF      R0
	MOVF       main22_L_mult+0, 0
	MOVWF      sharp_ind_max_range_L0+0
	MOVF       R0, 0
L__sharp_ind632:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind633
	LSLF       sharp_ind_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_ind632
L__sharp_ind633:
	DECF       sharp_ind_max_range_L0+0, 1
L_sharp_ind103:
;main.h,312 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF       main22_ind+0, 0
	SUBWF      sharp_ind_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind104
	MOVF       sharp_ind_range_L0+0, 0
	SUBWF      main22_ind+0, 0
	MOVWF      sharp_ind_min_range_L0+0
	GOTO       L_sharp_ind105
L_sharp_ind104:
	CLRF       sharp_ind_min_range_L0+0
L_sharp_ind105:
;main.h,313 :: 		ind = min_range;
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      main22_ind+0
;main.h,314 :: 		set_ind(ind);
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,315 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind634
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind634:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind106
	GOTO       L_end_sharp_ind
L_sharp_ind106:
;main.h,316 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,317 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main22_L_mult+0, 0
	ADDWF      sharp_ind_min_range_L0+0, 0
	MOVWF      sharp_ind_count_L0+0
L_sharp_ind107:
	MOVF       sharp_ind_count_L0+0, 0
	SUBWF      sharp_ind_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind108
;main.h,318 :: 		set_ind(count);
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,319 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind635
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind635:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind110
	GOTO       L_end_sharp_ind
L_sharp_ind110:
;main.h,320 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind636
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind636:
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
;main.h,321 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind637
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind637:
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
;main.h,322 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind638
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind638:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind115
;main.h,323 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,324 :: 		ind = count;
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      main22_ind+0
;main.h,325 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind639
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_ind639:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind116
	GOTO       L_sharp_ind108
L_sharp_ind116:
;main.h,326 :: 		}
	GOTO       L_sharp_ind117
L_sharp_ind115:
;main.h,327 :: 		else break;
	GOTO       L_sharp_ind108
L_sharp_ind117:
;main.h,317 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main22_L_mult+0, 0
	ADDWF      sharp_ind_count_L0+0, 1
;main.h,328 :: 		}
	GOTO       L_sharp_ind107
L_sharp_ind108:
;main.h,329 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,330 :: 		return;
;main.h,331 :: 		}
L_end_sharp_ind:
	RETURN
; end of _sharp_ind

_sub_tune:

;main.h,334 :: 		void sub_tune () {
;main.h,337 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,338 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune641
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune641:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune118
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune118:
;main.h,339 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune642
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune642:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune119
	GOTO       L_end_sub_tune
L_sub_tune119:
;main.h,340 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune643
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune643:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune120
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune120:
;main.h,341 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune644
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune644:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune121
	GOTO       L_end_sub_tune
L_sub_tune121:
;main.h,342 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune645
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune645:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune122
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune122:
;main.h,343 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune646
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune646:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune123
	GOTO       L_end_sub_tune
L_sub_tune123:
;main.h,345 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R1
	MOVLW      128
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune647
	MOVLW      200
	SUBWF      _SWR+0, 0
L__sub_tune647:
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
	GOTO       L__sub_tune648
	MOVF       sub_tune_swr_mem_L0+0, 0
	SUBWF      _SWR+0, 0
L__sub_tune648:
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
	GOTO       L__sub_tune649
	MOVF       R1, 0
	SUBLW      100
L__sub_tune649:
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
;main.h,346 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,347 :: 		ind_mem = ind;
	MOVF       main22_ind+0, 0
	MOVWF      sub_tune_ind_mem_L0+0
	CLRF       sub_tune_ind_mem_L0+1
;main.h,348 :: 		cap_mem = cap;
	MOVF       main22_cap+0, 0
	MOVWF      sub_tune_cap_mem_L0+0
	CLRF       sub_tune_cap_mem_L0+1
;main.h,350 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune125
	CLRF       main22_SW+0
	GOTO       L_sub_tune126
L_sub_tune125:
	MOVLW      1
	MOVWF      main22_SW+0
L_sub_tune126:
;main.h,351 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,352 :: 		set_sw(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,353 :: 		Delay_ms(50);
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
;main.h,354 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune650
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune650:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune128
	GOTO       L_end_sub_tune
L_sub_tune128:
;main.h,356 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune651
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune651:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune129
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune129:
;main.h,357 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune652
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune652:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune130
	GOTO       L_end_sub_tune
L_sub_tune130:
;main.h,358 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune653
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune653:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune131
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune131:
;main.h,359 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune654
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune654:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune132
	GOTO       L_end_sub_tune
L_sub_tune132:
;main.h,360 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune655
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune655:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune133
	CALL       _atu_reset+0
	GOTO       L_end_sub_tune
L_sub_tune133:
;main.h,361 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune656
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune656:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune134
	GOTO       L_end_sub_tune
L_sub_tune134:
;main.h,363 :: 		if(SWR>swr_mem) {
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune657
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
L__sub_tune657:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune135
;main.h,364 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune136
	CLRF       main22_SW+0
	GOTO       L_sub_tune137
L_sub_tune136:
	MOVLW      1
	MOVWF      main22_SW+0
L_sub_tune137:
;main.h,365 :: 		set_sw(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,366 :: 		ind = ind_mem;
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      main22_ind+0
;main.h,367 :: 		cap = cap_mem;
	MOVF       sub_tune_cap_mem_L0+0, 0
	MOVWF      main22_cap+0
;main.h,368 :: 		set_ind(ind);
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,369 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,370 :: 		SWR = swr_mem;
	MOVF       sub_tune_swr_mem_L0+0, 0
	MOVWF      _SWR+0
	MOVF       sub_tune_swr_mem_L0+1, 0
	MOVWF      _SWR+1
;main.h,371 :: 		}
L_sub_tune135:
;main.h,373 :: 		asm CLRWDT;
	CLRWDT
;main.h,374 :: 		return;
;main.h,375 :: 		}
L_end_sub_tune:
	RETURN
; end of _sub_tune

_tune:

;main.h,379 :: 		void tune() {
;main.h,381 :: 		asm CLRWDT;
	CLRWDT
;main.h,383 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,384 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,386 :: 		rready = 0;
	CLRF       _rready+0
;main.h,387 :: 		get_swr();
	CALL       _get_swr+0
;main.h,388 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune659
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune659:
	BTFSC      STATUS+0, 0
	GOTO       L_tune138
	GOTO       L_end_tune
L_tune138:
;main.h,389 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,390 :: 		if(Loss_ind==0) lcd_ind();
	MOVF       main22_Loss_ind+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_tune139
	CALL       _lcd_ind+0
L_tune139:
;main.h,391 :: 		Delay_ms(50);
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
;main.h,392 :: 		get_swr();
	CALL       _get_swr+0
;main.h,393 :: 		swr_a = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       _SWR+1, 0
	MOVWF      _swr_a+1
;main.h,394 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune660
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune660:
	BTFSC      STATUS+0, 0
	GOTO       L_tune141
	GOTO       L_end_tune
L_tune141:
;main.h,395 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW      128
	MOVWF      R1
	MOVLW      128
	XORWF      main22_max_swr+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune661
	MOVF       main22_max_swr+0, 0
	SUBLW      110
L__tune661:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      main22_max_swr+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune662
	MOVF       _SWR+0, 0
	SUBWF      main22_max_swr+0, 0
L__tune662:
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
;main.h,397 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _sub_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune663
	MOVLW      0
	XORWF      _SWR+0, 0
L__tune663:
	BTFSS      STATUS+0, 2
	GOTO       L_tune143
	CALL       _atu_reset+0
	GOTO       L_end_tune
L_tune143:
;main.h,398 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune664
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune664:
	BTFSC      STATUS+0, 0
	GOTO       L_tune144
	GOTO       L_end_tune
L_tune144:
;main.h,399 :: 		if(C_q==5 & L_q==5) return;
	MOVF       main22_C_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main22_L_q+0, 0
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
;main.h,401 :: 		if(L_q>5) {
	MOVF       main22_L_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune146
;main.h,402 :: 		step_ind = L_mult;
	MOVF       main22_L_mult+0, 0
	MOVWF      main22_step_ind+0
;main.h,403 :: 		L_mult = 1;
	MOVLW      1
	MOVWF      main22_L_mult+0
;main.h,404 :: 		sharp_ind();
	CALL       _sharp_ind+0
;main.h,405 :: 		}
L_tune146:
;main.h,406 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune665
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune665:
	BTFSC      STATUS+0, 0
	GOTO       L_tune147
	GOTO       L_end_tune
L_tune147:
;main.h,407 :: 		if(C_q>5) {
	MOVF       main22_C_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune148
;main.h,408 :: 		step_cap = C_mult;  // = C_mult
	MOVF       main22_C_mult+0, 0
	MOVWF      main22_step_cap+0
;main.h,409 :: 		C_mult = 1;
	MOVLW      1
	MOVWF      main22_C_mult+0
;main.h,410 :: 		sharp_cap();
	CALL       _sharp_cap+0
;main.h,411 :: 		}
L_tune148:
;main.h,412 :: 		if(L_q==5)L_mult = 1;
	MOVF       main22_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune149
	MOVLW      1
	MOVWF      main22_L_mult+0
	GOTO       L_tune150
L_tune149:
;main.h,413 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main22_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune151
	MOVLW      2
	MOVWF      main22_L_mult+0
	GOTO       L_tune152
L_tune151:
;main.h,414 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main22_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune153
	MOVLW      4
	MOVWF      main22_L_mult+0
L_tune153:
L_tune152:
L_tune150:
;main.h,415 :: 		if(C_q==5) C_mult =1;
	MOVF       main22_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune154
	MOVLW      1
	MOVWF      main22_C_mult+0
	GOTO       L_tune155
L_tune154:
;main.h,416 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main22_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune156
	MOVLW      2
	MOVWF      main22_C_mult+0
	GOTO       L_tune157
L_tune156:
;main.h,417 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main22_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune158
	MOVLW      4
	MOVWF      main22_C_mult+0
L_tune158:
L_tune157:
L_tune155:
;main.h,418 :: 		asm CLRWDT;
	CLRWDT
;main.h,419 :: 		return;
;main.h,420 :: 		}
L_end_tune:
	RETURN
; end of _tune

_main:

;main22.c,32 :: 		void main() {
;main22.c,33 :: 		if(STATUS.B4==0) Restart = 1;
	BTFSC      STATUS+0, 4
	GOTO       L_main159
	MOVLW      1
	MOVWF      _Restart+0
L_main159:
;main22.c,34 :: 		pic_init();
	CALL       _pic_init+0
;main22.c,36 :: 		Delay_ms (100);
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
;main22.c,37 :: 		asm CLRWDT;
	CLRWDT
;main22.c,38 :: 		cells_init();
	CALL       _cells_init+0
;main22.c,39 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;main22.c,40 :: 		if(type==0) { // 2-colors led  reset
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main161
;main22.c,41 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main22.c,42 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main22.c,43 :: 		}
L_main161:
;main22.c,44 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,46 :: 		Delay_ms(200);
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
;main22.c,47 :: 		asm CLRWDT;
	CLRWDT
;main22.c,49 :: 		if(L_q==5)L_mult = 1;
	MOVF       main22_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main163
	MOVLW      1
	MOVWF      main22_L_mult+0
	GOTO       L_main164
L_main163:
;main22.c,50 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main22_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main165
	MOVLW      2
	MOVWF      main22_L_mult+0
	GOTO       L_main166
L_main165:
;main22.c,51 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main22_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main167
	MOVLW      4
	MOVWF      main22_L_mult+0
L_main167:
L_main166:
L_main164:
;main22.c,52 :: 		if(C_q==5) C_mult =1;
	MOVF       main22_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main168
	MOVLW      1
	MOVWF      main22_C_mult+0
	GOTO       L_main169
L_main168:
;main22.c,53 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main22_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main170
	MOVLW      2
	MOVWF      main22_C_mult+0
	GOTO       L_main171
L_main170:
;main22.c,54 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main22_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main172
	MOVLW      4
	MOVWF      main22_C_mult+0
L_main172:
L_main171:
L_main169:
;main22.c,56 :: 		led_init();
	CALL       _led_init+0
;main22.c,58 :: 		if(Test==0) {
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main173
;main22.c,59 :: 		cap = EEPROM_Read(255);
	MOVLW      255
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_cap+0
;main22.c,60 :: 		ind = EEPROM_Read(254);
	MOVLW      254
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_ind+0
;main22.c,61 :: 		SW = EEPROM_Read(253);
	MOVLW      253
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_SW+0
;main22.c,62 :: 		swr_a = EEPROM_Read(252) * 256;
	MOVLW      252
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _swr_a+1
	CLRF       _swr_a+0
;main22.c,63 :: 		swr_a += EEPROM_Read(251);
	MOVLW      251
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	ADDWF      _swr_a+0, 1
	MOVLW      0
	ADDWFC     _swr_a+1, 1
;main22.c,64 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main22.c,65 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main22.c,66 :: 		set_sw(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main22.c,67 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF       _Restart+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main174
	MOVLW      1
	MOVWF      _lcd_prep_short+0
L_main174:
;main22.c,68 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main22.c,69 :: 		}
L_main173:
;main22.c,71 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,77 :: 		while(1) {
L_main175:
;main22.c,78 :: 		asm CLRWDT;
	CLRWDT
;main22.c,79 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main22.c,81 :: 		if(Test==0) button_proc();
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main177
	CALL       _button_proc+0
	GOTO       L_main178
L_main177:
;main22.c,82 :: 		else button_proc_test();
	CALL       _button_proc_test+0
L_main178:
;main22.c,84 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW      0
	XORWF      _dysp_cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main667
	MOVLW      0
	XORWF      _dysp_cnt+0, 0
L__main667:
	BTFSC      STATUS+0, 2
	GOTO       L_main179
	MOVLW      1
	SUBWF      _dysp_cnt+0, 1
	MOVLW      0
	SUBWFB     _dysp_cnt+1, 1
	GOTO       L_main180
L_main179:
;main22.c,85 :: 		else if(Test==0 & Dysp_delay!=0) dysp_off();
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
;main22.c,89 :: 		}
	GOTO       L_main175
;main22.c,90 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_button_proc_test:

;main22.c,95 :: 		void button_proc_test(void) {
;main22.c,96 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
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
;main22.c,97 :: 		Delay_ms(250);
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
;main22.c,98 :: 		asm CLRWDT;
	CLRWDT
;main22.c,99 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_button_proc_test184
;main22.c,100 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF       main22_SW+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test185
	MOVLW      1
	MOVWF      main22_SW+0
	GOTO       L_button_proc_test186
L_button_proc_test185:
	CLRF       main22_SW+0
L_button_proc_test186:
;main22.c,101 :: 		set_sw(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main22.c,102 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,103 :: 		}
	GOTO       L_button_proc_test187
L_button_proc_test184:
;main22.c,105 :: 		if(L==1) L = 0; else L = 1;
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
;main22.c,106 :: 		if(L==1) {
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test190
;main22.c,107 :: 		if(type==4 |type==5)   // 128*64 OLED
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
;main22.c,108 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr1_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr1_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test192
L_button_proc_test191:
;main22.c,109 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test193
;main22.c,110 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr2_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr2_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test193:
L_button_proc_test192:
;main22.c,111 :: 		}
	GOTO       L_button_proc_test194
L_button_proc_test190:
;main22.c,114 :: 		if(type==4 |type==5)   // 128*64 OLED
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
;main22.c,115 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr3_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr3_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test196
L_button_proc_test195:
;main22.c,116 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test197
;main22.c,117 :: 		led_wr_str (0, 8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr4_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr4_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test197:
L_button_proc_test196:
;main22.c,118 :: 		}
L_button_proc_test194:
;main22.c,119 :: 		Delay_ms(1500);
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
;main22.c,120 :: 		asm CLRWDT;
	CLRWDT
;main22.c,121 :: 		if(PORTB.B0==0) {     // long press button
	BTFSC      PORTB+0, 0
	GOTO       L_button_proc_test199
;main22.c,122 :: 		Test = 0; // wery long press button
	CLRF       _Test+0
;main22.c,123 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
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
;main22.c,125 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,126 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,127 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,128 :: 		EEPROM_Write(252, swr_a/256);
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
;main22.c,129 :: 		EEPROM_Write(251, swr_a%256);
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
;main22.c,131 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
;main22.c,132 :: 		led_wr_str (2, 16, "AUTO    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr5_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr5_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,133 :: 		asm CLRWDT;
	CLRWDT
;main22.c,134 :: 		delay_ms(1000);
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
;main22.c,135 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr6_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr6_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,136 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
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
	MOVLW      ?lstr7_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr7_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test204
L_button_proc_test203:
;main22.c,137 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test205
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr8_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr8_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test206
L_button_proc_test205:
;main22.c,138 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr9_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr9_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test206:
L_button_proc_test204:
;main22.c,139 :: 		asm CLRWDT;
	CLRWDT
;main22.c,140 :: 		}
	GOTO       L_button_proc_test207
L_button_proc_test201:
;main22.c,141 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test208
;main22.c,142 :: 		led_wr_str (1, 0, "AUTO    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr10_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr10_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,143 :: 		asm CLRWDT;
	CLRWDT
;main22.c,144 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc_test209:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test209
	DECFSZ     R12, 1
	GOTO       L_button_proc_test209
	DECFSZ     R11, 1
	GOTO       L_button_proc_test209
	NOP
;main22.c,145 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr11_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr11_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,146 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test210
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr12_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr12_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test211
L_button_proc_test210:
;main22.c,147 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test212
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr13_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr13_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test213
L_button_proc_test212:
;main22.c,148 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr14_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr14_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test213:
L_button_proc_test211:
;main22.c,149 :: 		asm CLRWDT;
	CLRWDT
;main22.c,150 :: 		}
L_button_proc_test208:
L_button_proc_test207:
;main22.c,151 :: 		}
L_button_proc_test199:
;main22.c,152 :: 		}
L_button_proc_test187:
;main22.c,153 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT ;   }
L_button_proc_test214:
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
	GOTO       L_button_proc_test215
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc_test214
L_button_proc_test215:
;main22.c,154 :: 		}  // END Tune btn
L_button_proc_test182:
;main22.c,156 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_button_proc_test216
;main22.c,157 :: 		asm CLRWDT;
	CLRWDT
;main22.c,158 :: 		while(PORTB.B2==0) {
L_button_proc_test217:
	BTFSC      PORTB+0, 2
	GOTO       L_button_proc_test218
;main22.c,159 :: 		if(L & ind<32*L_mult-1) {
	MOVLW      5
	MOVWF      R2
	MOVF       main22_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test669:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test670
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test669
L__button_proc_test670:
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
	GOTO       L__button_proc_test671
	MOVF       R2, 0
	SUBWF      main22_ind+0, 0
L__button_proc_test671:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test219
;main22.c,160 :: 		ind ++;
	INCF       main22_ind+0, 1
;main22.c,161 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main22.c,162 :: 		}
	GOTO       L_button_proc_test220
L_button_proc_test219:
;main22.c,163 :: 		else if(!L & cap<32*L_mult-1) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R4
	MOVLW      5
	MOVWF      R2
	MOVF       main22_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test672:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test673
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test672
L__button_proc_test673:
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
	GOTO       L__button_proc_test674
	MOVF       R2, 0
	SUBWF      main22_cap+0, 0
L__button_proc_test674:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R4, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test221
;main22.c,164 :: 		cap ++;
	INCF       main22_cap+0, 1
;main22.c,165 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main22.c,166 :: 		}
L_button_proc_test221:
L_button_proc_test220:
;main22.c,167 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,168 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main22.c,169 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test222:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test222
	DECFSZ     R12, 1
	GOTO       L_button_proc_test222
;main22.c,170 :: 		asm CLRWDT;
	CLRWDT
;main22.c,171 :: 		}
	GOTO       L_button_proc_test217
L_button_proc_test218:
;main22.c,172 :: 		}
L_button_proc_test216:
;main22.c,175 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
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
	GOTO       L_button_proc_test223
;main22.c,176 :: 		asm CLRWDT;
	CLRWDT
;main22.c,177 :: 		while(PORTB.B1==0) {
L_button_proc_test224:
	BTFSC      PORTB+0, 1
	GOTO       L_button_proc_test225
;main22.c,178 :: 		if(L & ind>0) {
	MOVF       main22_ind+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test226
;main22.c,179 :: 		ind --;
	DECF       main22_ind+0, 1
;main22.c,180 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main22.c,181 :: 		}
	GOTO       L_button_proc_test227
L_button_proc_test226:
;main22.c,182 :: 		else if(!L & cap>0) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main22_cap+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test228
;main22.c,183 :: 		cap --;
	DECF       main22_cap+0, 1
;main22.c,184 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main22.c,185 :: 		}
L_button_proc_test228:
L_button_proc_test227:
;main22.c,186 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,187 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main22.c,188 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test229:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test229
	DECFSZ     R12, 1
	GOTO       L_button_proc_test229
;main22.c,189 :: 		asm CLRWDT;
	CLRWDT
;main22.c,190 :: 		}
	GOTO       L_button_proc_test224
L_button_proc_test225:
;main22.c,191 :: 		}
L_button_proc_test223:
;main22.c,192 :: 		return;
;main22.c,193 :: 		}
L_end_button_proc_test:
	RETURN
; end of _button_proc_test

_button_proc:

;main22.c,196 :: 		void button_proc(void) {
;main22.c,197 :: 		if(Button(&PORTB, 0, 50, 0) | Soft_tune){
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
	GOTO       L_button_proc230
;main22.c,198 :: 		dysp_on();
	CALL       _dysp_on+0
;main22.c,199 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,200 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc231:
	DECFSZ     R13, 1
	GOTO       L_button_proc231
	DECFSZ     R12, 1
	GOTO       L_button_proc231
	DECFSZ     R11, 1
	GOTO       L_button_proc231
	NOP
	NOP
;main22.c,201 :: 		asm CLRWDT;
	CLRWDT
;main22.c,202 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF       _Soft_tune+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	BTFSC      PORTB+0, 0
	GOTO       L__button_proc676
	BCF        3, 0
	GOTO       L__button_proc677
L__button_proc676:
	BSF        3, 0
L__button_proc677:
	CLRF       R0
	BTFSC      3, 0
	INCF       R0, 1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc232
;main22.c,203 :: 		show_reset();
	CALL       _show_reset+0
;main22.c,204 :: 		bypas =0;
	CLRF       _bypas+0
;main22.c,205 :: 		}
	GOTO       L_button_proc233
L_button_proc232:
;main22.c,207 :: 		p_Tx = 1;         //
	BSF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main22.c,208 :: 		n_Tx = 0;         // TX request
	BCF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main22.c,209 :: 		Delay_ms(250);    //
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc234:
	DECFSZ     R13, 1
	GOTO       L_button_proc234
	DECFSZ     R12, 1
	GOTO       L_button_proc234
	DECFSZ     R11, 1
	GOTO       L_button_proc234
	NOP
	NOP
;main22.c,210 :: 		btn_push();
	CALL       _btn_push+0
;main22.c,211 :: 		bypas = 0;
	CLRF       _bypas+0
;main22.c,212 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc235:
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
	GOTO       L_button_proc236
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc235
L_button_proc236:
;main22.c,213 :: 		Soft_tune = 0;
	CLRF       _Soft_tune+0
;main22.c,214 :: 		}
L_button_proc233:
;main22.c,215 :: 		}
L_button_proc230:
;main22.c,217 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_button_proc237
;main22.c,218 :: 		Delay_ms(450);
	MOVLW      10
	MOVWF      R11
	MOVLW      34
	MOVWF      R12
	MOVLW      161
	MOVWF      R13
L_button_proc238:
	DECFSZ     R13, 1
	GOTO       L_button_proc238
	DECFSZ     R12, 1
	GOTO       L_button_proc238
	DECFSZ     R11, 1
	GOTO       L_button_proc238
;main22.c,219 :: 		if(PORTB.B2==1) { // short press button
	BTFSS      PORTB+0, 2
	GOTO       L_button_proc239
;main22.c,220 :: 		dysp_on();
	CALL       _dysp_on+0
;main22.c,221 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,222 :: 		asm CLRWDT;
	CLRWDT
;main22.c,223 :: 		if(bypas == 0) {
	MOVF       _bypas+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc240
;main22.c,224 :: 		bypas = 1;
	MOVLW      1
	MOVWF      _bypas+0
;main22.c,225 :: 		cap_mem = cap;
	MOVF       main22_cap+0, 0
	MOVWF      _cap_mem+0
;main22.c,226 :: 		ind_mem = ind;
	MOVF       main22_ind+0, 0
	MOVWF      _ind_mem+0
;main22.c,227 :: 		SW_mem = SW;
	MOVF       main22_SW+0, 0
	MOVWF      _SW_mem+0
;main22.c,228 :: 		cap = 0;
	CLRF       main22_cap+0
;main22.c,229 :: 		ind = 0;
	CLRF       main22_ind+0
;main22.c,230 :: 		SW = 1;
	MOVLW      1
	MOVWF      main22_SW+0
;main22.c,231 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main22.c,232 :: 		set_cap(cap);
	MOVF       main22_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main22.c,233 :: 		set_SW(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main22.c,234 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc241
	CALL       _lcd_ind+0
L_button_proc241:
;main22.c,235 :: 		Auto_mem = Auto;
	MOVF       _Auto+0, 0
	MOVWF      _Auto_mem+0
;main22.c,236 :: 		Auto = 0;
	CLRF       _Auto+0
;main22.c,237 :: 		}
	GOTO       L_button_proc242
L_button_proc240:
;main22.c,239 :: 		bypas = 0;
	CLRF       _bypas+0
;main22.c,240 :: 		cap = cap_mem;
	MOVF       _cap_mem+0, 0
	MOVWF      main22_cap+0
;main22.c,241 :: 		ind = ind_mem;
	MOVF       _ind_mem+0, 0
	MOVWF      main22_ind+0
;main22.c,242 :: 		SW = SW_mem;
	MOVF       _SW_mem+0, 0
	MOVWF      main22_SW+0
;main22.c,243 :: 		set_cap(cap);
	MOVF       _cap_mem+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main22.c,244 :: 		set_ind(ind);
	MOVF       main22_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main22.c,245 :: 		set_SW(SW);
	MOVF       main22_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main22.c,246 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc243
	CALL       _lcd_ind+0
L_button_proc243:
;main22.c,247 :: 		Auto = Auto_mem;
	MOVF       _Auto_mem+0, 0
	MOVWF      _Auto+0
;main22.c,248 :: 		}
L_button_proc242:
;main22.c,249 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
	GOTO       L_button_proc244
;main22.c,250 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc245
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr15_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr15_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc246
L_button_proc245:
;main22.c,251 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc247
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr16_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr16_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc248
L_button_proc247:
;main22.c,252 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr17_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr17_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc248:
L_button_proc246:
;main22.c,253 :: 		}
	GOTO       L_button_proc249
L_button_proc244:
;main22.c,254 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc250
;main22.c,255 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc251
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr18_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr18_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc252
L_button_proc251:
;main22.c,256 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc253
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr19_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr19_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc254
L_button_proc253:
;main22.c,257 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr20_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr20_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc254:
L_button_proc252:
;main22.c,258 :: 		}
L_button_proc250:
L_button_proc249:
;main22.c,259 :: 		asm CLRWDT;
	CLRWDT
;main22.c,260 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc255:
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
	GOTO       L_button_proc256
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc255
L_button_proc256:
;main22.c,261 :: 		}
	GOTO       L_button_proc257
L_button_proc239:
;main22.c,263 :: 		if (bypas==0) {   // long press button
	MOVF       _bypas+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc258
;main22.c,264 :: 		Test = 1;
	MOVLW      1
	MOVWF      _Test+0
;main22.c,265 :: 		Auto = 0;
	CLRF       _Auto+0
;main22.c,266 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_button_proc259
;main22.c,267 :: 		led_wr_str (2, 16, "MANUAL  ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr21_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr21_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,268 :: 		asm CLRWDT;
	CLRWDT
;main22.c,269 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc260:
	DECFSZ     R13, 1
	GOTO       L_button_proc260
	DECFSZ     R12, 1
	GOTO       L_button_proc260
	DECFSZ     R11, 1
	GOTO       L_button_proc260
	NOP
;main22.c,270 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr22_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr22_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,271 :: 		led_wr_str (0, 16+8*12, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr23_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr23_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,272 :: 		asm CLRWDT;
	CLRWDT
;main22.c,273 :: 		}
	GOTO       L_button_proc261
L_button_proc259:
;main22.c,274 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc262
;main22.c,275 :: 		led_wr_str (1, 0, "MANUAL  ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr24_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr24_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,276 :: 		asm CLRWDT;
	CLRWDT
;main22.c,277 :: 		delay_ms(1000);
	MOVLW      21
	MOVWF      R11
	MOVLW      75
	MOVWF      R12
	MOVLW      190
	MOVWF      R13
L_button_proc263:
	DECFSZ     R13, 1
	GOTO       L_button_proc263
	DECFSZ     R12, 1
	GOTO       L_button_proc263
	DECFSZ     R11, 1
	GOTO       L_button_proc263
	NOP
;main22.c,278 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr25_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr25_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,279 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr26_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr26_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,280 :: 		asm CLRWDT;
	CLRWDT
;main22.c,281 :: 		}
L_button_proc262:
L_button_proc261:
;main22.c,282 :: 		}
L_button_proc258:
;main22.c,283 :: 		}
L_button_proc257:
;main22.c,284 :: 		}
L_button_proc237:
;main22.c,286 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
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
;main22.c,287 :: 		Delay_ms(450);
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
;main22.c,288 :: 		if(PORTB.B1==1) { // short press button
	BTFSS      PORTB+0, 1
	GOTO       L_button_proc266
;main22.c,289 :: 		dysp_on();
	CALL       _dysp_on+0
;main22.c,290 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,291 :: 		asm CLRWDT;
	CLRWDT
;main22.c,292 :: 		if(Auto == 0) Auto = 1;
	MOVF       _Auto+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc267
	MOVLW      1
	MOVWF      _Auto+0
	GOTO       L_button_proc268
L_button_proc267:
;main22.c,293 :: 		else Auto = 0;
	CLRF       _Auto+0
L_button_proc268:
;main22.c,294 :: 		EEPROM_Write(2, Auto);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _Auto+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,295 :: 		if(type==4 | type==5) {      // 128*64 OLED
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
;main22.c,296 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
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
	MOVLW      ?lstr27_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr27_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc271
L_button_proc270:
;main22.c,297 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
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
	MOVLW      ?lstr28_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr28_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc273
L_button_proc272:
;main22.c,298 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr29_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr29_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc273:
L_button_proc271:
;main22.c,299 :: 		}
	GOTO       L_button_proc274
L_button_proc269:
;main22.c,300 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc275
;main22.c,301 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
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
	MOVLW      ?lstr30_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr30_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc277
L_button_proc276:
;main22.c,302 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
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
	MOVLW      ?lstr31_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr31_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc279
L_button_proc278:
;main22.c,303 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr32_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr32_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc279:
L_button_proc277:
;main22.c,304 :: 		}
L_button_proc275:
L_button_proc274:
;main22.c,305 :: 		asm CLRWDT;
	CLRWDT
;main22.c,306 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
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
;main22.c,307 :: 		}
	GOTO       L_button_proc282
L_button_proc266:
;main22.c,310 :: 		user_setup();
	CALL       _user_setup+0
;main22.c,311 :: 		}
L_button_proc282:
;main22.c,313 :: 		}
L_button_proc264:
;main22.c,314 :: 		return;
;main22.c,315 :: 		}
L_end_button_proc:
	RETURN
; end of _button_proc

_show_reset:

;main22.c,317 :: 		void show_reset() {
;main22.c,318 :: 		atu_reset();
	CALL       _atu_reset+0
;main22.c,319 :: 		SW = 1;
	MOVLW      1
	MOVWF      main22_SW+0
;main22.c,320 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main22.c,321 :: 		EEPROM_Write(255, 0);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,322 :: 		EEPROM_Write(254, 0);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,323 :: 		EEPROM_Write(253, 1);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,324 :: 		EEPROM_Write(252, 0);
	MOVLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,325 :: 		EEPROM_Write(251, 0);
	MOVLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,326 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,327 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main22.c,328 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main22.c,329 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main22.c,330 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main22.c,331 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main22.c,332 :: 		SWR_fixed_old = 0;
	CLRF       _SWR_fixed_old+0
	CLRF       _SWR_fixed_old+1
;main22.c,333 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_show_reset283
;main22.c,334 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr33_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr33_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,335 :: 		asm CLRWDT;
	CLRWDT
;main22.c,336 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset284:
	DECFSZ     R13, 1
	GOTO       L_show_reset284
	DECFSZ     R12, 1
	GOTO       L_show_reset284
	DECFSZ     R11, 1
	GOTO       L_show_reset284
	NOP
	NOP
;main22.c,337 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr34_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr34_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,338 :: 		asm CLRWDT;
	CLRWDT
;main22.c,339 :: 		}
	GOTO       L_show_reset285
L_show_reset283:
;main22.c,340 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset286
;main22.c,341 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr35_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr35_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,342 :: 		asm CLRWDT;
	CLRWDT
;main22.c,343 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset287:
	DECFSZ     R13, 1
	GOTO       L_show_reset287
	DECFSZ     R12, 1
	GOTO       L_show_reset287
	DECFSZ     R11, 1
	GOTO       L_show_reset287
	NOP
	NOP
;main22.c,344 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr36_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr36_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,345 :: 		asm CLRWDT;
	CLRWDT
;main22.c,346 :: 		}
	GOTO       L_show_reset288
L_show_reset286:
;main22.c,348 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main22.c,349 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main22.c,350 :: 		}
L_show_reset288:
L_show_reset285:
;main22.c,351 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main22.c,352 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main22.c,353 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main22.c,354 :: 		return;
;main22.c,355 :: 		}
L_end_show_reset:
	RETURN
; end of _show_reset

_btn_push:

;main22.c,357 :: 		void btn_push() {
;main22.c,358 :: 		asm CLRWDT;
	CLRWDT
;main22.c,359 :: 		if(type==4 | type==5)  {   // 128*64 OLED
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
	GOTO       L_btn_push289
;main22.c,360 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr37_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr37_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,361 :: 		}
	GOTO       L_btn_push290
L_btn_push289:
;main22.c,362 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push291
;main22.c,363 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr38_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr38_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,364 :: 		}
	GOTO       L_btn_push292
L_btn_push291:
;main22.c,366 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main22.c,367 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main22.c,368 :: 		}
L_btn_push292:
L_btn_push290:
;main22.c,369 :: 		tune();
	CALL       _tune+0
;main22.c,370 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_btn_push293
;main22.c,371 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push680
	MOVF       _SWR+0, 0
	SUBLW      150
L__btn_push680:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push294
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_btn_push295
L_btn_push294:
;main22.c,372 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push681
	MOVF       _SWR+0, 0
	SUBLW      250
L__btn_push681:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push296
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_btn_push297
L_btn_push296:
;main22.c,373 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_btn_push297:
L_btn_push295:
;main22.c,374 :: 		}
	GOTO       L_btn_push298
L_btn_push293:
;main22.c,375 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main22_Loss_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push299
	CALL       _lcd_ind+0
L_btn_push299:
L_btn_push298:
;main22.c,376 :: 		EEPROM_Write(255, cap);
	MOVLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,377 :: 		EEPROM_Write(254, ind);
	MOVLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,378 :: 		EEPROM_Write(253, SW);
	MOVLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main22_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main22.c,379 :: 		EEPROM_Write(252, swr_a/256);
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
;main22.c,380 :: 		EEPROM_Write(251, swr_a%256);
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
;main22.c,381 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main22.c,382 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main22.c,383 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main22.c,384 :: 		SWR_fixed_old = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _SWR_fixed_old+0
	MOVF       _SWR+1, 0
	MOVWF      _SWR_fixed_old+1
;main22.c,385 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, BitPos(LATA7_bit+0)
;main22.c,386 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, BitPos(LATA6_bit+0)
;main22.c,387 :: 		asm CLRWDT;
	CLRWDT
;main22.c,388 :: 		return;
;main22.c,389 :: 		}
L_end_btn_push:
	RETURN
; end of _btn_push

_lcd_prep:

;main22.c,392 :: 		void lcd_prep() {
;main22.c,393 :: 		asm CLRWDT;
	CLRWDT
;main22.c,394 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO       L_lcd_prep300
;main22.c,395 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep301
;main22.c,396 :: 		led_wr_str (0, 8, " ATU-100 ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr39_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr39_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,397 :: 		led_wr_str (2, 16, "7x7 v3.1", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr40_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr40_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,398 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr41_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr41_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,399 :: 		led_wr_str (6, 22, "& R3TJL", 7);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      22
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr42_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr42_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,400 :: 		asm CLRWDT;
	CLRWDT
;main22.c,401 :: 		Delay_ms(800);
	MOVLW      17
	MOVWF      R11
	MOVLW      60
	MOVWF      R12
	MOVLW      203
	MOVWF      R13
L_lcd_prep302:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep302
	DECFSZ     R12, 1
	GOTO       L_lcd_prep302
	DECFSZ     R11, 1
	GOTO       L_lcd_prep302
;main22.c,402 :: 		asm CLRWDT;
	CLRWDT
;main22.c,403 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep303:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep303
	DECFSZ     R12, 1
	GOTO       L_lcd_prep303
	DECFSZ     R11, 1
	GOTO       L_lcd_prep303
	NOP
	NOP
;main22.c,404 :: 		asm CLRWDT;
	CLRWDT
;main22.c,405 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr43_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr43_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,406 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr44_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr44_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,407 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr45_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr45_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,408 :: 		led_wr_str (6, 22, "       ", 7);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      22
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr46_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr46_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,409 :: 		}
L_lcd_prep301:
;main22.c,410 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
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
;main22.c,411 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF       main22_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep305
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr47_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr47_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep306
L_lcd_prep305:
;main22.c,412 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr48_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr48_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep306:
;main22.c,413 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr49_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr49_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,414 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep307
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr50_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr50_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep307:
;main22.c,415 :: 		}
	GOTO       L_lcd_prep308
L_lcd_prep300:
;main22.c,416 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep309
;main22.c,417 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep310
;main22.c,418 :: 		led_wr_str (0, 0, "ATU-100 7x7 v3.1", 16);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr51_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr51_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,419 :: 		led_wr_str (1, 0, "by N7DDC & R3TJL", 16);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr52_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr52_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,420 :: 		asm CLRWDT;
	CLRWDT
;main22.c,421 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep311:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep311
	DECFSZ     R12, 1
	GOTO       L_lcd_prep311
	DECFSZ     R11, 1
	GOTO       L_lcd_prep311
	NOP
	NOP
;main22.c,422 :: 		asm CLRWDT;
	CLRWDT
;main22.c,423 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
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
;main22.c,424 :: 		asm CLRWDT;
	CLRWDT
;main22.c,425 :: 		led_wr_str (0, 0, "                ", 16);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr53_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr53_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,426 :: 		led_wr_str (1, 0, "                ", 16);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr54_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr54_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,427 :: 		}
L_lcd_prep310:
;main22.c,428 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
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
;main22.c,429 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF       main22_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep314
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr55_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr55_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep315
L_lcd_prep314:
;main22.c,430 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr56_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr56_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep315:
;main22.c,431 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr57_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr57_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,432 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep316
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr58_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr58_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep316:
;main22.c,433 :: 		}
L_lcd_prep309:
L_lcd_prep308:
;main22.c,434 :: 		asm CLRWDT;
	CLRWDT
;main22.c,435 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,436 :: 		return;
;main22.c,437 :: 		}
L_end_lcd_prep:
	RETURN
; end of _lcd_prep

_lcd_swr:

;main22.c,440 :: 		void lcd_swr(int swr) {
;main22.c,441 :: 		asm CLRWDT;
	CLRWDT
;main22.c,442 :: 		if(swr!=SWR_old) {
	MOVF       FARG_lcd_swr_swr+1, 0
	XORWF      _SWR_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr684
	MOVF       _SWR_old+0, 0
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr684:
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr317
;main22.c,443 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main22.c,444 :: 		if(swr==1) {  // Low power
	MOVLW      0
	XORWF      FARG_lcd_swr_swr+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr685
	MOVLW      1
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr685:
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr318
;main22.c,445 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
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
	GOTO       L_lcd_swr319
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr59_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr59_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr320
L_lcd_swr319:
;main22.c,446 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr321
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr60_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr60_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr322
L_lcd_swr321:
;main22.c,447 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr323
;main22.c,448 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main22.c,449 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main22.c,450 :: 		}
L_lcd_swr323:
L_lcd_swr322:
L_lcd_swr320:
;main22.c,451 :: 		SWR_old = 0;
	CLRF       _SWR_old+0
	CLRF       _SWR_old+1
;main22.c,452 :: 		}
	GOTO       L_lcd_swr324
L_lcd_swr318:
;main22.c,454 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main22.c,455 :: 		IntToStr(swr, work_str);
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,456 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main22.c,457 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main22.c,458 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,459 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main22.c,460 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO       L_lcd_swr325
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
	GOTO       L_lcd_swr326
L_lcd_swr325:
;main22.c,461 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr327
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
	GOTO       L_lcd_swr328
L_lcd_swr327:
;main22.c,462 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr329
;main22.c,463 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr686
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      150
L__lcd_swr686:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr330
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_lcd_swr331
L_lcd_swr330:
;main22.c,464 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr687
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      250
L__lcd_swr687:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr332
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_lcd_swr333
L_lcd_swr332:
;main22.c,465 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_lcd_swr333:
L_lcd_swr331:
;main22.c,466 :: 		}
L_lcd_swr329:
L_lcd_swr328:
L_lcd_swr326:
;main22.c,467 :: 		}
L_lcd_swr324:
;main22.c,468 :: 		}
L_lcd_swr317:
;main22.c,469 :: 		asm CLRWDT;
	CLRWDT
;main22.c,470 :: 		return;
;main22.c,471 :: 		}
L_end_lcd_swr:
	RETURN
; end of _lcd_swr

_button_delay:

;main22.c,474 :: 		void button_delay() {
;main22.c,475 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
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
	GOTO       L_button_delay334
;main22.c,476 :: 		but = 1;
	MOVLW      1
	MOVWF      _but+0
;main22.c,477 :: 		}
L_button_delay334:
;main22.c,478 :: 		return;
;main22.c,479 :: 		}
L_end_button_delay:
	RETURN
; end of _button_delay

_show_pwr:

;main22.c,481 :: 		void show_pwr(int Power, int SWR) {
;main22.c,484 :: 		a = 100;
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      72
	MOVWF      show_pwr_a_L0+2
	MOVLW      133
	MOVWF      show_pwr_a_L0+3
;main22.c,485 :: 		asm CLRWDT;
	CLRWDT
;main22.c,487 :: 		if(Test==0 & Loss_ind==1 & SWR>=100) {
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main22_Loss_ind+0, 0
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
	GOTO       L__show_pwr690
	MOVLW      100
	SUBWF      FARG_show_pwr_SWR+0, 0
L__show_pwr690:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr335
;main22.c,488 :: 		if(Loss_mode==0) {   // prepare
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr336
;main22.c,489 :: 		if(type==4 |type==5){   // 128*64 OLED
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
	GOTO       L_show_pwr337
;main22.c,490 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF       main22_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr338
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr61_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr61_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr339
L_show_pwr338:
;main22.c,491 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr62_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr62_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr339:
;main22.c,492 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr63_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr63_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,493 :: 		}
	GOTO       L_show_pwr340
L_show_pwr337:
;main22.c,494 :: 		else if(type==2 | type==3) {   // 128*32 OLED
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
	GOTO       L_show_pwr341
;main22.c,495 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF       main22_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr342
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr64_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr64_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr343
L_show_pwr342:
;main22.c,496 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr65_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr65_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr343:
;main22.c,497 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr66_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr66_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,498 :: 		}
	GOTO       L_show_pwr344
L_show_pwr341:
;main22.c,499 :: 		else if(type==1) {   // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr345
;main22.c,500 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF       main22_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr346
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr67_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr67_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr347
L_show_pwr346:
;main22.c,501 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr68_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr68_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr347:
;main22.c,502 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr69_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr69_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,503 :: 		}
L_show_pwr345:
L_show_pwr344:
L_show_pwr340:
;main22.c,504 :: 		}
L_show_pwr336:
;main22.c,505 :: 		Loss_mode = 1;
	MOVLW      1
	MOVWF      _Loss_mode+0
;main22.c,506 :: 		}
	GOTO       L_show_pwr348
L_show_pwr335:
;main22.c,508 :: 		if(Loss_mode==1) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr349
	CALL       _lcd_ind+0
L_show_pwr349:
;main22.c,509 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main22.c,510 :: 		}
L_show_pwr348:
;main22.c,511 :: 		asm CLRWDT;
	CLRWDT
;main22.c,512 :: 		if(Power != Power_old) {
	MOVF       FARG_show_pwr_Power+1, 0
	XORWF      _Power_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr691
	MOVF       _Power_old+0, 0
	XORWF      FARG_show_pwr_Power+0, 0
L__show_pwr691:
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr350
;main22.c,513 :: 		Power_old = Power;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      _Power_old+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      _Power_old+1
;main22.c,515 :: 		if(P_High==0) {
	MOVF       main22_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr351
;main22.c,516 :: 		if(Power >= 100) {   // > 10 W
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr692
	MOVLW      100
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr692:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr352
;main22.c,517 :: 		Power += 5;  // rounding to 1 W
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
;main22.c,518 :: 		IntToStr(Power, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,519 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main22.c,520 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main22.c,521 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,522 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,523 :: 		}
	GOTO       L_show_pwr353
L_show_pwr352:
;main22.c,525 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,526 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr354
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr355
L_show_pwr354:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr355:
;main22.c,527 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main22.c,528 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr356
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr357
L_show_pwr356:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr357:
;main22.c,529 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,530 :: 		}
L_show_pwr353:
;main22.c,531 :: 		}
	GOTO       L_show_pwr358
L_show_pwr351:
;main22.c,533 :: 		if(Power<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr693
	MOVLW      231
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr693:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr359
;main22.c,534 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,535 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main22.c,536 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main22.c,537 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main22.c,538 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,539 :: 		}
	GOTO       L_show_pwr360
L_show_pwr359:
;main22.c,541 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,542 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main22.c,543 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main22.c,544 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,545 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main22.c,546 :: 		}
L_show_pwr360:
;main22.c,547 :: 		}
L_show_pwr358:
;main22.c,548 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO       L_show_pwr361
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
	GOTO       L_show_pwr362
L_show_pwr361:
;main22.c,549 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr363
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
L_show_pwr363:
L_show_pwr362:
;main22.c,551 :: 		asm CLRWDT;
	CLRWDT
;main22.c,553 :: 		if(Loss_mode==1)  {
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr364
;main22.c,554 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF       main22_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main22_cap+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr365
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      _swr_a+1
L_show_pwr365:
;main22.c,555 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
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
;main22.c,556 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
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
;main22.c,557 :: 		if(a>=1.0) a = 1.0;
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
	GOTO       L_show_pwr366
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      0
	MOVWF      show_pwr_a_L0+2
	MOVLW      127
	MOVWF      show_pwr_a_L0+3
L_show_pwr366:
;main22.c,558 :: 		if(b>=1.0) b = 1.0;
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
	GOTO       L_show_pwr367
	MOVLW      0
	MOVWF      show_pwr_b_L0+0
	MOVLW      0
	MOVWF      show_pwr_b_L0+1
	MOVLW      0
	MOVWF      show_pwr_b_L0+2
	MOVLW      127
	MOVWF      show_pwr_b_L0+3
L_show_pwr367:
;main22.c,559 :: 		p_ant = Power * a * b;
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
;main22.c,560 :: 		eff = a * b * 100;
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
;main22.c,561 :: 		if(eff>=100) eff = 99;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr694
	MOVLW      100
	SUBWF      R0, 0
L__show_pwr694:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr368
	MOVLW      99
	MOVWF      show_pwr_eff_L0+0
	MOVLW      0
	MOVWF      show_pwr_eff_L0+1
L_show_pwr368:
;main22.c,563 :: 		if(P_High==0) {
	MOVF       main22_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr369
;main22.c,564 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr695
	MOVLW      100
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr695:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr370
;main22.c,565 :: 		p_ant += 5;  // rounding to 1 W
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
;main22.c,566 :: 		IntToStr(p_ant, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,567 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main22.c,568 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main22.c,569 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,570 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,571 :: 		}
	GOTO       L_show_pwr371
L_show_pwr370:
;main22.c,573 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,574 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr372
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr373
L_show_pwr372:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr373:
;main22.c,575 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main22.c,576 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr374
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr375
L_show_pwr374:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr375:
;main22.c,577 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,578 :: 		}
L_show_pwr371:
;main22.c,579 :: 		}
	GOTO       L_show_pwr376
L_show_pwr369:
;main22.c,581 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr696
	MOVLW      231
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr696:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr377
;main22.c,582 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,583 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main22.c,584 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main22.c,585 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main22.c,586 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main22.c,587 :: 		}
	GOTO       L_show_pwr378
L_show_pwr377:
;main22.c,589 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,590 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main22.c,591 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main22.c,592 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,593 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main22.c,594 :: 		}
L_show_pwr378:
;main22.c,595 :: 		}
L_show_pwr376:
;main22.c,596 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
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
	GOTO       L_show_pwr379
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
	GOTO       L_show_pwr380
L_show_pwr379:
;main22.c,597 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
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
	GOTO       L_show_pwr381
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
	GOTO       L_show_pwr382
L_show_pwr381:
;main22.c,598 :: 		else if(type==1) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr383
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
L_show_pwr383:
L_show_pwr382:
L_show_pwr380:
;main22.c,600 :: 		IntToStr(eff, work_str);
	MOVF       show_pwr_eff_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_eff_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,601 :: 		work_str_2[0] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
;main22.c,602 :: 		work_str_2[1] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+1
;main22.c,603 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
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
	GOTO       L_show_pwr384
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
	GOTO       L_show_pwr385
L_show_pwr384:
;main22.c,604 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
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
	GOTO       L_show_pwr386
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
	GOTO       L_show_pwr387
L_show_pwr386:
;main22.c,605 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr388
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
L_show_pwr388:
L_show_pwr387:
L_show_pwr385:
;main22.c,606 :: 		}
L_show_pwr364:
;main22.c,607 :: 		}
L_show_pwr350:
;main22.c,608 :: 		asm CLRWDT;
	CLRWDT
;main22.c,609 :: 		return;
;main22.c,610 :: 		}
L_end_show_pwr:
	RETURN
; end of _show_pwr

_lcd_pwr:

;main22.c,612 :: 		void lcd_pwr() {
;main22.c,613 :: 		int p = 0;
	CLRF       lcd_pwr_p_L0+0
	CLRF       lcd_pwr_p_L0+1
;main22.c,615 :: 		int delta = Auto_delta - 100;
	MOVLW      100
	SUBWF      _Auto_delta+0, 0
	MOVWF      lcd_pwr_delta_L0+0
	MOVLW      0
	SUBWFB     _Auto_delta+1, 0
	MOVWF      lcd_pwr_delta_L0+1
;main22.c,617 :: 		int SWR_fixed = 1;
	MOVLW      1
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVLW      0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
;main22.c,618 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main22.c,619 :: 		asm CLRWDT;
	CLRWDT
;main22.c,621 :: 		cnt = 120;
	MOVLW      120
	MOVWF      lcd_pwr_cnt_L0+0
;main22.c,622 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF       lcd_pwr_peak_cnt_L0+0
L_lcd_pwr389:
	MOVF       lcd_pwr_cnt_L0+0, 0
	SUBWF      lcd_pwr_peak_cnt_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr390
;main22.c,623 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr698
	BSF        R6, 0
	GOTO       L__lcd_pwr699
L__lcd_pwr698:
	BCF        R6, 0
L__lcd_pwr699:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr700
	BSF        3, 0
	GOTO       L__lcd_pwr701
L__lcd_pwr700:
	BCF        3, 0
L__lcd_pwr701:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr702
	BTFSC      3, 0
	GOTO       L__lcd_pwr702
	BCF        R6, 0
	GOTO       L__lcd_pwr703
L__lcd_pwr702:
	BSF        R6, 0
L__lcd_pwr703:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr704
	BSF        3, 0
	GOTO       L__lcd_pwr705
L__lcd_pwr704:
	BCF        3, 0
L__lcd_pwr705:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr706
	BTFSC      3, 0
	GOTO       L__lcd_pwr706
	BCF        R6, 0
	GOTO       L__lcd_pwr707
L__lcd_pwr706:
	BSF        R6, 0
L__lcd_pwr707:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr392
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr393
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr393:
L_lcd_pwr392:
;main22.c,624 :: 		get_pwr();
	CALL       _get_pwr+0
;main22.c,625 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW      128
	XORWF      lcd_pwr_p_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr708
	MOVF       _PWR+0, 0
	SUBWF      lcd_pwr_p_L0+0, 0
L__lcd_pwr708:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr394
	MOVF       _PWR+0, 0
	MOVWF      lcd_pwr_p_L0+0
	MOVF       _PWR+1, 0
	MOVWF      lcd_pwr_p_L0+1
	MOVF       _SWR+0, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVF       _SWR+1, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
L_lcd_pwr394:
;main22.c,626 :: 		Delay_ms(3);
	MOVLW      16
	MOVWF      R12
	MOVLW      148
	MOVWF      R13
L_lcd_pwr395:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr395
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr395
	NOP
;main22.c,622 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF       lcd_pwr_peak_cnt_L0+0, 1
;main22.c,627 :: 		}
	GOTO       L_lcd_pwr389
L_lcd_pwr390:
;main22.c,628 :: 		asm CLRWDT;
	CLRWDT
;main22.c,629 :: 		Power = p;
	MOVF       lcd_pwr_p_L0+0, 0
	MOVWF      _Power+0
	MOVF       lcd_pwr_p_L0+1, 0
	MOVWF      _Power+1
;main22.c,630 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main22.c,631 :: 		if(SWR_fixed>=100) {
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr709
	MOVLW      100
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr709:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_pwr396
;main22.c,632 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main22.c,633 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,634 :: 		}
L_lcd_pwr396:
;main22.c,636 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr710
	MOVF       _Auto_delta+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr710:
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
	GOTO       L__lcd_pwr711
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
L__lcd_pwr711:
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
	GOTO       L__lcd_pwr712
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr712:
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
	GOTO       L__lcd_pwr713
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr713:
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
	GOTO       L__lcd_pwr714
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr714:
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
	GOTO       L__lcd_pwr715
	MOVLW      231
	XORWF      _SWR_fixed_old+0, 0
L__lcd_pwr715:
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	MOVF       R5, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr397
;main22.c,637 :: 		Soft_tune = 1;
	MOVLW      1
	MOVWF      _Soft_tune+0
L_lcd_pwr397:
;main22.c,639 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr716
	BSF        R6, 0
	GOTO       L__lcd_pwr717
L__lcd_pwr716:
	BCF        R6, 0
L__lcd_pwr717:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr718
	BSF        3, 0
	GOTO       L__lcd_pwr719
L__lcd_pwr718:
	BCF        3, 0
L__lcd_pwr719:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr720
	BTFSC      3, 0
	GOTO       L__lcd_pwr720
	BCF        R6, 0
	GOTO       L__lcd_pwr721
L__lcd_pwr720:
	BSF        R6, 0
L__lcd_pwr721:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr722
	BSF        3, 0
	GOTO       L__lcd_pwr723
L__lcd_pwr722:
	BCF        3, 0
L__lcd_pwr723:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr724
	BTFSC      3, 0
	GOTO       L__lcd_pwr724
	BCF        R6, 0
	GOTO       L__lcd_pwr725
L__lcd_pwr724:
	BSF        R6, 0
L__lcd_pwr725:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr398
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr399
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr399:
L_lcd_pwr398:
;main22.c,640 :: 		show_pwr(Power, SWR_fixed);
	MOVF       _Power+0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       _Power+1, 0
	MOVWF      FARG_show_pwr_Power+1
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_show_pwr_SWR+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_show_pwr_SWR+1
	CALL       _show_pwr+0
;main22.c,642 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr726
	BSF        R6, 0
	GOTO       L__lcd_pwr727
L__lcd_pwr726:
	BCF        R6, 0
L__lcd_pwr727:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr728
	BSF        3, 0
	GOTO       L__lcd_pwr729
L__lcd_pwr728:
	BCF        3, 0
L__lcd_pwr729:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr730
	BTFSC      3, 0
	GOTO       L__lcd_pwr730
	BCF        R6, 0
	GOTO       L__lcd_pwr731
L__lcd_pwr730:
	BSF        R6, 0
L__lcd_pwr731:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr732
	BSF        3, 0
	GOTO       L__lcd_pwr733
L__lcd_pwr732:
	BCF        3, 0
L__lcd_pwr733:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr734
	BTFSC      3, 0
	GOTO       L__lcd_pwr734
	BCF        R6, 0
	GOTO       L__lcd_pwr735
L__lcd_pwr734:
	BSF        R6, 0
L__lcd_pwr735:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr400
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr401
	CLRF       _but+0
	GOTO       L_end_lcd_pwr
L_lcd_pwr401:
L_lcd_pwr400:
;main22.c,643 :: 		asm CLRWDT;
	CLRWDT
;main22.c,644 :: 		if(Overload==1) {
	MOVF       main22_Overload+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr402
;main22.c,645 :: 		if(type==4 | type==5) {                  // 128*64 OLED
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
	GOTO       L_lcd_pwr403
;main22.c,646 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr70_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr70_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,647 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr404:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr404
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr404
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr404
;main22.c,648 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr71_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr71_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,649 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr405:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr405
	NOP
	NOP
;main22.c,650 :: 		asm CLRWDT;
	CLRWDT
;main22.c,651 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr72_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr72_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,652 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr406:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr406
	NOP
;main22.c,653 :: 		asm CLRWDT;
	CLRWDT
;main22.c,654 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr73_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr73_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,655 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr407:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr407
	NOP
	NOP
;main22.c,656 :: 		asm CLRWDT;
	CLRWDT
;main22.c,657 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr74_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr74_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,658 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr408:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr408
	NOP
;main22.c,659 :: 		asm CLRWDT;
	CLRWDT
;main22.c,660 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr75_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr75_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,661 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr409:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr409
	NOP
	NOP
;main22.c,662 :: 		asm CLRWDT;
	CLRWDT
;main22.c,663 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr76_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr76_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,664 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr410:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr410
;main22.c,665 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr77_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr77_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,666 :: 		}
	GOTO       L_lcd_pwr411
L_lcd_pwr403:
;main22.c,667 :: 		else if(type!=0)  {        // 1602  & 128*32// 1602
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr412
;main22.c,668 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr78_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr78_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,669 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr413:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr413
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr413
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr413
;main22.c,670 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr79_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr79_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,671 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr414:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr414
	NOP
	NOP
;main22.c,672 :: 		asm CLRWDT;
	CLRWDT
;main22.c,673 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr80_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr80_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,674 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr415:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr415
	NOP
;main22.c,675 :: 		asm CLRWDT;
	CLRWDT
;main22.c,676 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr81_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr81_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,677 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr416:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr416
	NOP
	NOP
;main22.c,678 :: 		asm CLRWDT;
	CLRWDT
;main22.c,679 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr82_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr82_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,680 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr417:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr417
	NOP
;main22.c,681 :: 		asm CLRWDT;
	CLRWDT
;main22.c,682 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr83_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr83_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,683 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr418:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr418
	NOP
	NOP
;main22.c,684 :: 		asm CLRWDT;
	CLRWDT
;main22.c,685 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr84_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr84_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,686 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr419:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr419
;main22.c,687 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr85_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr85_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,688 :: 		}
L_lcd_pwr412:
L_lcd_pwr411:
;main22.c,689 :: 		asm CLRWDT;
	CLRWDT
;main22.c,690 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main22.c,691 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main22.c,692 :: 		}
L_lcd_pwr402:
;main22.c,693 :: 		return;
;main22.c,694 :: 		}
L_end_lcd_pwr:
	RETURN
; end of _lcd_pwr

_lcd_ind:

;main22.c,696 :: 		void lcd_ind() {
;main22.c,698 :: 		asm CLRWDT;
	CLRWDT
;main22.c,700 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main22.c,701 :: 		if(ind.B0) work_int += Ind1;
	BTFSS      main22_ind+0, 0
	GOTO       L_lcd_ind421
	MOVF       _Ind1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind421:
;main22.c,702 :: 		if(ind.B1) work_int += Ind2;
	BTFSS      main22_ind+0, 1
	GOTO       L_lcd_ind422
	MOVF       _Ind2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind422:
;main22.c,703 :: 		if(ind.B2) work_int += Ind3;
	BTFSS      main22_ind+0, 2
	GOTO       L_lcd_ind423
	MOVF       _Ind3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind423:
;main22.c,704 :: 		if(ind.B3) work_int += Ind4;
	BTFSS      main22_ind+0, 3
	GOTO       L_lcd_ind424
	MOVF       _Ind4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind424:
;main22.c,705 :: 		if(ind.B4) work_int += Ind5;
	BTFSS      main22_ind+0, 4
	GOTO       L_lcd_ind425
	MOVF       _Ind5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind425:
;main22.c,706 :: 		if(ind.B5) work_int += Ind6;
	BTFSS      main22_ind+0, 5
	GOTO       L_lcd_ind426
	MOVF       _Ind6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind426:
;main22.c,707 :: 		if(ind.B6) work_int += Ind7;
	BTFSS      main22_ind+0, 6
	GOTO       L_lcd_ind427
	MOVF       _Ind7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind427:
;main22.c,708 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,709 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF       _work_str+2, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind428
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
	GOTO       L_lcd_ind429
L_lcd_ind428:
	MOVLW      48
	MOVWF      _work_str_2+0
L_lcd_ind429:
;main22.c,710 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main22.c,711 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF       _work_str+3, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind430
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+2
	GOTO       L_lcd_ind431
L_lcd_ind430:
	MOVLW      48
	MOVWF      _work_str_2+2
L_lcd_ind431:
;main22.c,712 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind432
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+3
	GOTO       L_lcd_ind433
L_lcd_ind432:
	MOVLW      48
	MOVWF      _work_str_2+3
L_lcd_ind433:
;main22.c,713 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO       L_lcd_ind434
;main22.c,714 :: 		if(SW==1) column = 4; else column = 6;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind435
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind436
L_lcd_ind435:
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind436:
;main22.c,715 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr86_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr86_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,716 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr87_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr87_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,717 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main22.c,718 :: 		}
	GOTO       L_lcd_ind437
L_lcd_ind434:
;main22.c,719 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO       L_lcd_ind438
;main22.c,720 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind439
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind440
L_lcd_ind439:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind440:
;main22.c,721 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr88_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr88_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,722 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr89_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr89_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,723 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main22.c,724 :: 		}
	GOTO       L_lcd_ind441
L_lcd_ind438:
;main22.c,725 :: 		else if(type==1) { //  1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind442
;main22.c,726 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind443
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind444
L_lcd_ind443:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind444:
;main22.c,727 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr90_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr90_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,728 :: 		led_wr_str (column, 15, "u", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr91_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr91_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,729 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main22.c,730 :: 		}
L_lcd_ind442:
L_lcd_ind441:
L_lcd_ind437:
;main22.c,732 :: 		asm CLRWDT;
	CLRWDT
;main22.c,734 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main22.c,735 :: 		if(cap.B0) work_int += Cap1;
	BTFSS      main22_cap+0, 0
	GOTO       L_lcd_ind446
	MOVF       _Cap1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind446:
;main22.c,736 :: 		if(cap.B1) work_int += Cap2;
	BTFSS      main22_cap+0, 1
	GOTO       L_lcd_ind447
	MOVF       _Cap2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind447:
;main22.c,737 :: 		if(cap.B2) work_int += Cap3;
	BTFSS      main22_cap+0, 2
	GOTO       L_lcd_ind448
	MOVF       _Cap3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind448:
;main22.c,738 :: 		if(cap.B3) work_int += Cap4;
	BTFSS      main22_cap+0, 3
	GOTO       L_lcd_ind449
	MOVF       _Cap4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind449:
;main22.c,739 :: 		if(cap.B4) work_int += Cap5;
	BTFSS      main22_cap+0, 4
	GOTO       L_lcd_ind450
	MOVF       _Cap5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind450:
;main22.c,740 :: 		if(cap.B5) work_int += Cap6;
	BTFSS      main22_cap+0, 5
	GOTO       L_lcd_ind451
	MOVF       _Cap6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind451:
;main22.c,741 :: 		if(cap.B6) work_int += Cap7;
	BTFSS      main22_cap+0, 6
	GOTO       L_lcd_ind452
	MOVF       _Cap7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind452:
;main22.c,742 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,743 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main22.c,744 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main22.c,745 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main22.c,746 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main22.c,748 :: 		if(type==4 | type==5) {  // 128*64 OLED
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
	GOTO       L_lcd_ind453
;main22.c,749 :: 		if(SW==1) column = 6; else column = 4;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind454
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind455
L_lcd_ind454:
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind455:
;main22.c,750 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr92_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr92_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,751 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr93_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr93_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,752 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
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
;main22.c,753 :: 		}
	GOTO       L_lcd_ind456
L_lcd_ind453:
;main22.c,754 :: 		else if(type==2 | type==3) {// 128*32 OLED
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
	GOTO       L_lcd_ind457
;main22.c,755 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind458
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind459
L_lcd_ind458:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind459:
;main22.c,756 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr94_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr94_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,757 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr95_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr95_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,758 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main22.c,759 :: 		}
	GOTO       L_lcd_ind460
L_lcd_ind457:
;main22.c,760 :: 		else if(type==1) { // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind461
;main22.c,761 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main22_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind462
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind463
L_lcd_ind462:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind463:
;main22.c,762 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr96_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr96_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,763 :: 		led_wr_str (column, 15, "p", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr97_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr97_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,764 :: 		led_wr_str (column, 11, work_str_2, 4);
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
;main22.c,765 :: 		}
L_lcd_ind461:
L_lcd_ind460:
L_lcd_ind456:
;main22.c,767 :: 		asm CLRWDT;
	CLRWDT
;main22.c,768 :: 		return;
;main22.c,769 :: 		}
L_end_lcd_ind:
	RETURN
; end of _lcd_ind

_cells_init:

;main22.c,771 :: 		void cells_init(void) {
;main22.c,773 :: 		asm CLRWDT;
	CLRWDT
;main22.c,775 :: 		type = EEPROM_Read(1); // type of display
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _type+0
;main22.c,776 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_cells_init464
	MOVLW      1
	MOVWF      _Auto+0
L_cells_init464:
;main22.c,777 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main22_Rel_Del+0
	CLRF       main22_Rel_Del+1
;main22.c,778 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
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
;main22.c,779 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
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
	MOVWF      main22_min_for_start+0
	MOVF       R1, 0
	MOVWF      main22_min_for_start+1
;main22.c,780 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
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
	MOVWF      main22_max_for_start+0
	MOVF       R1, 0
	MOVWF      main22_max_for_start+1
;main22.c,783 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
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
	MOVWF      main22_max_swr+0
	MOVF       R1, 0
	MOVWF      main22_max_swr+1
;main22.c,784 :: 		L_q = EEPROM_Read(10);
	MOVLW      10
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_L_q+0
;main22.c,785 :: 		L_linear = EEPROM_Read(11);
	MOVLW      11
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_L_linear+0
;main22.c,786 :: 		C_q = EEPROM_Read(12);
	MOVLW      12
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_C_q+0
;main22.c,787 :: 		C_linear = EEPROM_Read(13);
	MOVLW      13
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_C_linear+0
;main22.c,788 :: 		D_correction = EEPROM_Read(14);
	MOVLW      14
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_D_correction+0
;main22.c,789 :: 		L_invert = EEPROM_Read(15);
	MOVLW      15
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_L_invert+0
;main22.c,791 :: 		asm CLRWDT;
	CLRWDT
;main22.c,792 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
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
;main22.c,793 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
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
;main22.c,794 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
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
;main22.c,795 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
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
;main22.c,796 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
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
;main22.c,797 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
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
;main22.c,798 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
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
;main22.c,800 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
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
;main22.c,801 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
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
;main22.c,802 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
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
;main22.c,803 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
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
;main22.c,804 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
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
;main22.c,805 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
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
;main22.c,806 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
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
;main22.c,808 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW      48
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_P_High+0
;main22.c,809 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW      49
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main22_K_Mult+0
;main22.c,810 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW      50
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Dysp_delay+0
;main22.c,811 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW      51
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main22_Loss_ind+0
;main22.c,812 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main22.c,813 :: 		asm CLRWDT;
	CLRWDT
;main22.c,814 :: 		return;
;main22.c,816 :: 		}
L_end_cells_init:
	RETURN
; end of _cells_init

_user_setup:

;main22.c,818 :: 		void user_setup()  {
;main22.c,821 :: 		usr_set = 1;
	MOVLW      1
	MOVWF      user_setup_usr_set_L0+0
	MOVLW      0
	MOVWF      user_setup_usr_set_L0+1
;main22.c,822 :: 		asm CLRWDT;
	CLRWDT
;main22.c,823 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main22.c,824 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_user_setup465
;main22.c,825 :: 		led_wr_str (0, 1, "          ", 10);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr98_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr98_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,826 :: 		led_wr_str (2, 1, "          ", 10);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr99_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr99_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,827 :: 		led_wr_str (4, 1, "          ", 10);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr100_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr100_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,828 :: 		led_wr_str (6, 1, "          ", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr101_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr101_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,829 :: 		asm CLRWDT;
	CLRWDT
;main22.c,830 :: 		delay_ms(200);
	MOVLW      5
	MOVWF      R11
	MOVLW      15
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_user_setup466:
	DECFSZ     R13, 1
	GOTO       L_user_setup466
	DECFSZ     R12, 1
	GOTO       L_user_setup466
	DECFSZ     R11, 1
	GOTO       L_user_setup466
;main22.c,831 :: 		asm CLRWDT;
	CLRWDT
;main22.c,832 :: 		}
	GOTO       L_user_setup467
L_user_setup465:
;main22.c,833 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup468
;main22.c,834 :: 		led_wr_str (0, 0, "                ", 16);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr102_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr102_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,835 :: 		led_wr_str (1, 0, "                ", 16);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr103_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr103_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,837 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_user_setup469:
	DECFSZ     R13, 1
	GOTO       L_user_setup469
	DECFSZ     R12, 1
	GOTO       L_user_setup469
	DECFSZ     R11, 1
	GOTO       L_user_setup469
	NOP
	NOP
;main22.c,838 :: 		asm CLRWDT;
	CLRWDT
;main22.c,839 :: 		}
L_user_setup468:
L_user_setup467:
;main22.c,847 :: 		while(usr_set > 0) {
L_user_setup470:
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      user_setup_usr_set_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup739
	MOVF       user_setup_usr_set_L0+0, 0
	SUBLW      0
L__user_setup739:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup471
;main22.c,848 :: 		asm CLRWDT;
	CLRWDT
;main22.c,849 :: 		if(usr_set == 1) {   // min SWR setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup740
	MOVLW      1
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup740:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup472
;main22.c,850 :: 		inttostr((Auto_delta / 10), swr_str);
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
;main22.c,851 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_user_setup473
;main22.c,852 :: 		led_wr_str(0, 16, "Min SWR  ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr104_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr104_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,853 :: 		asm CLRWDT;
	CLRWDT
;main22.c,854 :: 		led_wr_str(3, 6, swr_str, 6);
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
;main22.c,855 :: 		asm CLRWDT;
	CLRWDT
;main22.c,856 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup474:
	DECFSZ     R13, 1
	GOTO       L_user_setup474
	DECFSZ     R12, 1
	GOTO       L_user_setup474
	DECFSZ     R11, 1
	GOTO       L_user_setup474
	NOP
	NOP
;main22.c,857 :: 		asm CLRWDT;
	CLRWDT
;main22.c,858 :: 		}
	GOTO       L_user_setup475
L_user_setup473:
;main22.c,859 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup476
;main22.c,860 :: 		led_wr_str(0, 1, "Min SWR  ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr105_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr105_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,861 :: 		led_wr_str(1, 1, SWR_str, 6);
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
;main22.c,862 :: 		asm CLRWDT;
	CLRWDT
;main22.c,863 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup477:
	DECFSZ     R13, 1
	GOTO       L_user_setup477
	DECFSZ     R12, 1
	GOTO       L_user_setup477
	DECFSZ     R11, 1
	GOTO       L_user_setup477
	NOP
	NOP
;main22.c,864 :: 		}
L_user_setup476:
L_user_setup475:
;main22.c,865 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_user_setup478
;main22.c,866 :: 		asm CLRWDT;
	CLRWDT
;main22.c,867 :: 		if(Auto_delta < 190) {
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup741
	MOVLW      190
	SUBWF      _Auto_delta+0, 0
L__user_setup741:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup479
;main22.c,868 :: 		Auto_delta = Auto_delta + 10;
	MOVLW      10
	ADDWF      _Auto_delta+0, 1
	MOVLW      0
	ADDWFC     _Auto_delta+1, 1
;main22.c,869 :: 		}
L_user_setup479:
;main22.c,870 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup480:
	DECFSZ     R13, 1
	GOTO       L_user_setup480
	DECFSZ     R12, 1
	GOTO       L_user_setup480
;main22.c,871 :: 		asm CLRWDT;
	CLRWDT
;main22.c,872 :: 		} // end of BYP button
L_user_setup478:
;main22.c,873 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
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
	GOTO       L_user_setup481
;main22.c,874 :: 		asm CLRWDT;
	CLRWDT
;main22.c,875 :: 		if(Auto_delta > 110) {
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup742
	MOVF       _Auto_delta+0, 0
	SUBLW      110
L__user_setup742:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup482
;main22.c,876 :: 		Auto_delta = Auto_delta - 10;
	MOVLW      10
	SUBWF      _Auto_delta+0, 1
	MOVLW      0
	SUBWFB     _Auto_delta+1, 1
;main22.c,877 :: 		}
L_user_setup482:
;main22.c,878 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup483:
	DECFSZ     R13, 1
	GOTO       L_user_setup483
	DECFSZ     R12, 1
	GOTO       L_user_setup483
;main22.c,879 :: 		asm CLRWDT;
	CLRWDT
;main22.c,880 :: 		}
L_user_setup481:
;main22.c,881 :: 		} // end min SWR setup
L_user_setup472:
;main22.c,882 :: 		if(usr_set == 2) {   // max PWR setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup743
	MOVLW      2
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup743:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup484
;main22.c,883 :: 		inttostr((max_for_start / 10), swr_str);
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       main22_max_for_start+0, 0
	MOVWF      R0
	MOVF       main22_max_for_start+1, 0
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
;main22.c,884 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_user_setup485
;main22.c,885 :: 		led_wr_str(0, 16, "Max PWR", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr106_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr106_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,886 :: 		asm CLRWDT;
	CLRWDT
;main22.c,887 :: 		led_wr_str(3, 6, swr_str, 6);
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
;main22.c,888 :: 		asm CLRWDT;
	CLRWDT
;main22.c,889 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup486:
	DECFSZ     R13, 1
	GOTO       L_user_setup486
	DECFSZ     R12, 1
	GOTO       L_user_setup486
	DECFSZ     R11, 1
	GOTO       L_user_setup486
	NOP
	NOP
;main22.c,890 :: 		asm CLRWDT;
	CLRWDT
;main22.c,891 :: 		}
	GOTO       L_user_setup487
L_user_setup485:
;main22.c,892 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup488
;main22.c,893 :: 		led_wr_str(0, 1, "Max PWR", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr107_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr107_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,894 :: 		led_wr_str(1, 1, SWR_str, 6);
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
;main22.c,895 :: 		asm CLRWDT;
	CLRWDT
;main22.c,896 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup489:
	DECFSZ     R13, 1
	GOTO       L_user_setup489
	DECFSZ     R12, 1
	GOTO       L_user_setup489
	DECFSZ     R11, 1
	GOTO       L_user_setup489
	NOP
	NOP
;main22.c,897 :: 		}
L_user_setup488:
L_user_setup487:
;main22.c,898 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_user_setup490
;main22.c,899 :: 		asm CLRWDT;
	CLRWDT
;main22.c,900 :: 		if(max_for_start < 900) {
	MOVLW      128
	XORWF      main22_max_for_start+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup744
	MOVLW      132
	SUBWF      main22_max_for_start+0, 0
L__user_setup744:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup491
;main22.c,901 :: 		max_for_start = max_for_start + 100;
	MOVLW      100
	ADDWF      main22_max_for_start+0, 1
	MOVLW      0
	ADDWFC     main22_max_for_start+1, 1
;main22.c,902 :: 		}
L_user_setup491:
;main22.c,903 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup492:
	DECFSZ     R13, 1
	GOTO       L_user_setup492
	DECFSZ     R12, 1
	GOTO       L_user_setup492
;main22.c,904 :: 		asm CLRWDT;
	CLRWDT
;main22.c,905 :: 		} // end of BYP button
L_user_setup490:
;main22.c,906 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
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
	GOTO       L_user_setup493
;main22.c,907 :: 		asm CLRWDT;
	CLRWDT
;main22.c,908 :: 		if(max_for_start > 0) {
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main22_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup745
	MOVF       main22_max_for_start+0, 0
	SUBLW      0
L__user_setup745:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup494
;main22.c,909 :: 		max_for_start = max_for_start - 100;
	MOVLW      100
	SUBWF      main22_max_for_start+0, 1
	MOVLW      0
	SUBWFB     main22_max_for_start+1, 1
;main22.c,910 :: 		}
L_user_setup494:
;main22.c,911 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup495:
	DECFSZ     R13, 1
	GOTO       L_user_setup495
	DECFSZ     R12, 1
	GOTO       L_user_setup495
;main22.c,912 :: 		asm CLRWDT;
	CLRWDT
;main22.c,913 :: 		}
L_user_setup493:
;main22.c,914 :: 		} // end max PWR setup
L_user_setup484:
;main22.c,915 :: 		if(usr_set == 3) {   // clear screen delay
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup746
	MOVLW      3
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup746:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup496
;main22.c,916 :: 		inttostr(Dysp_delay, swr_str);
	MOVF       _Dysp_delay+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,917 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_user_setup497
;main22.c,918 :: 		led_wr_str(0, 16, "ScrDel ", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr108_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr108_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,919 :: 		asm CLRWDT;
	CLRWDT
;main22.c,920 :: 		led_wr_str(3, 6, swr_str, 7);
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
;main22.c,921 :: 		asm CLRWDT;
	CLRWDT
;main22.c,922 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup498:
	DECFSZ     R13, 1
	GOTO       L_user_setup498
	DECFSZ     R12, 1
	GOTO       L_user_setup498
	DECFSZ     R11, 1
	GOTO       L_user_setup498
	NOP
	NOP
;main22.c,923 :: 		asm CLRWDT;
	CLRWDT
;main22.c,924 :: 		}
	GOTO       L_user_setup499
L_user_setup497:
;main22.c,925 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup500
;main22.c,926 :: 		led_wr_str(0, 1, "ScrDel ", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr109_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr109_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,927 :: 		led_wr_str(1, 1, SWR_str, 6);
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
;main22.c,928 :: 		asm CLRWDT;
	CLRWDT
;main22.c,929 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup501:
	DECFSZ     R13, 1
	GOTO       L_user_setup501
	DECFSZ     R12, 1
	GOTO       L_user_setup501
	DECFSZ     R11, 1
	GOTO       L_user_setup501
	NOP
	NOP
;main22.c,930 :: 		}
L_user_setup500:
L_user_setup499:
;main22.c,931 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_user_setup502
;main22.c,932 :: 		asm CLRWDT;
	CLRWDT
;main22.c,933 :: 		if(Dysp_delay < 90) {
	MOVLW      90
	SUBWF      _Dysp_delay+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup503
;main22.c,934 :: 		Dysp_delay = Dysp_delay + 10;
	MOVLW      10
	ADDWF      _Dysp_delay+0, 1
;main22.c,935 :: 		}
L_user_setup503:
;main22.c,936 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup504:
	DECFSZ     R13, 1
	GOTO       L_user_setup504
	DECFSZ     R12, 1
	GOTO       L_user_setup504
;main22.c,937 :: 		asm CLRWDT;
	CLRWDT
;main22.c,938 :: 		} // end of BYP button
L_user_setup502:
;main22.c,939 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
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
	GOTO       L_user_setup505
;main22.c,940 :: 		asm CLRWDT;
	CLRWDT
;main22.c,941 :: 		if(Dysp_delay > 0) {
	MOVF       _Dysp_delay+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup506
;main22.c,942 :: 		Dysp_delay = Dysp_delay - 10;
	MOVLW      10
	SUBWF      _Dysp_delay+0, 0
	MOVWF      R1
	MOVF       R1, 0
	MOVWF      _Dysp_delay+0
;main22.c,943 :: 		if (Dysp_delay < 10)
	MOVLW      10
	SUBWF      R1, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup507
;main22.c,944 :: 		Dysp_delay = 0;
	CLRF       _Dysp_delay+0
L_user_setup507:
;main22.c,945 :: 		}
L_user_setup506:
;main22.c,946 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup508:
	DECFSZ     R13, 1
	GOTO       L_user_setup508
	DECFSZ     R12, 1
	GOTO       L_user_setup508
;main22.c,947 :: 		asm CLRWDT;
	CLRWDT
;main22.c,948 :: 		}
L_user_setup505:
;main22.c,949 :: 		} // end clear screen delay setup
L_user_setup496:
;main22.c,950 :: 		if(usr_set == 4) {   // losses setup
	MOVLW      0
	XORWF      user_setup_usr_set_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup747
	MOVLW      4
	XORWF      user_setup_usr_set_L0+0, 0
L__user_setup747:
	BTFSS      STATUS+0, 2
	GOTO       L_user_setup509
;main22.c,951 :: 		inttostr(Fid_loss, swr_str);
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      user_setup_SWR_str_L0+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(user_setup_SWR_str_L0+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main22.c,952 :: 		if(type==4 | type==5) {    // 128*64 OLED
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
	GOTO       L_user_setup510
;main22.c,953 :: 		led_wr_str(0, 16, "Losses  ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr110_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr110_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,955 :: 		led_wr_str(3, 6, swr_str, 7);
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
;main22.c,957 :: 		delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup511:
	DECFSZ     R13, 1
	GOTO       L_user_setup511
	DECFSZ     R12, 1
	GOTO       L_user_setup511
	DECFSZ     R11, 1
	GOTO       L_user_setup511
	NOP
	NOP
;main22.c,958 :: 		asm CLRWDT;
	CLRWDT
;main22.c,959 :: 		}
	GOTO       L_user_setup512
L_user_setup510:
;main22.c,960 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_user_setup513
;main22.c,961 :: 		led_wr_str(0, 1, "Losses  ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr111_main22+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr111_main22+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main22.c,962 :: 		led_wr_str(1, 1, SWR_str, 6);
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
;main22.c,963 :: 		asm CLRWDT;
	CLRWDT
;main22.c,964 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_user_setup514:
	DECFSZ     R13, 1
	GOTO       L_user_setup514
	DECFSZ     R12, 1
	GOTO       L_user_setup514
	DECFSZ     R11, 1
	GOTO       L_user_setup514
	NOP
	NOP
;main22.c,965 :: 		}
L_user_setup513:
L_user_setup512:
;main22.c,966 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
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
	GOTO       L_user_setup515
;main22.c,967 :: 		asm CLRWDT;
	CLRWDT
;main22.c,968 :: 		if(Fid_loss < 99) {
	MOVLW      99
	SUBWF      _Fid_loss+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup516
;main22.c,969 :: 		Fid_loss = Fid_loss + 1;
	INCF       _Fid_loss+0, 1
;main22.c,970 :: 		}
L_user_setup516:
;main22.c,971 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup517:
	DECFSZ     R13, 1
	GOTO       L_user_setup517
	DECFSZ     R12, 1
	GOTO       L_user_setup517
;main22.c,972 :: 		asm CLRWDT;
	CLRWDT
;main22.c,973 :: 		} // end of BYP button
L_user_setup515:
;main22.c,974 :: 		if(Button(&PORTB, 1, 50, 0)){   // Auto button
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
	GOTO       L_user_setup518
;main22.c,975 :: 		asm CLRWDT;
	CLRWDT
;main22.c,976 :: 		if(Fid_loss > 0) {
	MOVF       _Fid_loss+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup519
;main22.c,977 :: 		Fid_loss = Fid_loss - 1;
	DECF       _Fid_loss+0, 1
;main22.c,978 :: 		}
L_user_setup519:
;main22.c,979 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_user_setup520:
	DECFSZ     R13, 1
	GOTO       L_user_setup520
	DECFSZ     R12, 1
	GOTO       L_user_setup520
;main22.c,980 :: 		asm CLRWDT;
	CLRWDT
;main22.c,981 :: 		}
L_user_setup518:
;main22.c,982 :: 		} // end clear screen delay setup
L_user_setup509:
;main22.c,984 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
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
	GOTO       L_user_setup521
;main22.c,985 :: 		Delay_ms(450);
	MOVLW      10
	MOVWF      R11
	MOVLW      34
	MOVWF      R12
	MOVLW      161
	MOVWF      R13
L_user_setup522:
	DECFSZ     R13, 1
	GOTO       L_user_setup522
	DECFSZ     R12, 1
	GOTO       L_user_setup522
	DECFSZ     R11, 1
	GOTO       L_user_setup522
;main22.c,986 :: 		asm CLRWDT;
	CLRWDT
;main22.c,987 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_user_setup523
;main22.c,988 :: 		usr_set ++;
	INCF       user_setup_usr_set_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       user_setup_usr_set_L0+1, 1
;main22.c,989 :: 		if (usr_set > 4)
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      user_setup_usr_set_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__user_setup748
	MOVF       user_setup_usr_set_L0+0, 0
	SUBLW      4
L__user_setup748:
	BTFSC      STATUS+0, 0
	GOTO       L_user_setup524
;main22.c,990 :: 		usr_set = 1;
	MOVLW      1
	MOVWF      user_setup_usr_set_L0+0
	MOVLW      0
	MOVWF      user_setup_usr_set_L0+1
L_user_setup524:
;main22.c,991 :: 		}
	GOTO       L_user_setup525
L_user_setup523:
;main22.c,993 :: 		asm CLRWDT;
	CLRWDT
;main22.c,994 :: 		usr_set = 0; // exit setup
	CLRF       user_setup_usr_set_L0+0
	CLRF       user_setup_usr_set_L0+1
;main22.c,995 :: 		}
L_user_setup525:
;main22.c,996 :: 		asm CLRWDT;
	CLRWDT
;main22.c,998 :: 		}  // END Tune btn
L_user_setup521:
;main22.c,1000 :: 		}
	GOTO       L_user_setup470
L_user_setup471:
;main22.c,1002 :: 		EEPROM_Write(4, dec2bcd(Auto_delta / 10));
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
;main22.c,1003 :: 		EEPROM_Write(6, dec2bcd(max_for_start / 10));
	MOVLW      10
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       main22_max_for_start+0, 0
	MOVWF      R0
	MOVF       main22_max_for_start+1, 0
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
;main22.c,1004 :: 		EEPROM_Write(50, dec2bcd(Dysp_delay));
	MOVF       _Dysp_delay+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main22.c,1005 :: 		EEPROM_Write(0x34, dec2bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main22.c,1006 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main22.c,1007 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_user_setup526:
	DECFSZ     R13, 1
	GOTO       L_user_setup526
	DECFSZ     R12, 1
	GOTO       L_user_setup526
	DECFSZ     R11, 1
	GOTO       L_user_setup526
	NOP
	NOP
;main22.c,1008 :: 		asm CLRWDT;
	CLRWDT
;main22.c,1011 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main22.c,1012 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main22.c,1013 :: 		return;
;main22.c,1014 :: 		}
L_end_user_setup:
	RETURN
; end of _user_setup

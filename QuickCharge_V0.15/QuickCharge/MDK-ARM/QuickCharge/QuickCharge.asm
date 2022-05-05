
========================================================================

** ELF Header Information

    File Name: QuickCharge\QuickCharge.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x08000189
    Flags: EF_ARM_HASENTRY (0x05000002)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Base float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armasm [4d35fa]
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armlink [4d3601]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 16

    Program header offset: 1848632 (0x001c3538)
    Section header offset: 1848664 (0x001c3558)

    Section header string table index: 15

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 21060 bytes (15948 bytes in file)
    Virtual address: 0x08000000 (Alignment 8)


========================================================================

** Section #1 'ER_IROM1' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 15620 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    20001540    @..     DCD    536876352
        0x08000004:    080001a1    ....    DCD    134218145
        0x08000008:    08002235    5"..    DCD    134226485
        0x0800000c:    08000d25    %...    DCD    134221093
        0x08000010:    08002231    1"..    DCD    134226481
        0x08000014:    08000287    ....    DCD    134218375
        0x08000018:    08003b71    q;..    DCD    134232945
        0x0800001c:    00000000    ....    DCD    0
        0x08000020:    00000000    ....    DCD    0
        0x08000024:    00000000    ....    DCD    0
        0x08000028:    00000000    ....    DCD    0
        0x0800002c:    080023d5    .#..    DCD    134226901
        0x08000030:    080004cd    ....    DCD    134218957
        0x08000034:    00000000    ....    DCD    0
        0x08000038:    08002239    9"..    DCD    134226489
        0x0800003c:    08002441    A$..    DCD    134227009
        0x08000040:    080001bb    ....    DCD    134218171
        0x08000044:    080001bb    ....    DCD    134218171
        0x08000048:    080001bb    ....    DCD    134218171
        0x0800004c:    080001bb    ....    DCD    134218171
        0x08000050:    080001bb    ....    DCD    134218171
        0x08000054:    080001bb    ....    DCD    134218171
        0x08000058:    080001bb    ....    DCD    134218171
        0x0800005c:    080001bb    ....    DCD    134218171
        0x08000060:    080001bb    ....    DCD    134218171
        0x08000064:    080001bb    ....    DCD    134218171
        0x08000068:    080001bb    ....    DCD    134218171
        0x0800006c:    080001bb    ....    DCD    134218171
        0x08000070:    080001bb    ....    DCD    134218171
        0x08000074:    080001bb    ....    DCD    134218171
        0x08000078:    080001bb    ....    DCD    134218171
        0x0800007c:    080001bb    ....    DCD    134218171
        0x08000080:    080001bb    ....    DCD    134218171
        0x08000084:    080001bb    ....    DCD    134218171
        0x08000088:    080001bb    ....    DCD    134218171
        0x0800008c:    080001bb    ....    DCD    134218171
        0x08000090:    080001bb    ....    DCD    134218171
        0x08000094:    080001bb    ....    DCD    134218171
        0x08000098:    080001bb    ....    DCD    134218171
        0x0800009c:    080001bb    ....    DCD    134218171
        0x080000a0:    080001bb    ....    DCD    134218171
        0x080000a4:    080001bb    ....    DCD    134218171
        0x080000a8:    080001bb    ....    DCD    134218171
        0x080000ac:    080001bb    ....    DCD    134218171
        0x080000b0:    080001bb    ....    DCD    134218171
        0x080000b4:    080001bb    ....    DCD    134218171
        0x080000b8:    08002575    u%..    DCD    134227317
        0x080000bc:    080001bb    ....    DCD    134218171
        0x080000c0:    080001bb    ....    DCD    134218171
        0x080000c4:    080001bb    ....    DCD    134218171
        0x080000c8:    080001bb    ....    DCD    134218171
        0x080000cc:    080001bb    ....    DCD    134218171
        0x080000d0:    080001bb    ....    DCD    134218171
        0x080000d4:    080001bb    ....    DCD    134218171
        0x080000d8:    080001bb    ....    DCD    134218171
        0x080000dc:    080001bb    ....    DCD    134218171
        0x080000e0:    080001bb    ....    DCD    134218171
        0x080000e4:    080001bb    ....    DCD    134218171
        0x080000e8:    080001bb    ....    DCD    134218171
        0x080000ec:    080001bb    ....    DCD    134218171
        0x080000f0:    080001bb    ....    DCD    134218171
        0x080000f4:    080001bb    ....    DCD    134218171
        0x080000f8:    080001bb    ....    DCD    134218171
        0x080000fc:    080001bb    ....    DCD    134218171
        0x08000100:    00000000    ....    DCD    0
        0x08000104:    00000000    ....    DCD    0
        0x08000108:    00000000    ....    DCD    0
        0x0800010c:    080001bb    ....    DCD    134218171
        0x08000110:    080001bb    ....    DCD    134218171
        0x08000114:    080001bb    ....    DCD    134218171
        0x08000118:    080001bb    ....    DCD    134218171
        0x0800011c:    080001bb    ....    DCD    134218171
        0x08000120:    080001bb    ....    DCD    134218171
        0x08000124:    080001bb    ....    DCD    134218171
        0x08000128:    080001bb    ....    DCD    134218171
        0x0800012c:    080001bb    ....    DCD    134218171
        0x08000130:    080001bb    ....    DCD    134218171
        0x08000134:    080001bb    ....    DCD    134218171
        0x08000138:    00000000    ....    DCD    0
        0x0800013c:    00000000    ....    DCD    0
        0x08000140:    080001bb    ....    DCD    134218171
        0x08000144:    080001bb    ....    DCD    134218171
        0x08000148:    080001bb    ....    DCD    134218171
        0x0800014c:    00000000    ....    DCD    0
        0x08000150:    00000000    ....    DCD    0
        0x08000154:    00000000    ....    DCD    0
        0x08000158:    00000000    ....    DCD    0
        0x0800015c:    00000000    ....    DCD    0
        0x08000160:    00000000    ....    DCD    0
        0x08000164:    00000000    ....    DCD    0
        0x08000168:    080001bb    ....    DCD    134218171
        0x0800016c:    080001bb    ....    DCD    134218171
        0x08000170:    080001bb    ....    DCD    134218171
        0x08000174:    00000000    ....    DCD    0
        0x08000178:    00000000    ....    DCD    0
        0x0800017c:    00000000    ....    DCD    0
        0x08000180:    00000000    ....    DCD    0
        0x08000184:    080001bb    ....    DCD    134218171
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x08000188:    f8dfd010    ....    LDR      sp,__lit__00000000 ; [0x800019c] = 0x20001540
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x0800018c:    f000f83e    ..>.    BL       __scatterload ; 0x800020c
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x08000190:    4800        .H      LDR      r0,[pc,#0] ; [0x8000194] = 0x8003b95
        0x08000192:    4700        .G      BX       r0
    $d
        0x08000194:    08003b95    .;..    DCD    134232981
    $t
    .ARM.Collect$$$$0000000E
    __rt_lib_shutdown_fini
        0x08000198:    f3af8000    ....    NOP.W    
    $d
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000F
    .ARM.Collect$$$$00000011
    __rt_final_cpp
    __rt_final_exit
        0x0800019c:    20001540    @..     DCD    536876352
    $t
    .text
    $v0
    Reset_Handler
        0x080001a0:    4806        .H      LDR      r0,[pc,#24] ; [0x80001bc] = 0x8002561
        0x080001a2:    4780        .G      BLX      r0
        0x080001a4:    4806        .H      LDR      r0,[pc,#24] ; [0x80001c0] = 0x8000189
        0x080001a6:    4700        .G      BX       r0
        0x080001a8:    e7fe        ..      B        0x80001a8 ; Reset_Handler + 8
        0x080001aa:    e7fe        ..      B        0x80001aa ; Reset_Handler + 10
        0x080001ac:    e7fe        ..      B        0x80001ac ; Reset_Handler + 12
        0x080001ae:    e7fe        ..      B        0x80001ae ; Reset_Handler + 14
        0x080001b0:    e7fe        ..      B        0x80001b0 ; Reset_Handler + 16
        0x080001b2:    e7fe        ..      B        0x80001b2 ; Reset_Handler + 18
        0x080001b4:    e7fe        ..      B        0x80001b4 ; Reset_Handler + 20
        0x080001b6:    e7fe        ..      B        0x80001b6 ; Reset_Handler + 22
        0x080001b8:    e7fe        ..      B        0x80001b8 ; Reset_Handler + 24
    ADC1_2_IRQHandler
    ADC3_IRQHandler
    ADC4_IRQHandler
    CAN_RX1_IRQHandler
    CAN_SCE_IRQHandler
    COMP1_2_3_IRQHandler
    COMP4_5_6_IRQHandler
    COMP7_IRQHandler
    DMA1_Channel1_IRQHandler
    DMA1_Channel2_IRQHandler
    DMA1_Channel3_IRQHandler
    DMA1_Channel4_IRQHandler
    DMA1_Channel5_IRQHandler
    DMA1_Channel6_IRQHandler
    DMA1_Channel7_IRQHandler
    DMA2_Channel1_IRQHandler
    DMA2_Channel2_IRQHandler
    DMA2_Channel3_IRQHandler
    DMA2_Channel4_IRQHandler
    DMA2_Channel5_IRQHandler
    EXTI0_IRQHandler
    EXTI15_10_IRQHandler
    EXTI1_IRQHandler
    EXTI2_TSC_IRQHandler
    EXTI3_IRQHandler
    EXTI4_IRQHandler
    EXTI9_5_IRQHandler
    FLASH_IRQHandler
    FPU_IRQHandler
    I2C1_ER_IRQHandler
    I2C1_EV_IRQHandler
    I2C2_ER_IRQHandler
    I2C2_EV_IRQHandler
    PVD_IRQHandler
    RCC_IRQHandler
    RTC_Alarm_IRQHandler
    RTC_WKUP_IRQHandler
    SPI1_IRQHandler
    SPI2_IRQHandler
    SPI3_IRQHandler
    TAMP_STAMP_IRQHandler
    TIM1_BRK_TIM15_IRQHandler
    TIM1_CC_IRQHandler
    TIM1_TRG_COM_TIM17_IRQHandler
    TIM1_UP_TIM16_IRQHandler
    TIM2_IRQHandler
    TIM3_IRQHandler
    TIM6_DAC_IRQHandler
    TIM7_IRQHandler
    TIM8_BRK_IRQHandler
    TIM8_CC_IRQHandler
    TIM8_TRG_COM_IRQHandler
    TIM8_UP_IRQHandler
    UART4_IRQHandler
    UART5_IRQHandler
    USART1_IRQHandler
    USART2_IRQHandler
    USART3_IRQHandler
    USBWakeUp_IRQHandler
    USBWakeUp_RMP_IRQHandler
    USB_HP_CAN_TX_IRQHandler
    USB_HP_IRQHandler
    USB_LP_CAN_RX0_IRQHandler
    USB_LP_IRQHandler
    WWDG_IRQHandler
        0x080001ba:    e7fe        ..      B        ADC1_2_IRQHandler ; 0x80001ba
    $d
        0x080001bc:    08002561    a%..    DCD    134227297
        0x080001c0:    08000189    ....    DCD    134218121
    $t
    .text
    __aeabi_memcpy
    __aeabi_memcpy4
    __aeabi_memcpy8
        0x080001c4:    ea400301    @...    ORR      r3,r0,r1
        0x080001c8:    079b        ..      LSLS     r3,r3,#30
        0x080001ca:    d003        ..      BEQ      0x80001d4 ; __aeabi_memcpy + 16
        0x080001cc:    e009        ..      B        0x80001e2 ; __aeabi_memcpy + 30
        0x080001ce:    c908        ..      LDM      r1!,{r3}
        0x080001d0:    1f12        ..      SUBS     r2,r2,#4
        0x080001d2:    c008        ..      STM      r0!,{r3}
        0x080001d4:    2a04        .*      CMP      r2,#4
        0x080001d6:    d2fa        ..      BCS      0x80001ce ; __aeabi_memcpy + 10
        0x080001d8:    e003        ..      B        0x80001e2 ; __aeabi_memcpy + 30
        0x080001da:    f8113b01    ...;    LDRB     r3,[r1],#1
        0x080001de:    f8003b01    ...;    STRB     r3,[r0],#1
        0x080001e2:    1e52        R.      SUBS     r2,r2,#1
        0x080001e4:    d2f9        ..      BCS      0x80001da ; __aeabi_memcpy + 22
        0x080001e6:    4770        pG      BX       lr
    .text
    __aeabi_memset
    __aeabi_memset4
    __aeabi_memset8
        0x080001e8:    b2d2        ..      UXTB     r2,r2
        0x080001ea:    e001        ..      B        0x80001f0 ; __aeabi_memset + 8
        0x080001ec:    f8002b01    ...+    STRB     r2,[r0],#1
        0x080001f0:    1e49        I.      SUBS     r1,r1,#1
        0x080001f2:    d2fb        ..      BCS      0x80001ec ; __aeabi_memset + 4
        0x080001f4:    4770        pG      BX       lr
    __aeabi_memclr
    __aeabi_memclr4
    __aeabi_memclr8
        0x080001f6:    2200        ."      MOVS     r2,#0
        0x080001f8:    e7f6        ..      B        __aeabi_memset ; 0x80001e8
    _memset$wrapper
        0x080001fa:    b510        ..      PUSH     {r4,lr}
        0x080001fc:    4613        .F      MOV      r3,r2
        0x080001fe:    460a        .F      MOV      r2,r1
        0x08000200:    4604        .F      MOV      r4,r0
        0x08000202:    4619        .F      MOV      r1,r3
        0x08000204:    f7fffff0    ....    BL       __aeabi_memset ; 0x80001e8
        0x08000208:    4620         F      MOV      r0,r4
        0x0800020a:    bd10        ..      POP      {r4,pc}
    .text
    __scatterload
    __scatterload_rt2
        0x0800020c:    4c06        .L      LDR      r4,[pc,#24] ; [0x8000228] = 0x8003ce4
        0x0800020e:    4d07        .M      LDR      r5,[pc,#28] ; [0x800022c] = 0x8003d04
        0x08000210:    e006        ..      B        0x8000220 ; __scatterload + 20
        0x08000212:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08000214:    f0400301    @...    ORR      r3,r0,#1
        0x08000218:    e8940007    ....    LDM      r4,{r0-r2}
        0x0800021c:    4798        .G      BLX      r3
        0x0800021e:    3410        .4      ADDS     r4,r4,#0x10
        0x08000220:    42ac        .B      CMP      r4,r5
        0x08000222:    d3f6        ..      BCC      0x8000212 ; __scatterload + 6
        0x08000224:    f7ffffb4    ....    BL       __main_after_scatterload ; 0x8000190
    $d
        0x08000228:    08003ce4    .<..    DCD    134233316
        0x0800022c:    08003d04    .=..    DCD    134233348
    $t
    .text
    __decompress
    __decompress1
        0x08000230:    b570        p.      PUSH     {r4-r6,lr}
        0x08000232:    188c        ..      ADDS     r4,r1,r2
        0x08000234:    f8105b01    ...[    LDRB     r5,[r0],#1
        0x08000238:    f0150307    ....    ANDS     r3,r5,#7
        0x0800023c:    d101        ..      BNE      0x8000242 ; __decompress + 18
        0x0800023e:    f8103b01    ...;    LDRB     r3,[r0],#1
        0x08000242:    112a        *.      ASRS     r2,r5,#4
        0x08000244:    d106        ..      BNE      0x8000254 ; __decompress + 36
        0x08000246:    f8102b01    ...+    LDRB     r2,[r0],#1
        0x0800024a:    e003        ..      B        0x8000254 ; __decompress + 36
        0x0800024c:    f8106b01    ...k    LDRB     r6,[r0],#1
        0x08000250:    f8016b01    ...k    STRB     r6,[r1],#1
        0x08000254:    1e5b        [.      SUBS     r3,r3,#1
        0x08000256:    d1f9        ..      BNE      0x800024c ; __decompress + 28
        0x08000258:    072b        +.      LSLS     r3,r5,#28
        0x0800025a:    d405        ..      BMI      0x8000268 ; __decompress + 56
        0x0800025c:    2300        .#      MOVS     r3,#0
        0x0800025e:    1e52        R.      SUBS     r2,r2,#1
        0x08000260:    d40d        ..      BMI      0x800027e ; __decompress + 78
        0x08000262:    f8013b01    ...;    STRB     r3,[r1],#1
        0x08000266:    e7fa        ..      B        0x800025e ; __decompress + 46
        0x08000268:    f8103b01    ...;    LDRB     r3,[r0],#1
        0x0800026c:    1acb        ..      SUBS     r3,r1,r3
        0x0800026e:    1c92        ..      ADDS     r2,r2,#2
        0x08000270:    e003        ..      B        0x800027a ; __decompress + 74
        0x08000272:    f8135b01    ...[    LDRB     r5,[r3],#1
        0x08000276:    f8015b01    ...[    STRB     r5,[r1],#1
        0x0800027a:    1e52        R.      SUBS     r2,r2,#1
        0x0800027c:    d5f9        ..      BPL      0x8000272 ; __decompress + 66
        0x0800027e:    42a1        .B      CMP      r1,r4
        0x08000280:    d3d8        ..      BCC      0x8000234 ; __decompress + 4
        0x08000282:    2000        .       MOVS     r0,#0
        0x08000284:    bd70        p.      POP      {r4-r6,pc}
    i.BusFault_Handler
    BusFault_Handler
        0x08000286:    bf00        ..      NOP      
        0x08000288:    e7fe        ..      B        0x8000288 ; BusFault_Handler + 2
        0x0800028a:    0000        ..      MOVS     r0,r0
    i.CRC_Handle_8
    CRC_Handle_8
        0x0800028c:    b570        p.      PUSH     {r4-r6,lr}
        0x0800028e:    4602        .F      MOV      r2,r0
        0x08000290:    460b        .F      MOV      r3,r1
        0x08000292:    2100        .!      MOVS     r1,#0
        0x08000294:    e013        ..      B        0x80002be ; CRC_Handle_8 + 50
        0x08000296:    f8120021    ..!.    LDRB     r0,[r2,r1,LSL #2]
        0x0800029a:    0606        ..      LSLS     r6,r0,#24
        0x0800029c:    0088        ..      LSLS     r0,r1,#2
        0x0800029e:    1c40        @.      ADDS     r0,r0,#1
        0x080002a0:    5c10        .\      LDRB     r0,[r2,r0]
        0x080002a2:    ea464600    F..F    ORR      r6,r6,r0,LSL #16
        0x080002a6:    0088        ..      LSLS     r0,r1,#2
        0x080002a8:    1c80        ..      ADDS     r0,r0,#2
        0x080002aa:    5c10        .\      LDRB     r0,[r2,r0]
        0x080002ac:    ea462000    F..     ORR      r0,r6,r0,LSL #8
        0x080002b0:    008e        ..      LSLS     r6,r1,#2
        0x080002b2:    1cf6        ..      ADDS     r6,r6,#3
        0x080002b4:    5d96        .]      LDRB     r6,[r2,r6]
        0x080002b6:    4330        0C      ORRS     r0,r0,r6
        0x080002b8:    4e1b        .N      LDR      r6,[pc,#108] ; [0x8000328] = 0x40023000
        0x080002ba:    6030        0`      STR      r0,[r6,#0]
        0x080002bc:    1c49        I.      ADDS     r1,r1,#1
        0x080002be:    ebb10f93    ....    CMP      r1,r3,LSR #2
        0x080002c2:    d3e8        ..      BCC      0x8000296 ; CRC_Handle_8 + 10
        0x080002c4:    f0030003    ....    AND      r0,r3,#3
        0x080002c8:    b350        P.      CBZ      r0,0x8000320 ; CRC_Handle_8 + 148
        0x080002ca:    f0030003    ....    AND      r0,r3,#3
        0x080002ce:    2801        .(      CMP      r0,#1
        0x080002d0:    d104        ..      BNE      0x80002dc ; CRC_Handle_8 + 80
        0x080002d2:    f8120021    ..!.    LDRB     r0,[r2,r1,LSL #2]
        0x080002d6:    4e14        .N      LDR      r6,[pc,#80] ; [0x8000328] = 0x40023000
        0x080002d8:    6836        6h      LDR      r6,[r6,#0]
        0x080002da:    7030        0p      STRB     r0,[r6,#0]
        0x080002dc:    f0030003    ....    AND      r0,r3,#3
        0x080002e0:    2802        .(      CMP      r0,#2
        0x080002e2:    d109        ..      BNE      0x80002f8 ; CRC_Handle_8 + 108
        0x080002e4:    0088        ..      LSLS     r0,r1,#2
        0x080002e6:    1c40        @.      ADDS     r0,r0,#1
        0x080002e8:    5c10        .\      LDRB     r0,[r2,r0]
        0x080002ea:    f8126021    ..!`    LDRB     r6,[r2,r1,LSL #2]
        0x080002ee:    ea402506    @..%    ORR      r5,r0,r6,LSL #8
        0x080002f2:    480d        .H      LDR      r0,[pc,#52] ; [0x8000328] = 0x40023000
        0x080002f4:    6804        .h      LDR      r4,[r0,#0]
        0x080002f6:    8025        %.      STRH     r5,[r4,#0]
        0x080002f8:    f0030003    ....    AND      r0,r3,#3
        0x080002fc:    2803        .(      CMP      r0,#3
        0x080002fe:    d10f        ..      BNE      0x8000320 ; CRC_Handle_8 + 148
        0x08000300:    0088        ..      LSLS     r0,r1,#2
        0x08000302:    1c40        @.      ADDS     r0,r0,#1
        0x08000304:    5c10        .\      LDRB     r0,[r2,r0]
        0x08000306:    f8126021    ..!`    LDRB     r6,[r2,r1,LSL #2]
        0x0800030a:    ea402506    @..%    ORR      r5,r0,r6,LSL #8
        0x0800030e:    4806        .H      LDR      r0,[pc,#24] ; [0x8000328] = 0x40023000
        0x08000310:    6804        .h      LDR      r4,[r0,#0]
        0x08000312:    8025        %.      STRH     r5,[r4,#0]
        0x08000314:    0088        ..      LSLS     r0,r1,#2
        0x08000316:    1c80        ..      ADDS     r0,r0,#2
        0x08000318:    5c10        .\      LDRB     r0,[r2,r0]
        0x0800031a:    4e03        .N      LDR      r6,[pc,#12] ; [0x8000328] = 0x40023000
        0x0800031c:    6836        6h      LDR      r6,[r6,#0]
        0x0800031e:    7030        0p      STRB     r0,[r6,#0]
        0x08000320:    4801        .H      LDR      r0,[pc,#4] ; [0x8000328] = 0x40023000
        0x08000322:    6800        .h      LDR      r0,[r0,#0]
        0x08000324:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08000326:    0000        ..      DCW    0
        0x08000328:    40023000    .0.@    DCD    1073885184
    $t
    i.DPM_FindVoltageIndex
    DPM_FindVoltageIndex
        0x0800032c:    e92d41fe    -..A    PUSH     {r1-r8,lr}
        0x08000330:    4604        .F      MOV      r4,r0
        0x08000332:    27ff        .'      MOVS     r7,#0xff
        0x08000334:    2000        .       MOVS     r0,#0
        0x08000336:    9000        ..      STR      r0,[sp,#0]
        0x08000338:    2600        .&      MOVS     r6,#0
        0x0800033a:    4680        .F      MOV      r8,r0
        0x0800033c:    9001        ..      STR      r0,[sp,#4]
        0x0800033e:    2500        .%      MOVS     r5,#0
        0x08000340:    e023        #.      B        0x800038a ; DPM_FindVoltageIndex + 94
        0x08000342:    481e        .H      LDR      r0,[pc,#120] ; [0x80003bc] = 0x20001104
        0x08000344:    f8500025    P.%.    LDR      r0,[r0,r5,LSL #2]
        0x08000348:    9002        ..      STR      r0,[sp,#8]
        0x0800034a:    2000        .       MOVS     r0,#0
        0x0800034c:    9000        ..      STR      r0,[sp,#0]
        0x0800034e:    466a        jF      MOV      r2,sp
        0x08000350:    a901        ..      ADD      r1,sp,#4
        0x08000352:    9802        ..      LDR      r0,[sp,#8]
        0x08000354:    f002fa46    ..F.    BL       USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO ; 0x80027e4
        0x08000358:    2801        .(      CMP      r0,#1
        0x0800035a:    d115        ..      BNE      0x8000388 ; DPM_FindVoltageIndex + 92
        0x0800035c:    9800        ..      LDR      r0,[sp,#0]
        0x0800035e:    42b0        .B      CMP      r0,r6
        0x08000360:    d312        ..      BCC      0x8000388 ; DPM_FindVoltageIndex + 92
        0x08000362:    4817        .H      LDR      r0,[pc,#92] ; [0x80003c0] = 0x20000028
        0x08000364:    68c0        .h      LDR      r0,[r0,#0xc]
        0x08000366:    9901        ..      LDR      r1,[sp,#4]
        0x08000368:    4288        .B      CMP      r0,r1
        0x0800036a:    d80d        ..      BHI      0x8000388 ; DPM_FindVoltageIndex + 92
        0x0800036c:    4814        .H      LDR      r0,[pc,#80] ; [0x80003c0] = 0x20000028
        0x0800036e:    6880        .h      LDR      r0,[r0,#8]
        0x08000370:    9901        ..      LDR      r1,[sp,#4]
        0x08000372:    4288        .B      CMP      r0,r1
        0x08000374:    d308        ..      BCC      0x8000388 ; DPM_FindVoltageIndex + 92
        0x08000376:    4812        .H      LDR      r0,[pc,#72] ; [0x80003c0] = 0x20000028
        0x08000378:    6940        @i      LDR      r0,[r0,#0x14]
        0x0800037a:    9900        ..      LDR      r1,[sp,#0]
        0x0800037c:    4288        .B      CMP      r0,r1
        0x0800037e:    d303        ..      BCC      0x8000388 ; DPM_FindVoltageIndex + 92
        0x08000380:    462f        /F      MOV      r7,r5
        0x08000382:    9e00        ..      LDR      r6,[sp,#0]
        0x08000384:    f8dd8004    ....    LDR      r8,[sp,#4]
        0x08000388:    1c6d        m.      ADDS     r5,r5,#1
        0x0800038a:    480e        .H      LDR      r0,[pc,#56] ; [0x80003c4] = 0x200001b4
        0x0800038c:    6800        .h      LDR      r0,[r0,#0]
        0x0800038e:    4285        .B      CMP      r5,r0
        0x08000390:    d3d7        ..      BCC      0x8000342 ; DPM_FindVoltageIndex + 22
        0x08000392:    2fff        ./      CMP      r7,#0xff
        0x08000394:    d00f        ..      BEQ      0x80003b6 ; DPM_FindVoltageIndex + 138
        0x08000396:    480a        .H      LDR      r0,[pc,#40] ; [0x80003c0] = 0x20000028
        0x08000398:    6800        .h      LDR      r0,[r0,#0]
        0x0800039a:    6060        ``      STR      r0,[r4,#4]
        0x0800039c:    f44f707a    O.zp    MOV      r0,#0x3e8
        0x080003a0:    4370        pC      MULS     r0,r6,r0
        0x080003a2:    9901        ..      LDR      r1,[sp,#4]
        0x080003a4:    fbb0f0f1    ....    UDIV     r0,r0,r1
        0x080003a8:    60a0        .`      STR      r0,[r4,#8]
        0x080003aa:    4805        .H      LDR      r0,[pc,#20] ; [0x80003c0] = 0x20000028
        0x080003ac:    6940        @i      LDR      r0,[r0,#0x14]
        0x080003ae:    60e0        .`      STR      r0,[r4,#0xc]
        0x080003b0:    6126        &a      STR      r6,[r4,#0x10]
        0x080003b2:    f8c48000    ....    STR      r8,[r4,#0]
        0x080003b6:    4638        8F      MOV      r0,r7
        0x080003b8:    e8bd81fe    ....    POP      {r1-r8,pc}
    $d
        0x080003bc:    20001104    ...     DCD    536875268
        0x080003c0:    20000028    (..     DCD    536870952
        0x080003c4:    200001b4    ...     DCD    536871348
    $t
    i.DPM_SNK_BuildRDOfromSelectedFixedPDO
    DPM_SNK_BuildRDOfromSelectedFixedPDO
        0x080003c8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x080003ca:    460b        .F      MOV      r3,r1
        0x080003cc:    2400        .$      MOVS     r4,#0
        0x080003ce:    2500        .%      MOVS     r5,#0
        0x080003d0:    2100        .!      MOVS     r1,#0
        0x080003d2:    2602        .&      MOVS     r6,#2
        0x080003d4:    2700        .'      MOVS     r7,#0
        0x080003d6:    6017        .`      STR      r7,[r2,#0]
        0x080003d8:    4f39        9O      LDR      r7,[pc,#228] ; [0x80004c0] = 0x20001104
        0x080003da:    683f        ?h      LDR      r7,[r7,#0]
        0x080003dc:    9700        ..      STR      r7,[sp,#0]
        0x080003de:    b11e        ..      CBZ      r6,0x80003e8 ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 32
        0x080003e0:    4f38        8O      LDR      r7,[pc,#224] ; [0x80004c4] = 0x200001b4
        0x080003e2:    683f        ?h      LDR      r7,[r7,#0]
        0x080003e4:    42b8        .B      CMP      r0,r7
        0x080003e6:    d321        !.      BCC      0x800042c ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 100
        0x080003e8:    6817        .h      LDR      r7,[r2,#0]
        0x080003ea:    f02747e0    '..G    BIC      r7,r7,#0x70000000
        0x080003ee:    f1075780    ...W    ADD      r7,r7,#0x10000000
        0x080003f2:    6017        .`      STR      r7,[r2,#0]
        0x080003f4:    9f00        ..      LDR      r7,[sp,#0]
        0x080003f6:    f8d2c000    ....    LDR      r12,[r2,#0]
        0x080003fa:    f3672c93    g..,    BFI      r12,r7,#10,#10
        0x080003fe:    f8c2c000    ....    STR      r12,[r2,#0]
        0x08000402:    4f31        1O      LDR      r7,[pc,#196] ; [0x80004c8] = 0x20000028
        0x08000404:    683f        ?h      LDR      r7,[r7,#0]
        0x08000406:    f04f0c0a    O...    MOV      r12,#0xa
        0x0800040a:    fbb7fcfc    ....    UDIV     r12,r7,r12
        0x0800040e:    6817        .h      LDR      r7,[r2,#0]
        0x08000410:    f36c0709    l...    BFI      r7,r12,#0,#10
        0x08000414:    6017        .`      STR      r7,[r2,#0]
        0x08000416:    6817        .h      LDR      r7,[r2,#0]
        0x08000418:    f0276780    '..g    BIC      r7,r7,#0x4000000
        0x0800041c:    f1076780    ...g    ADD      r7,r7,#0x4000000
        0x08000420:    6017        .`      STR      r7,[r2,#0]
        0x08000422:    6817        .h      LDR      r7,[r2,#0]
        0x08000424:    f0277700    '..w    BIC      r7,r7,#0x2000000
        0x08000428:    6017        .`      STR      r7,[r2,#0]
        0x0800042a:    bdf8        ..      POP      {r3-r7,pc}
        0x0800042c:    1c47        G.      ADDS     r7,r0,#1
        0x0800042e:    f8d2c000    ....    LDR      r12,[r2,#0]
        0x08000432:    f3677c1e    g..|    BFI      r12,r7,#28,#3
        0x08000436:    f8c2c000    ....    STR      r12,[r2,#0]
        0x0800043a:    6817        .h      LDR      r7,[r2,#0]
        0x0800043c:    f0277780    '..w    BIC      r7,r7,#0x1000000
        0x08000440:    f1077780    ...w    ADD      r7,r7,#0x1000000
        0x08000444:    6017        .`      STR      r7,[r2,#0]
        0x08000446:    4f1e        .O      LDR      r7,[pc,#120] ; [0x80004c0] = 0x20001104
        0x08000448:    f8577020    W. p    LDR      r7,[r7,r0,LSL #2]
        0x0800044c:    9700        ..      STR      r7,[sp,#0]
        0x0800044e:    681c        .h      LDR      r4,[r3,#0]
        0x08000450:    6899        .h      LDR      r1,[r3,#8]
        0x08000452:    9f00        ..      LDR      r7,[sp,#0]
        0x08000454:    0fbf        ..      LSRS     r7,r7,#30
        0x08000456:    bb87        ..      CBNZ     r7,0x80004ba ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 242
        0x08000458:    4f1b        .O      LDR      r7,[pc,#108] ; [0x80004c8] = 0x20000028
        0x0800045a:    683f        ?h      LDR      r7,[r7,#0]
        0x0800045c:    428f        .B      CMP      r7,r1
        0x0800045e:    d202        ..      BCS      0x8000466 ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 158
        0x08000460:    4f19        .O      LDR      r7,[pc,#100] ; [0x80004c8] = 0x20000028
        0x08000462:    683f        ?h      LDR      r7,[r7,#0]
        0x08000464:    e000        ..      B        0x8000468 ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 160
        0x08000466:    460f        .F      MOV      r7,r1
        0x08000468:    4639        9F      MOV      r1,r7
        0x0800046a:    fb01f704    ....    MUL      r7,r1,r4
        0x0800046e:    f44f7c7a    O.z|    MOV      r12,#0x3e8
        0x08000472:    fbb7f5fc    ....    UDIV     r5,r7,r12
        0x08000476:    270a        .'      MOVS     r7,#0xa
        0x08000478:    fbb1fcf7    ....    UDIV     r12,r1,r7
        0x0800047c:    6817        .h      LDR      r7,[r2,#0]
        0x0800047e:    f36c2793    l..'    BFI      r7,r12,#10,#10
        0x08000482:    6017        .`      STR      r7,[r2,#0]
        0x08000484:    270a        .'      MOVS     r7,#0xa
        0x08000486:    fbb1fcf7    ....    UDIV     r12,r1,r7
        0x0800048a:    6817        .h      LDR      r7,[r2,#0]
        0x0800048c:    f36c0709    l...    BFI      r7,r12,#0,#10
        0x08000490:    6017        .`      STR      r7,[r2,#0]
        0x08000492:    4f0d        .O      LDR      r7,[pc,#52] ; [0x80004c8] = 0x20000028
        0x08000494:    693f        ?i      LDR      r7,[r7,#0x10]
        0x08000496:    42af        .B      CMP      r7,r5
        0x08000498:    d90f        ..      BLS      0x80004ba ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 242
        0x0800049a:    4f0b        .O      LDR      r7,[pc,#44] ; [0x80004c8] = 0x20000028
        0x0800049c:    683f        ?h      LDR      r7,[r7,#0]
        0x0800049e:    f04f0c0a    O...    MOV      r12,#0xa
        0x080004a2:    fbb7fcfc    ....    UDIV     r12,r7,r12
        0x080004a6:    6817        .h      LDR      r7,[r2,#0]
        0x080004a8:    f36c0709    l...    BFI      r7,r12,#0,#10
        0x080004ac:    6017        .`      STR      r7,[r2,#0]
        0x080004ae:    6817        .h      LDR      r7,[r2,#0]
        0x080004b0:    f0276780    '..g    BIC      r7,r7,#0x4000000
        0x080004b4:    f1076780    ...g    ADD      r7,r7,#0x4000000
        0x080004b8:    6017        .`      STR      r7,[r2,#0]
        0x080004ba:    bf00        ..      NOP      
        0x080004bc:    e7b5        ..      B        0x800042a ; DPM_SNK_BuildRDOfromSelectedFixedPDO + 98
    $d
        0x080004be:    0000        ..      DCW    0
        0x080004c0:    20001104    ...     DCD    536875268
        0x080004c4:    200001b4    ...     DCD    536871348
        0x080004c8:    20000028    (..     DCD    536870952
    $t
    i.DebugMon_Handler
    DebugMon_Handler
        0x080004cc:    4770        pG      BX       lr
    i.Error_Handler
    Error_Handler
        0x080004ce:    b672        r.      CPSID    i
        0x080004d0:    bf00        ..      NOP      
        0x080004d2:    e7fe        ..      B        0x80004d2 ; Error_Handler + 4
    i.GetAverageValue
    GetAverageValue
        0x080004d4:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x080004d8:    4604        .F      MOV      r4,r0
        0x080004da:    460d        .F      MOV      r5,r1
        0x080004dc:    2700        .'      MOVS     r7,#0
        0x080004de:    2600        .&      MOVS     r6,#0
        0x080004e0:    e005        ..      B        0x80004ee ; GetAverageValue + 26
        0x080004e2:    4628        (F      MOV      r0,r5
        0x080004e4:    f000f847    ..G.    BL       GetInstantValue ; 0x8000576
        0x080004e8:    4407        .D      ADD      r7,r7,r0
        0x080004ea:    1c70        p.      ADDS     r0,r6,#1
        0x080004ec:    b2c6        ..      UXTB     r6,r0
        0x080004ee:    42a6        .B      CMP      r6,r4
        0x080004f0:    dbf7        ..      BLT      0x80004e2 ; GetAverageValue + 14
        0x080004f2:    fbb7f0f4    ....    UDIV     r0,r7,r4
        0x080004f6:    fa1ff880    ....    UXTH     r8,r0
        0x080004fa:    4640        @F      MOV      r0,r8
        0x080004fc:    e8bd81f0    ....    POP      {r4-r8,pc}
    i.GetEvent
    GetEvent
        0x08000500:    b570        p.      PUSH     {r4-r6,lr}
        0x08000502:    4604        .F      MOV      r4,r0
        0x08000504:    460d        .F      MOV      r5,r1
        0x08000506:    2600        .&      MOVS     r6,#0
        0x08000508:    4804        .H      LDR      r0,[pc,#16] ; [0x800051c] = 0x200000dc
        0x0800050a:    eb001004    ....    ADD      r0,r0,r4,LSL #4
        0x0800050e:    6881        .h      LDR      r1,[r0,#8]
        0x08000510:    4628        (F      MOV      r0,r5
        0x08000512:    4788        .G      BLX      r1
        0x08000514:    b100        ..      CBZ      r0,0x8000518 ; GetEvent + 24
        0x08000516:    2601        .&      MOVS     r6,#1
        0x08000518:    4630        0F      MOV      r0,r6
        0x0800051a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x0800051c:    200000dc    ...     DCD    536871132
    $t
    i.GetInstantCC1Voltage
    GetInstantCC1Voltage
        0x08000520:    b510        ..      PUSH     {r4,lr}
        0x08000522:    4902        .I      LDR      r1,[pc,#8] ; [0x800052c] = 0xc900008
        0x08000524:    2014        .       MOVS     r0,#0x14
        0x08000526:    f000fbff    ....    BL       HwAdcSample ; 0x8000d28
        0x0800052a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800052c:    0c900008    ....    DCD    210763784
    $t
    i.GetInstantCC2Voltage
    GetInstantCC2Voltage
        0x08000530:    b510        ..      PUSH     {r4,lr}
        0x08000532:    4902        .I      LDR      r1,[pc,#8] ; [0x800053c] = 0x10c00010
        0x08000534:    2014        .       MOVS     r0,#0x14
        0x08000536:    f000fbf7    ....    BL       HwAdcSample ; 0x8000d28
        0x0800053a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800053c:    10c00010    ....    DCD    281018384
    $t
    i.GetInstantDNVoltage
    GetInstantDNVoltage
        0x08000540:    b510        ..      PUSH     {r4,lr}
        0x08000542:    4902        .I      LDR      r1,[pc,#8] ; [0x800054c] = 0x14f00020
        0x08000544:    2014        .       MOVS     r0,#0x14
        0x08000546:    f000fbef    ....    BL       HwAdcSample ; 0x8000d28
        0x0800054a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800054c:    14f00020     ...    DCD    351272992
    $t
    i.GetInstantDPVoltage
    GetInstantDPVoltage
        0x08000550:    b510        ..      PUSH     {r4,lr}
        0x08000552:    4902        .I      LDR      r1,[pc,#8] ; [0x800055c] = 0x2e300800
        0x08000554:    2014        .       MOVS     r0,#0x14
        0x08000556:    f000fbe7    ....    BL       HwAdcSample ; 0x8000d28
        0x0800055a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800055c:    2e300800    ..0.    DCD    774899712
    $t
    i.GetInstantVBUSCurrent
    GetInstantVBUSCurrent
        0x08000560:    b510        ..      PUSH     {r4,lr}
        0x08000562:    4902        .I      LDR      r1,[pc,#8] ; [0x800056c] = 0x8600004
        0x08000564:    2014        .       MOVS     r0,#0x14
        0x08000566:    f000fbdf    ....    BL       HwAdcSample ; 0x8000d28
        0x0800056a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800056c:    08600004    ..`.    DCD    140509188
    $t
    i.GetInstantVBUSVoltage
    GetInstantVBUSVoltage
        0x08000570:    f2413088    A..0    MOV      r0,#0x1388
        0x08000574:    4770        pG      BX       lr
    i.GetInstantValue
    GetInstantValue
        0x08000576:    b570        p.      PUSH     {r4-r6,lr}
        0x08000578:    4604        .F      MOV      r4,r0
        0x0800057a:    2500        .%      MOVS     r5,#0
        0x0800057c:    2c06        .,      CMP      r4,#6
        0x0800057e:    d21c        ..      BCS      0x80005ba ; GetInstantValue + 68
        0x08000580:    e8dff004    ....    TBB      [pc,r4]
    $d
        0x08000584:    0f0b0703    ....    DCD    252380931
        0x08000588:    1713        ..      DCW    5907
    $t
        0x0800058a:    f7fffff1    ....    BL       GetInstantVBUSVoltage ; 0x8000570
        0x0800058e:    4605        .F      MOV      r5,r0
        0x08000590:    e014        ..      B        0x80005bc ; GetInstantValue + 70
        0x08000592:    f7ffffe5    ....    BL       GetInstantVBUSCurrent ; 0x8000560
        0x08000596:    4605        .F      MOV      r5,r0
        0x08000598:    e010        ..      B        0x80005bc ; GetInstantValue + 70
        0x0800059a:    f7ffffd9    ....    BL       GetInstantDPVoltage ; 0x8000550
        0x0800059e:    4605        .F      MOV      r5,r0
        0x080005a0:    e00c        ..      B        0x80005bc ; GetInstantValue + 70
        0x080005a2:    f7ffffcd    ....    BL       GetInstantDNVoltage ; 0x8000540
        0x080005a6:    4605        .F      MOV      r5,r0
        0x080005a8:    e008        ..      B        0x80005bc ; GetInstantValue + 70
        0x080005aa:    f7ffffb9    ....    BL       GetInstantCC1Voltage ; 0x8000520
        0x080005ae:    4605        .F      MOV      r5,r0
        0x080005b0:    e004        ..      B        0x80005bc ; GetInstantValue + 70
        0x080005b2:    f7ffffbd    ....    BL       GetInstantCC2Voltage ; 0x8000530
        0x080005b6:    4605        .F      MOV      r5,r0
        0x080005b8:    e000        ..      B        0x80005bc ; GetInstantValue + 70
        0x080005ba:    bf00        ..      NOP      
        0x080005bc:    bf00        ..      NOP      
        0x080005be:    4628        (F      MOV      r0,r5
        0x080005c0:    bd70        p.      POP      {r4-r6,pc}
        0x080005c2:    0000        ..      MOVS     r0,r0
    i.HAL_Delay
    HAL_Delay
        0x080005c4:    b570        p.      PUSH     {r4-r6,lr}
        0x080005c6:    4604        .F      MOV      r4,r0
        0x080005c8:    f000f916    ....    BL       HAL_GetTick ; 0x80007f8
        0x080005cc:    4605        .F      MOV      r5,r0
        0x080005ce:    f1b43fff    ...?    CMP      r4,#0xffffffff
        0x080005d2:    d002        ..      BEQ      0x80005da ; HAL_Delay + 22
        0x080005d4:    4804        .H      LDR      r0,[pc,#16] ; [0x80005e8] = 0x20000224
        0x080005d6:    7800        .x      LDRB     r0,[r0,#0]
        0x080005d8:    4404        .D      ADD      r4,r4,r0
        0x080005da:    f000f90d    ....    BL       HAL_GetTick ; 0x80007f8
        0x080005de:    1b40        @.      SUBS     r0,r0,r5
        0x080005e0:    42a0        .B      CMP      r0,r4
        0x080005e2:    d3fa        ..      BCC      0x80005da ; HAL_Delay + 22
        0x080005e4:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080005e6:    0000        ..      DCW    0
        0x080005e8:    20000224    $..     DCD    536871460
    $t
    i.HAL_GPIO_Init
    HAL_GPIO_Init
        0x080005ec:    e92d4ff8    -..O    PUSH     {r3-r11,lr}
        0x080005f0:    2200        ."      MOVS     r2,#0
        0x080005f2:    680b        .h      LDR      r3,[r1,#0]
        0x080005f4:    2b00        .+      CMP      r3,#0
        0x080005f6:    d07c        |.      BEQ      0x80006f2 ; HAL_GPIO_Init + 262
        0x080005f8:    f8dfa1f0    ....    LDR      r10,[pc,#496] ; [0x80007ec] = 0x40010400
        0x080005fc:    f8df91e8    ....    LDR      r9,[pc,#488] ; [0x80007e8] = 0x40021000
        0x08000600:    f04f0e01    O...    MOV      lr,#1
        0x08000604:    2703        .'      MOVS     r7,#3
        0x08000606:    f04f080f    O...    MOV      r8,#0xf
        0x0800060a:    f10a0b04    ....    ADD      r11,r10,#4
        0x0800060e:    680b        .h      LDR      r3,[r1,#0]
        0x08000610:    fa0ef402    ....    LSL      r4,lr,r2
        0x08000614:    4023        #@      ANDS     r3,r3,r4
        0x08000616:    2b00        .+      CMP      r3,#0
        0x08000618:    d06c        l.      BEQ      0x80006f4 ; HAL_GPIO_Init + 264
        0x0800061a:    f891c004    ....    LDRB     r12,[r1,#4]
        0x0800061e:    f00c0c03    ....    AND      r12,r12,#3
        0x08000622:    f1bc0f01    ....    CMP      r12,#1
        0x08000626:    d002        ..      BEQ      0x800062e ; HAL_GPIO_Init + 66
        0x08000628:    f1bc0f02    ....    CMP      r12,#2
        0x0800062c:    d118        ..      BNE      0x8000660 ; HAL_GPIO_Init + 116
        0x0800062e:    6885        .h      LDR      r5,[r0,#8]
        0x08000630:    ea4f0c42    O.B.    LSL      r12,r2,#1
        0x08000634:    fa07f60c    ....    LSL      r6,r7,r12
        0x08000638:    43b5        .C      BICS     r5,r5,r6
        0x0800063a:    68ce        .h      LDR      r6,[r1,#0xc]
        0x0800063c:    fa06fc0c    ....    LSL      r12,r6,r12
        0x08000640:    ea4c0c05    L...    ORR      r12,r12,r5
        0x08000644:    f8c0c008    ....    STR      r12,[r0,#8]
        0x08000648:    f8d0c004    ....    LDR      r12,[r0,#4]
        0x0800064c:    ea2c0c04    ,...    BIC      r12,r12,r4
        0x08000650:    790c        .y      LDRB     r4,[r1,#4]
        0x08000652:    f3c41400    ....    UBFX     r4,r4,#4,#1
        0x08000656:    4094        .@      LSLS     r4,r4,r2
        0x08000658:    ea440c0c    D...    ORR      r12,r4,r12
        0x0800065c:    f8c0c004    ....    STR      r12,[r0,#4]
        0x08000660:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x08000664:    ea370c0c    7...    BICS     r12,r7,r12
        0x08000668:    d00c        ..      BEQ      0x8000684 ; HAL_GPIO_Init + 152
        0x0800066a:    68c4        .h      LDR      r4,[r0,#0xc]
        0x0800066c:    ea4f0c42    O.B.    LSL      r12,r2,#1
        0x08000670:    fa07f50c    ....    LSL      r5,r7,r12
        0x08000674:    43ac        .C      BICS     r4,r4,r5
        0x08000676:    688d        .h      LDR      r5,[r1,#8]
        0x08000678:    fa05fc0c    ....    LSL      r12,r5,r12
        0x0800067c:    ea4c0c04    L...    ORR      r12,r12,r4
        0x08000680:    f8c0c00c    ....    STR      r12,[r0,#0xc]
        0x08000684:    f891c004    ....    LDRB     r12,[r1,#4]
        0x08000688:    f00c0c03    ....    AND      r12,r12,#3
        0x0800068c:    f1bc0f02    ....    CMP      r12,#2
        0x08000690:    d112        ..      BNE      0x80006b8 ; HAL_GPIO_Init + 204
        0x08000692:    ea4f0cd2    O...    LSR      r12,r2,#3
        0x08000696:    eb00048c    ....    ADD      r4,r0,r12,LSL #2
        0x0800069a:    6a25        %j      LDR      r5,[r4,#0x20]
        0x0800069c:    ea4f7c42    O.B|    LSL      r12,r2,#29
        0x080006a0:    ea4f6cdc    O..l    LSR      r12,r12,#27
        0x080006a4:    fa08f60c    ....    LSL      r6,r8,r12
        0x080006a8:    43b5        .C      BICS     r5,r5,r6
        0x080006aa:    690e        .i      LDR      r6,[r1,#0x10]
        0x080006ac:    fa06fc0c    ....    LSL      r12,r6,r12
        0x080006b0:    ea4c0c05    L...    ORR      r12,r12,r5
        0x080006b4:    f8c4c020    .. .    STR      r12,[r4,#0x20]
        0x080006b8:    6804        .h      LDR      r4,[r0,#0]
        0x080006ba:    ea4f0c42    O.B.    LSL      r12,r2,#1
        0x080006be:    fa07f50c    ....    LSL      r5,r7,r12
        0x080006c2:    43ac        .C      BICS     r4,r4,r5
        0x080006c4:    790d        .y      LDRB     r5,[r1,#4]
        0x080006c6:    f0050503    ....    AND      r5,r5,#3
        0x080006ca:    fa05fc0c    ....    LSL      r12,r5,r12
        0x080006ce:    ea4c0c04    L...    ORR      r12,r12,r4
        0x080006d2:    f8c0c000    ....    STR      r12,[r0,#0]
        0x080006d6:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x080006da:    f41c3f40    ..@?    TST      r12,#0x30000
        0x080006de:    d06d        m.      BEQ      0x80007bc ; HAL_GPIO_Init + 464
        0x080006e0:    f8d9c018    ....    LDR      r12,[r9,#0x18]
        0x080006e4:    f04c0c01    L...    ORR      r12,r12,#1
        0x080006e8:    f8c9c018    ....    STR      r12,[r9,#0x18]
        0x080006ec:    f8d9c018    ....    LDR      r12,[r9,#0x18]
        0x080006f0:    e001        ..      B        0x80006f6 ; HAL_GPIO_Init + 266
        0x080006f2:    e068        h.      B        0x80007c6 ; HAL_GPIO_Init + 474
        0x080006f4:    e062        b.      B        0x80007bc ; HAL_GPIO_Init + 464
        0x080006f6:    f00c0c01    ....    AND      r12,r12,#1
        0x080006fa:    f8cdc000    ....    STR      r12,[sp,#0]
        0x080006fe:    f0220c03    "...    BIC      r12,r2,#3
        0x08000702:    f10c4580    ...E    ADD      r5,r12,#0x40000000
        0x08000706:    f5053580    ...5    ADD      r5,r5,#0x10000
        0x0800070a:    f8d5c008    ....    LDR      r12,[r5,#8]
        0x0800070e:    0794        ..      LSLS     r4,r2,#30
        0x08000710:    0f24        $.      LSRS     r4,r4,#28
        0x08000712:    fa08f604    ....    LSL      r6,r8,r4
        0x08000716:    ea2c0606    ,...    BIC      r6,r12,r6
        0x0800071a:    f1b04f90    ...O    CMP      r0,#0x48000000
        0x0800071e:    d057        W.      BEQ      0x80007d0 ; HAL_GPIO_Init + 484
        0x08000720:    f1a04c90    ...L    SUB      r12,r0,#0x48000000
        0x08000724:    f5bc6c80    ...l    SUBS     r12,r12,#0x400
        0x08000728:    d04f        O.      BEQ      0x80007ca ; HAL_GPIO_Init + 478
        0x0800072a:    f1a04c90    ...L    SUB      r12,r0,#0x48000000
        0x0800072e:    f5bc6c00    ...l    SUBS     r12,r12,#0x800
        0x08000732:    d050        P.      BEQ      0x80007d6 ; HAL_GPIO_Init + 490
        0x08000734:    f1a04c90    ...L    SUB      r12,r0,#0x48000000
        0x08000738:    f5bc6c40    ..@l    SUBS     r12,r12,#0xc00
        0x0800073c:    d04e        N.      BEQ      0x80007dc ; HAL_GPIO_Init + 496
        0x0800073e:    f1a04c90    ...L    SUB      r12,r0,#0x48000000
        0x08000742:    f5bc5c80    ...\    SUBS     r12,r12,#0x1000
        0x08000746:    d04c        L.      BEQ      0x80007e2 ; HAL_GPIO_Init + 502
        0x08000748:    f04f0c05    O...    MOV      r12,#5
        0x0800074c:    fa0cfc04    ....    LSL      r12,r12,r4
        0x08000750:    ea4c0c06    L...    ORR      r12,r12,r6
        0x08000754:    f8c5c008    ....    STR      r12,[r5,#8]
        0x08000758:    f8dac000    ....    LDR      r12,[r10,#0]
        0x0800075c:    ea2c0c03    ,...    BIC      r12,r12,r3
        0x08000760:    684c        Lh      LDR      r4,[r1,#4]
        0x08000762:    f4143f80    ...?    TST      r4,#0x10000
        0x08000766:    d001        ..      BEQ      0x800076c ; HAL_GPIO_Init + 384
        0x08000768:    ea4c0c03    L...    ORR      r12,r12,r3
        0x0800076c:    f8cac000    ....    STR      r12,[r10,#0]
        0x08000770:    f8dbc000    ....    LDR      r12,[r11,#0]
        0x08000774:    ea2c0c03    ,...    BIC      r12,r12,r3
        0x08000778:    684c        Lh      LDR      r4,[r1,#4]
        0x0800077a:    f4143f00    ...?    TST      r4,#0x20000
        0x0800077e:    d001        ..      BEQ      0x8000784 ; HAL_GPIO_Init + 408
        0x08000780:    ea4c0c03    L...    ORR      r12,r12,r3
        0x08000784:    f8cbc000    ....    STR      r12,[r11,#0]
        0x08000788:    4c19        .L      LDR      r4,[pc,#100] ; [0x80007f0] = 0x40010408
        0x0800078a:    f8d4c000    ....    LDR      r12,[r4,#0]
        0x0800078e:    ea2c0c03    ,...    BIC      r12,r12,r3
        0x08000792:    684d        Mh      LDR      r5,[r1,#4]
        0x08000794:    f4151f80    ....    TST      r5,#0x100000
        0x08000798:    d001        ..      BEQ      0x800079e ; HAL_GPIO_Init + 434
        0x0800079a:    ea4c0c03    L...    ORR      r12,r12,r3
        0x0800079e:    f8c4c000    ....    STR      r12,[r4,#0]
        0x080007a2:    4c14        .L      LDR      r4,[pc,#80] ; [0x80007f4] = 0x4001040c
        0x080007a4:    f8d4c000    ....    LDR      r12,[r4,#0]
        0x080007a8:    ea2c0c03    ,...    BIC      r12,r12,r3
        0x080007ac:    684d        Mh      LDR      r5,[r1,#4]
        0x080007ae:    f4151f00    ....    TST      r5,#0x200000
        0x080007b2:    d001        ..      BEQ      0x80007b8 ; HAL_GPIO_Init + 460
        0x080007b4:    ea4c0c03    L...    ORR      r12,r12,r3
        0x080007b8:    f8c4c000    ....    STR      r12,[r4,#0]
        0x080007bc:    1c52        R.      ADDS     r2,r2,#1
        0x080007be:    680b        .h      LDR      r3,[r1,#0]
        0x080007c0:    40d3        .@      LSRS     r3,r3,r2
        0x080007c2:    f47faf24    ..$.    BNE      0x800060e ; HAL_GPIO_Init + 34
        0x080007c6:    e8bd8ff8    ....    POP      {r3-r11,pc}
        0x080007ca:    f04f0c01    O...    MOV      r12,#1
        0x080007ce:    e7bd        ..      B        0x800074c ; HAL_GPIO_Init + 352
        0x080007d0:    f04f0c00    O...    MOV      r12,#0
        0x080007d4:    e7ba        ..      B        0x800074c ; HAL_GPIO_Init + 352
        0x080007d6:    f04f0c02    O...    MOV      r12,#2
        0x080007da:    e7b7        ..      B        0x800074c ; HAL_GPIO_Init + 352
        0x080007dc:    f04f0c03    O...    MOV      r12,#3
        0x080007e0:    e7b4        ..      B        0x800074c ; HAL_GPIO_Init + 352
        0x080007e2:    f04f0c04    O...    MOV      r12,#4
        0x080007e6:    e7b1        ..      B        0x800074c ; HAL_GPIO_Init + 352
    $d
        0x080007e8:    40021000    ...@    DCD    1073876992
        0x080007ec:    40010400    ...@    DCD    1073808384
        0x080007f0:    40010408    ...@    DCD    1073808392
        0x080007f4:    4001040c    ...@    DCD    1073808396
    $t
    i.HAL_GetTick
    HAL_GetTick
        0x080007f8:    4801        .H      LDR      r0,[pc,#4] ; [0x8000800] = 0x20000224
        0x080007fa:    6880        .h      LDR      r0,[r0,#8]
        0x080007fc:    4770        pG      BX       lr
    $d
        0x080007fe:    0000        ..      DCW    0
        0x08000800:    20000224    $..     DCD    536871460
    $t
    i.HAL_IncTick
    HAL_IncTick
        0x08000804:    4802        .H      LDR      r0,[pc,#8] ; [0x8000810] = 0x20000224
        0x08000806:    6881        .h      LDR      r1,[r0,#8]
        0x08000808:    7802        .x      LDRB     r2,[r0,#0]
        0x0800080a:    4411        .D      ADD      r1,r1,r2
        0x0800080c:    6081        .`      STR      r1,[r0,#8]
        0x0800080e:    4770        pG      BX       lr
    $d
        0x08000810:    20000224    $..     DCD    536871460
    $t
    i.HAL_Init
    HAL_Init
        0x08000814:    b510        ..      PUSH     {r4,lr}
        0x08000816:    4807        .H      LDR      r0,[pc,#28] ; [0x8000834] = 0x40022000
        0x08000818:    6801        .h      LDR      r1,[r0,#0]
        0x0800081a:    f0410110    A...    ORR      r1,r1,#0x10
        0x0800081e:    6001        .`      STR      r1,[r0,#0]
        0x08000820:    2003        .       MOVS     r0,#3
        0x08000822:    f000f88f    ....    BL       HAL_NVIC_SetPriorityGrouping ; 0x8000944
        0x08000826:    2000        .       MOVS     r0,#0
        0x08000828:    f000f806    ....    BL       HAL_InitTick ; 0x8000838
        0x0800082c:    f000f826    ..&.    BL       HAL_MspInit ; 0x800087c
        0x08000830:    2000        .       MOVS     r0,#0
        0x08000832:    bd10        ..      POP      {r4,pc}
    $d
        0x08000834:    40022000    . .@    DCD    1073881088
    $t
    i.HAL_InitTick
    HAL_InitTick
        0x08000838:    b570        p.      PUSH     {r4-r6,lr}
        0x0800083a:    4604        .F      MOV      r4,r0
        0x0800083c:    4d0d        .M      LDR      r5,[pc,#52] ; [0x8000874] = 0x20000224
        0x0800083e:    f44f717a    O.zq    MOV      r1,#0x3e8
        0x08000842:    7828        (x      LDRB     r0,[r5,#0]
        0x08000844:    fbb1f0f0    ....    UDIV     r0,r1,r0
        0x08000848:    490b        .I      LDR      r1,[pc,#44] ; [0x8000878] = 0x20000220
        0x0800084a:    6809        .h      LDR      r1,[r1,#0]
        0x0800084c:    fbb1f0f0    ....    UDIV     r0,r1,r0
        0x08000850:    f000f88a    ....    BL       HAL_SYSTICK_Config ; 0x8000968
        0x08000854:    b108        ..      CBZ      r0,0x800085a ; HAL_InitTick + 34
        0x08000856:    2001        .       MOVS     r0,#1
        0x08000858:    bd70        p.      POP      {r4-r6,pc}
        0x0800085a:    2c10        .,      CMP      r4,#0x10
        0x0800085c:    d207        ..      BCS      0x800086e ; HAL_InitTick + 54
        0x0800085e:    2200        ."      MOVS     r2,#0
        0x08000860:    4621        !F      MOV      r1,r4
        0x08000862:    1e50        P.      SUBS     r0,r2,#1
        0x08000864:    f000f83a    ..:.    BL       HAL_NVIC_SetPriority ; 0x80008dc
        0x08000868:    606c        l`      STR      r4,[r5,#4]
        0x0800086a:    2000        .       MOVS     r0,#0
        0x0800086c:    bd70        p.      POP      {r4-r6,pc}
        0x0800086e:    2001        .       MOVS     r0,#1
        0x08000870:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08000872:    0000        ..      DCW    0
        0x08000874:    20000224    $..     DCD    536871460
        0x08000878:    20000220     ..     DCD    536871456
    $t
    i.HAL_MspInit
    HAL_MspInit
        0x0800087c:    b508        ..      PUSH     {r3,lr}
        0x0800087e:    bf00        ..      NOP      
        0x08000880:    480e        .H      LDR      r0,[pc,#56] ; [0x80008bc] = 0x40021000
        0x08000882:    6980        .i      LDR      r0,[r0,#0x18]
        0x08000884:    f0400001    @...    ORR      r0,r0,#1
        0x08000888:    490c        .I      LDR      r1,[pc,#48] ; [0x80008bc] = 0x40021000
        0x0800088a:    6188        .a      STR      r0,[r1,#0x18]
        0x0800088c:    4608        .F      MOV      r0,r1
        0x0800088e:    6980        .i      LDR      r0,[r0,#0x18]
        0x08000890:    f0000001    ....    AND      r0,r0,#1
        0x08000894:    9000        ..      STR      r0,[sp,#0]
        0x08000896:    bf00        ..      NOP      
        0x08000898:    bf00        ..      NOP      
        0x0800089a:    bf00        ..      NOP      
        0x0800089c:    4608        .F      MOV      r0,r1
        0x0800089e:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x080008a0:    f0405080    @..P    ORR      r0,r0,#0x10000000
        0x080008a4:    61c8        .a      STR      r0,[r1,#0x1c]
        0x080008a6:    4608        .F      MOV      r0,r1
        0x080008a8:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x080008aa:    f0005080    ...P    AND      r0,r0,#0x10000000
        0x080008ae:    9000        ..      STR      r0,[sp,#0]
        0x080008b0:    bf00        ..      NOP      
        0x080008b2:    bf00        ..      NOP      
        0x080008b4:    2007        .       MOVS     r0,#7
        0x080008b6:    f000f845    ..E.    BL       HAL_NVIC_SetPriorityGrouping ; 0x8000944
        0x080008ba:    bd08        ..      POP      {r3,pc}
    $d
        0x080008bc:    40021000    ...@    DCD    1073876992
    $t
    i.HAL_NVIC_EnableIRQ
    HAL_NVIC_EnableIRQ
        0x080008c0:    2800        .(      CMP      r0,#0
        0x080008c2:    db0a        ..      BLT      0x80008da ; HAL_NVIC_EnableIRQ + 26
        0x080008c4:    f000011f    ....    AND      r1,r0,#0x1f
        0x080008c8:    2201        ."      MOVS     r2,#1
        0x080008ca:    fa02f101    ....    LSL      r1,r2,r1
        0x080008ce:    0940        @.      LSRS     r0,r0,#5
        0x080008d0:    0080        ..      LSLS     r0,r0,#2
        0x080008d2:    f10020e0    ...     ADD      r0,r0,#0xe000e000
        0x080008d6:    f8c01100    ....    STR      r1,[r0,#0x100]
        0x080008da:    4770        pG      BX       lr
    i.HAL_NVIC_SetPriority
    HAL_NVIC_SetPriority
        0x080008dc:    b410        ..      PUSH     {r4}
        0x080008de:    4b18        .K      LDR      r3,[pc,#96] ; [0x8000940] = 0xe000ed0c
        0x080008e0:    681b        .h      LDR      r3,[r3,#0]
        0x080008e2:    f3c32302    ...#    UBFX     r3,r3,#8,#3
        0x080008e6:    f1c30c07    ....    RSB      r12,r3,#7
        0x080008ea:    f1bc0f04    ....    CMP      r12,#4
        0x080008ee:    d901        ..      BLS      0x80008f4 ; HAL_NVIC_SetPriority + 24
        0x080008f0:    f04f0c04    O...    MOV      r12,#4
        0x080008f4:    1d1c        ..      ADDS     r4,r3,#4
        0x080008f6:    2c07        .,      CMP      r4,#7
        0x080008f8:    d201        ..      BCS      0x80008fe ; HAL_NVIC_SetPriority + 34
        0x080008fa:    2300        .#      MOVS     r3,#0
        0x080008fc:    e000        ..      B        0x8000900 ; HAL_NVIC_SetPriority + 36
        0x080008fe:    1edb        ..      SUBS     r3,r3,#3
        0x08000900:    2401        .$      MOVS     r4,#1
        0x08000902:    fa04fc0c    ....    LSL      r12,r4,r12
        0x08000906:    f1ac0c01    ....    SUB      r12,r12,#1
        0x0800090a:    ea0c0101    ....    AND      r1,r12,r1
        0x0800090e:    4099        .@      LSLS     r1,r1,r3
        0x08000910:    fa04f303    ....    LSL      r3,r4,r3
        0x08000914:    1e5b        [.      SUBS     r3,r3,#1
        0x08000916:    401a        .@      ANDS     r2,r2,r3
        0x08000918:    4311        .C      ORRS     r1,r1,r2
        0x0800091a:    2800        .(      CMP      r0,#0
        0x0800091c:    db06        ..      BLT      0x800092c ; HAL_NVIC_SetPriority + 80
        0x0800091e:    f10020e0    ...     ADD      r0,r0,#0xe000e000
        0x08000922:    0109        ..      LSLS     r1,r1,#4
        0x08000924:    f8801400    ....    STRB     r1,[r0,#0x400]
        0x08000928:    bc10        ..      POP      {r4}
        0x0800092a:    4770        pG      BX       lr
        0x0800092c:    f000000f    ....    AND      r0,r0,#0xf
        0x08000930:    f10020e0    ...     ADD      r0,r0,#0xe000e000
        0x08000934:    0109        ..      LSLS     r1,r1,#4
        0x08000936:    f8801d14    ....    STRB     r1,[r0,#0xd14]
        0x0800093a:    bc10        ..      POP      {r4}
        0x0800093c:    4770        pG      BX       lr
    $d
        0x0800093e:    0000        ..      DCW    0
        0x08000940:    e000ed0c    ....    DCD    3758157068
    $t
    i.HAL_NVIC_SetPriorityGrouping
    HAL_NVIC_SetPriorityGrouping
        0x08000944:    f0000007    ....    AND      r0,r0,#7
        0x08000948:    4a06        .J      LDR      r2,[pc,#24] ; [0x8000964] = 0xe000ed0c
        0x0800094a:    6811        .h      LDR      r1,[r2,#0]
        0x0800094c:    f64f03ff    O...    MOV      r3,#0xf8ff
        0x08000950:    4019        .@      ANDS     r1,r1,r3
        0x08000952:    ea412000    A..     ORR      r0,r1,r0,LSL #8
        0x08000956:    f04070fd    @..p    ORR      r0,r0,#0x1fa0000
        0x0800095a:    f0406080    @..`    ORR      r0,r0,#0x4000000
        0x0800095e:    6010        .`      STR      r0,[r2,#0]
        0x08000960:    4770        pG      BX       lr
    $d
        0x08000962:    0000        ..      DCW    0
        0x08000964:    e000ed0c    ....    DCD    3758157068
    $t
    i.HAL_SYSTICK_Config
    HAL_SYSTICK_Config
        0x08000968:    1e40        @.      SUBS     r0,r0,#1
        0x0800096a:    f1b07f80    ....    CMP      r0,#0x1000000
        0x0800096e:    d301        ..      BCC      0x8000974 ; HAL_SYSTICK_Config + 12
        0x08000970:    2001        .       MOVS     r0,#1
        0x08000972:    4770        pG      BX       lr
        0x08000974:    f04f21e0    O..!    MOV      r1,#0xe000e000
        0x08000978:    6148        Ha      STR      r0,[r1,#0x14]
        0x0800097a:    4a04        .J      LDR      r2,[pc,#16] ; [0x800098c] = 0xe000ed23
        0x0800097c:    20f0        .       MOVS     r0,#0xf0
        0x0800097e:    7010        .p      STRB     r0,[r2,#0]
        0x08000980:    2000        .       MOVS     r0,#0
        0x08000982:    6188        .a      STR      r0,[r1,#0x18]
        0x08000984:    2007        .       MOVS     r0,#7
        0x08000986:    6108        .a      STR      r0,[r1,#0x10]
        0x08000988:    2000        .       MOVS     r0,#0
        0x0800098a:    4770        pG      BX       lr
    $d
        0x0800098c:    e000ed23    #...    DCD    3758157091
    $t
    i.HAL_TIMEx_MasterConfigSynchronization
    HAL_TIMEx_MasterConfigSynchronization
        0x08000990:    b4f0        ..      PUSH     {r4-r7}
        0x08000992:    f890203c    ..<     LDRB     r2,[r0,#0x3c]
        0x08000996:    2a01        .*      CMP      r2,#1
        0x08000998:    d03c        <.      BEQ      0x8000a14 ; HAL_TIMEx_MasterConfigSynchronization + 132
        0x0800099a:    2401        .$      MOVS     r4,#1
        0x0800099c:    f880403c    ..<@    STRB     r4,[r0,#0x3c]
        0x080009a0:    2202        ."      MOVS     r2,#2
        0x080009a2:    f880203d    ..=     STRB     r2,[r0,#0x3d]
        0x080009a6:    6803        .h      LDR      r3,[r0,#0]
        0x080009a8:    685a        Zh      LDR      r2,[r3,#4]
        0x080009aa:    f8d3c008    ....    LDR      r12,[r3,#8]
        0x080009ae:    4d1b        .M      LDR      r5,[pc,#108] ; [0x8000a1c] = 0x40012c00
        0x080009b0:    4e1b        .N      LDR      r6,[pc,#108] ; [0x8000a20] = 0x40013400
        0x080009b2:    42ab        .B      CMP      r3,r5
        0x080009b4:    d001        ..      BEQ      0x80009ba ; HAL_TIMEx_MasterConfigSynchronization + 42
        0x080009b6:    42b3        .B      CMP      r3,r6
        0x080009b8:    d103        ..      BNE      0x80009c2 ; HAL_TIMEx_MasterConfigSynchronization + 50
        0x080009ba:    f4220270    ".p.    BIC      r2,r2,#0xf00000
        0x080009be:    684f        Oh      LDR      r7,[r1,#4]
        0x080009c0:    433a        :C      ORRS     r2,r2,r7
        0x080009c2:    f0220270    ".p.    BIC      r2,r2,#0x70
        0x080009c6:    680f        .h      LDR      r7,[r1,#0]
        0x080009c8:    433a        :C      ORRS     r2,r2,r7
        0x080009ca:    605a        Z`      STR      r2,[r3,#4]
        0x080009cc:    6802        .h      LDR      r2,[r0,#0]
        0x080009ce:    42aa        .B      CMP      r2,r5
        0x080009d0:    d013        ..      BEQ      0x80009fa ; HAL_TIMEx_MasterConfigSynchronization + 106
        0x080009d2:    f1b24f80    ...O    CMP      r2,#0x40000000
        0x080009d6:    d010        ..      BEQ      0x80009fa ; HAL_TIMEx_MasterConfigSynchronization + 106
        0x080009d8:    f1a24380    ...C    SUB      r3,r2,#0x40000000
        0x080009dc:    f5b36380    ...c    SUBS     r3,r3,#0x400
        0x080009e0:    d00b        ..      BEQ      0x80009fa ; HAL_TIMEx_MasterConfigSynchronization + 106
        0x080009e2:    f1a24380    ...C    SUB      r3,r2,#0x40000000
        0x080009e6:    f5b36300    ...c    SUBS     r3,r3,#0x800
        0x080009ea:    d006        ..      BEQ      0x80009fa ; HAL_TIMEx_MasterConfigSynchronization + 106
        0x080009ec:    42b2        .B      CMP      r2,r6
        0x080009ee:    d004        ..      BEQ      0x80009fa ; HAL_TIMEx_MasterConfigSynchronization + 106
        0x080009f0:    f1a24380    ...C    SUB      r3,r2,#0x40000000
        0x080009f4:    f5b333a0    ...3    SUBS     r3,r3,#0x14000
        0x080009f8:    d104        ..      BNE      0x8000a04 ; HAL_TIMEx_MasterConfigSynchronization + 116
        0x080009fa:    f02c0380    ,...    BIC      r3,r12,#0x80
        0x080009fe:    6889        .h      LDR      r1,[r1,#8]
        0x08000a00:    4319        .C      ORRS     r1,r1,r3
        0x08000a02:    6091        .`      STR      r1,[r2,#8]
        0x08000a04:    f880403d    ..=@    STRB     r4,[r0,#0x3d]
        0x08000a08:    2100        .!      MOVS     r1,#0
        0x08000a0a:    f880103c    ..<.    STRB     r1,[r0,#0x3c]
        0x08000a0e:    bcf0        ..      POP      {r4-r7}
        0x08000a10:    2000        .       MOVS     r0,#0
        0x08000a12:    4770        pG      BX       lr
        0x08000a14:    bcf0        ..      POP      {r4-r7}
        0x08000a16:    2002        .       MOVS     r0,#2
        0x08000a18:    4770        pG      BX       lr
    $d
        0x08000a1a:    0000        ..      DCW    0
        0x08000a1c:    40012c00    .,.@    DCD    1073818624
        0x08000a20:    40013400    .4.@    DCD    1073820672
    $t
    i.HAL_TIM_Base_Init
    HAL_TIM_Base_Init
        0x08000a24:    b510        ..      PUSH     {r4,lr}
        0x08000a26:    4604        .F      MOV      r4,r0
        0x08000a28:    2c00        .,      CMP      r4,#0
        0x08000a2a:    d003        ..      BEQ      0x8000a34 ; HAL_TIM_Base_Init + 16
        0x08000a2c:    f894003d    ..=.    LDRB     r0,[r4,#0x3d]
        0x08000a30:    b110        ..      CBZ      r0,0x8000a38 ; HAL_TIM_Base_Init + 20
        0x08000a32:    e007        ..      B        0x8000a44 ; HAL_TIM_Base_Init + 32
        0x08000a34:    2001        .       MOVS     r0,#1
        0x08000a36:    bd10        ..      POP      {r4,pc}
        0x08000a38:    2000        .       MOVS     r0,#0
        0x08000a3a:    f884003c    ..<.    STRB     r0,[r4,#0x3c]
        0x08000a3e:    4620         F      MOV      r0,r4
        0x08000a40:    f000f822    ..".    BL       HAL_TIM_Base_MspInit ; 0x8000a88
        0x08000a44:    2002        .       MOVS     r0,#2
        0x08000a46:    f884003d    ..=.    STRB     r0,[r4,#0x3d]
        0x08000a4a:    1d21        !.      ADDS     r1,r4,#4
        0x08000a4c:    6820         h      LDR      r0,[r4,#0]
        0x08000a4e:    f001fd9d    ....    BL       TIM_Base_SetConfig ; 0x800258c
        0x08000a52:    2001        .       MOVS     r0,#1
        0x08000a54:    f8840048    ..H.    STRB     r0,[r4,#0x48]
        0x08000a58:    f884003e    ..>.    STRB     r0,[r4,#0x3e]
        0x08000a5c:    f884003f    ..?.    STRB     r0,[r4,#0x3f]
        0x08000a60:    f8840040    ..@.    STRB     r0,[r4,#0x40]
        0x08000a64:    f8840041    ..A.    STRB     r0,[r4,#0x41]
        0x08000a68:    f8840042    ..B.    STRB     r0,[r4,#0x42]
        0x08000a6c:    f8840043    ..C.    STRB     r0,[r4,#0x43]
        0x08000a70:    f8840044    ..D.    STRB     r0,[r4,#0x44]
        0x08000a74:    f8840045    ..E.    STRB     r0,[r4,#0x45]
        0x08000a78:    f8840046    ..F.    STRB     r0,[r4,#0x46]
        0x08000a7c:    f8840047    ..G.    STRB     r0,[r4,#0x47]
        0x08000a80:    f884003d    ..=.    STRB     r0,[r4,#0x3d]
        0x08000a84:    2000        .       MOVS     r0,#0
        0x08000a86:    bd10        ..      POP      {r4,pc}
    i.HAL_TIM_Base_MspInit
    HAL_TIM_Base_MspInit
        0x08000a88:    b510        ..      PUSH     {r4,lr}
        0x08000a8a:    b086        ..      SUB      sp,sp,#0x18
        0x08000a8c:    4604        .F      MOV      r4,r0
        0x08000a8e:    2114        .!      MOVS     r1,#0x14
        0x08000a90:    a801        ..      ADD      r0,sp,#4
        0x08000a92:    f7fffbb0    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08000a96:    491b        .I      LDR      r1,[pc,#108] ; [0x8000b04] = 0x40000800
        0x08000a98:    6820         h      LDR      r0,[r4,#0]
        0x08000a9a:    4288        .B      CMP      r0,r1
        0x08000a9c:    d130        0.      BNE      0x8000b00 ; HAL_TIM_Base_MspInit + 120
        0x08000a9e:    bf00        ..      NOP      
        0x08000aa0:    4819        .H      LDR      r0,[pc,#100] ; [0x8000b08] = 0x40021000
        0x08000aa2:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x08000aa4:    f0400004    @...    ORR      r0,r0,#4
        0x08000aa8:    4917        .I      LDR      r1,[pc,#92] ; [0x8000b08] = 0x40021000
        0x08000aaa:    61c8        .a      STR      r0,[r1,#0x1c]
        0x08000aac:    4608        .F      MOV      r0,r1
        0x08000aae:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x08000ab0:    f0000004    ....    AND      r0,r0,#4
        0x08000ab4:    9000        ..      STR      r0,[sp,#0]
        0x08000ab6:    bf00        ..      NOP      
        0x08000ab8:    bf00        ..      NOP      
        0x08000aba:    bf00        ..      NOP      
        0x08000abc:    4608        .F      MOV      r0,r1
        0x08000abe:    6940        @i      LDR      r0,[r0,#0x14]
        0x08000ac0:    f4401080    @...    ORR      r0,r0,#0x100000
        0x08000ac4:    6148        Ha      STR      r0,[r1,#0x14]
        0x08000ac6:    4608        .F      MOV      r0,r1
        0x08000ac8:    6940        @i      LDR      r0,[r0,#0x14]
        0x08000aca:    f4001080    ....    AND      r0,r0,#0x100000
        0x08000ace:    9000        ..      STR      r0,[sp,#0]
        0x08000ad0:    bf00        ..      NOP      
        0x08000ad2:    bf00        ..      NOP      
        0x08000ad4:    f44f5040    O.@P    MOV      r0,#0x3000
        0x08000ad8:    9001        ..      STR      r0,[sp,#4]
        0x08000ada:    2002        .       MOVS     r0,#2
        0x08000adc:    9002        ..      STR      r0,[sp,#8]
        0x08000ade:    2000        .       MOVS     r0,#0
        0x08000ae0:    9003        ..      STR      r0,[sp,#0xc]
        0x08000ae2:    9004        ..      STR      r0,[sp,#0x10]
        0x08000ae4:    2002        .       MOVS     r0,#2
        0x08000ae6:    9005        ..      STR      r0,[sp,#0x14]
        0x08000ae8:    a901        ..      ADD      r1,sp,#4
        0x08000aea:    4808        .H      LDR      r0,[pc,#32] ; [0x8000b0c] = 0x48000c00
        0x08000aec:    f7fffd7e    ..~.    BL       HAL_GPIO_Init ; 0x80005ec
        0x08000af0:    2200        ."      MOVS     r2,#0
        0x08000af2:    4611        .F      MOV      r1,r2
        0x08000af4:    201e        .       MOVS     r0,#0x1e
        0x08000af6:    f7fffef1    ....    BL       HAL_NVIC_SetPriority ; 0x80008dc
        0x08000afa:    201e        .       MOVS     r0,#0x1e
        0x08000afc:    f7fffee0    ....    BL       HAL_NVIC_EnableIRQ ; 0x80008c0
        0x08000b00:    b006        ..      ADD      sp,sp,#0x18
        0x08000b02:    bd10        ..      POP      {r4,pc}
    $d
        0x08000b04:    40000800    ...@    DCD    1073743872
        0x08000b08:    40021000    ...@    DCD    1073876992
        0x08000b0c:    48000c00    ...H    DCD    1207962624
    $t
    i.HAL_TIM_ConfigClockSource
    HAL_TIM_ConfigClockSource
        0x08000b10:    b570        p.      PUSH     {r4-r6,lr}
        0x08000b12:    4604        .F      MOV      r4,r0
        0x08000b14:    2500        .%      MOVS     r5,#0
        0x08000b16:    f894003c    ..<.    LDRB     r0,[r4,#0x3c]
        0x08000b1a:    2801        .(      CMP      r0,#1
        0x08000b1c:    d01a        ..      BEQ      0x8000b54 ; HAL_TIM_ConfigClockSource + 68
        0x08000b1e:    2601        .&      MOVS     r6,#1
        0x08000b20:    f884603c    ..<`    STRB     r6,[r4,#0x3c]
        0x08000b24:    2002        .       MOVS     r0,#2
        0x08000b26:    f884003d    ..=.    STRB     r0,[r4,#0x3d]
        0x08000b2a:    6820         h      LDR      r0,[r4,#0]
        0x08000b2c:    6882        .h      LDR      r2,[r0,#8]
        0x08000b2e:    f0220277    ".w.    BIC      r2,r2,#0x77
        0x08000b32:    f4223280    "..2    BIC      r2,r2,#0x10000
        0x08000b36:    f422427f    "..B    BIC      r2,r2,#0xff00
        0x08000b3a:    6082        .`      STR      r2,[r0,#8]
        0x08000b3c:    6808        .h      LDR      r0,[r1,#0]
        0x08000b3e:    2850        P(      CMP      r0,#0x50
        0x08000b40:    d039        9.      BEQ      0x8000bb6 ; HAL_TIM_ConfigClockSource + 166
        0x08000b42:    dc0e        ..      BGT      0x8000b62 ; HAL_TIM_ConfigClockSource + 82
        0x08000b44:    2820         (      CMP      r0,#0x20
        0x08000b46:    d054        T.      BEQ      0x8000bf2 ; HAL_TIM_ConfigClockSource + 226
        0x08000b48:    dc06        ..      BGT      0x8000b58 ; HAL_TIM_ConfigClockSource + 72
        0x08000b4a:    2800        .(      CMP      r0,#0
        0x08000b4c:    d051        Q.      BEQ      0x8000bf2 ; HAL_TIM_ConfigClockSource + 226
        0x08000b4e:    2810        .(      CMP      r0,#0x10
        0x08000b50:    d111        ..      BNE      0x8000b76 ; HAL_TIM_ConfigClockSource + 102
        0x08000b52:    e04e        N.      B        0x8000bf2 ; HAL_TIM_ConfigClockSource + 226
        0x08000b54:    2002        .       MOVS     r0,#2
        0x08000b56:    bd70        p.      POP      {r4-r6,pc}
        0x08000b58:    2830        0(      CMP      r0,#0x30
        0x08000b5a:    d04a        J.      BEQ      0x8000bf2 ; HAL_TIM_ConfigClockSource + 226
        0x08000b5c:    2840        @(      CMP      r0,#0x40
        0x08000b5e:    d10a        ..      BNE      0x8000b76 ; HAL_TIM_ConfigClockSource + 102
        0x08000b60:    e03d        =.      B        0x8000bde ; HAL_TIM_ConfigClockSource + 206
        0x08000b62:    2860        `(      CMP      r0,#0x60
        0x08000b64:    d031        1.      BEQ      0x8000bca ; HAL_TIM_ConfigClockSource + 186
        0x08000b66:    2870        p(      CMP      r0,#0x70
        0x08000b68:    d00d        ..      BEQ      0x8000b86 ; HAL_TIM_ConfigClockSource + 118
        0x08000b6a:    f5b05f80    ..._    CMP      r0,#0x1000
        0x08000b6e:    d003        ..      BEQ      0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000b70:    f5b05f00    ..._    CMP      r0,#0x2000
        0x08000b74:    d013        ..      BEQ      0x8000b9e ; HAL_TIM_ConfigClockSource + 142
        0x08000b76:    2501        .%      MOVS     r5,#1
        0x08000b78:    f884603d    ..=`    STRB     r6,[r4,#0x3d]
        0x08000b7c:    2000        .       MOVS     r0,#0
        0x08000b7e:    f884003c    ..<.    STRB     r0,[r4,#0x3c]
        0x08000b82:    4628        (F      MOV      r0,r5
        0x08000b84:    bd70        p.      POP      {r4-r6,pc}
        0x08000b86:    68cb        .h      LDR      r3,[r1,#0xc]
        0x08000b88:    684a        Jh      LDR      r2,[r1,#4]
        0x08000b8a:    6889        .h      LDR      r1,[r1,#8]
        0x08000b8c:    6820         h      LDR      r0,[r4,#0]
        0x08000b8e:    f001fd55    ..U.    BL       TIM_ETR_SetConfig ; 0x800263c
        0x08000b92:    6820         h      LDR      r0,[r4,#0]
        0x08000b94:    6881        .h      LDR      r1,[r0,#8]
        0x08000b96:    f0410177    A.w.    ORR      r1,r1,#0x77
        0x08000b9a:    6081        .`      STR      r1,[r0,#8]
        0x08000b9c:    e7ec        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000b9e:    68cb        .h      LDR      r3,[r1,#0xc]
        0x08000ba0:    684a        Jh      LDR      r2,[r1,#4]
        0x08000ba2:    6889        .h      LDR      r1,[r1,#8]
        0x08000ba4:    6820         h      LDR      r0,[r4,#0]
        0x08000ba6:    f001fd49    ..I.    BL       TIM_ETR_SetConfig ; 0x800263c
        0x08000baa:    6820         h      LDR      r0,[r4,#0]
        0x08000bac:    6881        .h      LDR      r1,[r0,#8]
        0x08000bae:    f4414180    A..A    ORR      r1,r1,#0x4000
        0x08000bb2:    6081        .`      STR      r1,[r0,#8]
        0x08000bb4:    e7e0        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000bb6:    68ca        .h      LDR      r2,[r1,#0xc]
        0x08000bb8:    6849        Ih      LDR      r1,[r1,#4]
        0x08000bba:    6820         h      LDR      r0,[r4,#0]
        0x08000bbc:    f001fd51    ..Q.    BL       TIM_TI1_ConfigInputStage ; 0x8002662
        0x08000bc0:    2150        P!      MOVS     r1,#0x50
        0x08000bc2:    6820         h      LDR      r0,[r4,#0]
        0x08000bc4:    f001fd45    ..E.    BL       TIM_ITRx_SetConfig ; 0x8002652
        0x08000bc8:    e7d6        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000bca:    68ca        .h      LDR      r2,[r1,#0xc]
        0x08000bcc:    6849        Ih      LDR      r1,[r1,#4]
        0x08000bce:    6820         h      LDR      r0,[r4,#0]
        0x08000bd0:    f001fd97    ....    BL       TIM_TI2_ConfigInputStage ; 0x8002702
        0x08000bd4:    2160        `!      MOVS     r1,#0x60
        0x08000bd6:    6820         h      LDR      r0,[r4,#0]
        0x08000bd8:    f001fd3b    ..;.    BL       TIM_ITRx_SetConfig ; 0x8002652
        0x08000bdc:    e7cc        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000bde:    68ca        .h      LDR      r2,[r1,#0xc]
        0x08000be0:    6849        Ih      LDR      r1,[r1,#4]
        0x08000be2:    6820         h      LDR      r0,[r4,#0]
        0x08000be4:    f001fd3d    ..=.    BL       TIM_TI1_ConfigInputStage ; 0x8002662
        0x08000be8:    2140        @!      MOVS     r1,#0x40
        0x08000bea:    6820         h      LDR      r0,[r4,#0]
        0x08000bec:    f001fd31    ..1.    BL       TIM_ITRx_SetConfig ; 0x8002652
        0x08000bf0:    e7c2        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
        0x08000bf2:    6822        "h      LDR      r2,[r4,#0]
        0x08000bf4:    4601        .F      MOV      r1,r0
        0x08000bf6:    4610        .F      MOV      r0,r2
        0x08000bf8:    f001fd2b    ..+.    BL       TIM_ITRx_SetConfig ; 0x8002652
        0x08000bfc:    e7bc        ..      B        0x8000b78 ; HAL_TIM_ConfigClockSource + 104
    i.HAL_TIM_IC_ConfigChannel
    HAL_TIM_IC_ConfigChannel
        0x08000bfe:    b570        p.      PUSH     {r4-r6,lr}
        0x08000c00:    4605        .F      MOV      r5,r0
        0x08000c02:    460c        .F      MOV      r4,r1
        0x08000c04:    2600        .&      MOVS     r6,#0
        0x08000c06:    f895003c    ..<.    LDRB     r0,[r5,#0x3c]
        0x08000c0a:    2801        .(      CMP      r0,#1
        0x08000c0c:    d00f        ..      BEQ      0x8000c2e ; HAL_TIM_IC_ConfigChannel + 48
        0x08000c0e:    2001        .       MOVS     r0,#1
        0x08000c10:    f885003c    ..<.    STRB     r0,[r5,#0x3c]
        0x08000c14:    b16a        j.      CBZ      r2,0x8000c32 ; HAL_TIM_IC_ConfigChannel + 52
        0x08000c16:    2a04        .*      CMP      r2,#4
        0x08000c18:    d01c        ..      BEQ      0x8000c54 ; HAL_TIM_IC_ConfigChannel + 86
        0x08000c1a:    2a08        .*      CMP      r2,#8
        0x08000c1c:    d02c        ,.      BEQ      0x8000c78 ; HAL_TIM_IC_ConfigChannel + 122
        0x08000c1e:    2a0c        .*      CMP      r2,#0xc
        0x08000c20:    d03b        ;.      BEQ      0x8000c9a ; HAL_TIM_IC_ConfigChannel + 156
        0x08000c22:    2601        .&      MOVS     r6,#1
        0x08000c24:    2000        .       MOVS     r0,#0
        0x08000c26:    f885003c    ..<.    STRB     r0,[r5,#0x3c]
        0x08000c2a:    4630        0F      MOV      r0,r6
        0x08000c2c:    bd70        p.      POP      {r4-r6,pc}
        0x08000c2e:    2002        .       MOVS     r0,#2
        0x08000c30:    bd70        p.      POP      {r4-r6,pc}
        0x08000c32:    68e3        .h      LDR      r3,[r4,#0xc]
        0x08000c34:    6862        bh      LDR      r2,[r4,#4]
        0x08000c36:    6821        !h      LDR      r1,[r4,#0]
        0x08000c38:    6828        (h      LDR      r0,[r5,#0]
        0x08000c3a:    f001fd25    ..%.    BL       TIM_TI1_SetConfig ; 0x8002688
        0x08000c3e:    6828        (h      LDR      r0,[r5,#0]
        0x08000c40:    6981        .i      LDR      r1,[r0,#0x18]
        0x08000c42:    f021010c    !...    BIC      r1,r1,#0xc
        0x08000c46:    6181        .a      STR      r1,[r0,#0x18]
        0x08000c48:    6828        (h      LDR      r0,[r5,#0]
        0x08000c4a:    6981        .i      LDR      r1,[r0,#0x18]
        0x08000c4c:    68a2        .h      LDR      r2,[r4,#8]
        0x08000c4e:    4311        .C      ORRS     r1,r1,r2
        0x08000c50:    6181        .a      STR      r1,[r0,#0x18]
        0x08000c52:    e7e7        ..      B        0x8000c24 ; HAL_TIM_IC_ConfigChannel + 38
        0x08000c54:    68e3        .h      LDR      r3,[r4,#0xc]
        0x08000c56:    6862        bh      LDR      r2,[r4,#4]
        0x08000c58:    6821        !h      LDR      r1,[r4,#0]
        0x08000c5a:    6828        (h      LDR      r0,[r5,#0]
        0x08000c5c:    f001fd63    ..c.    BL       TIM_TI2_SetConfig ; 0x8002726
        0x08000c60:    6828        (h      LDR      r0,[r5,#0]
        0x08000c62:    6981        .i      LDR      r1,[r0,#0x18]
        0x08000c64:    f4216140    !.@a    BIC      r1,r1,#0xc00
        0x08000c68:    6181        .a      STR      r1,[r0,#0x18]
        0x08000c6a:    6828        (h      LDR      r0,[r5,#0]
        0x08000c6c:    6981        .i      LDR      r1,[r0,#0x18]
        0x08000c6e:    68a2        .h      LDR      r2,[r4,#8]
        0x08000c70:    ea412102    A..!    ORR      r1,r1,r2,LSL #8
        0x08000c74:    6181        .a      STR      r1,[r0,#0x18]
        0x08000c76:    e7d5        ..      B        0x8000c24 ; HAL_TIM_IC_ConfigChannel + 38
        0x08000c78:    68e3        .h      LDR      r3,[r4,#0xc]
        0x08000c7a:    6862        bh      LDR      r2,[r4,#4]
        0x08000c7c:    6821        !h      LDR      r1,[r4,#0]
        0x08000c7e:    6828        (h      LDR      r0,[r5,#0]
        0x08000c80:    f001fd71    ..q.    BL       TIM_TI3_SetConfig ; 0x8002766
        0x08000c84:    6828        (h      LDR      r0,[r5,#0]
        0x08000c86:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x08000c88:    f021010c    !...    BIC      r1,r1,#0xc
        0x08000c8c:    61c1        .a      STR      r1,[r0,#0x1c]
        0x08000c8e:    6828        (h      LDR      r0,[r5,#0]
        0x08000c90:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x08000c92:    68a2        .h      LDR      r2,[r4,#8]
        0x08000c94:    4311        .C      ORRS     r1,r1,r2
        0x08000c96:    61c1        .a      STR      r1,[r0,#0x1c]
        0x08000c98:    e7c4        ..      B        0x8000c24 ; HAL_TIM_IC_ConfigChannel + 38
        0x08000c9a:    68e3        .h      LDR      r3,[r4,#0xc]
        0x08000c9c:    6862        bh      LDR      r2,[r4,#4]
        0x08000c9e:    6821        !h      LDR      r1,[r4,#0]
        0x08000ca0:    6828        (h      LDR      r0,[r5,#0]
        0x08000ca2:    f001fd7e    ..~.    BL       TIM_TI4_SetConfig ; 0x80027a2
        0x08000ca6:    6828        (h      LDR      r0,[r5,#0]
        0x08000ca8:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x08000caa:    f4216140    !.@a    BIC      r1,r1,#0xc00
        0x08000cae:    61c1        .a      STR      r1,[r0,#0x1c]
        0x08000cb0:    6828        (h      LDR      r0,[r5,#0]
        0x08000cb2:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x08000cb4:    68a2        .h      LDR      r2,[r4,#8]
        0x08000cb6:    ea412102    A..!    ORR      r1,r1,r2,LSL #8
        0x08000cba:    61c1        .a      STR      r1,[r0,#0x1c]
        0x08000cbc:    e7b2        ..      B        0x8000c24 ; HAL_TIM_IC_ConfigChannel + 38
    i.HAL_TIM_IC_Init
    HAL_TIM_IC_Init
        0x08000cbe:    b510        ..      PUSH     {r4,lr}
        0x08000cc0:    4604        .F      MOV      r4,r0
        0x08000cc2:    2c00        .,      CMP      r4,#0
        0x08000cc4:    d003        ..      BEQ      0x8000cce ; HAL_TIM_IC_Init + 16
        0x08000cc6:    f894003d    ..=.    LDRB     r0,[r4,#0x3d]
        0x08000cca:    b110        ..      CBZ      r0,0x8000cd2 ; HAL_TIM_IC_Init + 20
        0x08000ccc:    e007        ..      B        0x8000cde ; HAL_TIM_IC_Init + 32
        0x08000cce:    2001        .       MOVS     r0,#1
        0x08000cd0:    bd10        ..      POP      {r4,pc}
        0x08000cd2:    2000        .       MOVS     r0,#0
        0x08000cd4:    f884003c    ..<.    STRB     r0,[r4,#0x3c]
        0x08000cd8:    4620         F      MOV      r0,r4
        0x08000cda:    f000f822    ..".    BL       HAL_TIM_IC_MspInit ; 0x8000d22
        0x08000cde:    2002        .       MOVS     r0,#2
        0x08000ce0:    f884003d    ..=.    STRB     r0,[r4,#0x3d]
        0x08000ce4:    1d21        !.      ADDS     r1,r4,#4
        0x08000ce6:    6820         h      LDR      r0,[r4,#0]
        0x08000ce8:    f001fc50    ..P.    BL       TIM_Base_SetConfig ; 0x800258c
        0x08000cec:    2001        .       MOVS     r0,#1
        0x08000cee:    f8840048    ..H.    STRB     r0,[r4,#0x48]
        0x08000cf2:    f884003e    ..>.    STRB     r0,[r4,#0x3e]
        0x08000cf6:    f884003f    ..?.    STRB     r0,[r4,#0x3f]
        0x08000cfa:    f8840040    ..@.    STRB     r0,[r4,#0x40]
        0x08000cfe:    f8840041    ..A.    STRB     r0,[r4,#0x41]
        0x08000d02:    f8840042    ..B.    STRB     r0,[r4,#0x42]
        0x08000d06:    f8840043    ..C.    STRB     r0,[r4,#0x43]
        0x08000d0a:    f8840044    ..D.    STRB     r0,[r4,#0x44]
        0x08000d0e:    f8840045    ..E.    STRB     r0,[r4,#0x45]
        0x08000d12:    f8840046    ..F.    STRB     r0,[r4,#0x46]
        0x08000d16:    f8840047    ..G.    STRB     r0,[r4,#0x47]
        0x08000d1a:    f884003d    ..=.    STRB     r0,[r4,#0x3d]
        0x08000d1e:    2000        .       MOVS     r0,#0
        0x08000d20:    bd10        ..      POP      {r4,pc}
    i.HAL_TIM_IC_MspInit
    HAL_TIM_IC_MspInit
        0x08000d22:    4770        pG      BX       lr
    i.HardFault_Handler
    HardFault_Handler
        0x08000d24:    bf00        ..      NOP      
        0x08000d26:    e7fe        ..      B        0x8000d26 ; HardFault_Handler + 2
    i.HwAdcSample
    HwAdcSample
        0x08000d28:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x08000d2c:    4606        .F      MOV      r6,r0
        0x08000d2e:    460c        .F      MOV      r4,r1
        0x08000d30:    2700        .'      MOVS     r7,#0
        0x08000d32:    4841        AH      LDR      r0,[pc,#260] ; [0x8000e38] = 0xc900008
        0x08000d34:    4284        .B      CMP      r4,r0
        0x08000d36:    d008        ..      BEQ      0x8000d4a ; HwAdcSample + 34
        0x08000d38:    4840        @H      LDR      r0,[pc,#256] ; [0x8000e3c] = 0x10c00010
        0x08000d3a:    4284        .B      CMP      r4,r0
        0x08000d3c:    d005        ..      BEQ      0x8000d4a ; HwAdcSample + 34
        0x08000d3e:    4840        @H      LDR      r0,[pc,#256] ; [0x8000e40] = 0x14f00020
        0x08000d40:    4284        .B      CMP      r4,r0
        0x08000d42:    d002        ..      BEQ      0x8000d4a ; HwAdcSample + 34
        0x08000d44:    483f        ?H      LDR      r0,[pc,#252] ; [0x8000e44] = 0x2e300800
        0x08000d46:    4284        .B      CMP      r4,r0
        0x08000d48:    d130        0.      BNE      0x8000dac ; HwAdcSample + 132
        0x08000d4a:    4622        "F      MOV      r2,r4
        0x08000d4c:    2106        .!      MOVS     r1,#6
        0x08000d4e:    483e        >H      LDR      r0,[pc,#248] ; [0x8000e48] = 0x50000100
        0x08000d50:    f000f97b    ..{.    BL       LL_ADC_REG_SetSequencerRanks ; 0x800104a
        0x08000d54:    483c        <H      LDR      r0,[pc,#240] ; [0x8000e48] = 0x50000100
        0x08000d56:    f000f901    ....    BL       LL_ADC_Enable ; 0x8000f5c
        0x08000d5a:    bf00        ..      NOP      
        0x08000d5c:    483a        :H      LDR      r0,[pc,#232] ; [0x8000e48] = 0x50000100
        0x08000d5e:    f000f92d    ..-.    BL       LL_ADC_IsActiveFlag_ADRDY ; 0x8000fbc
        0x08000d62:    2801        .(      CMP      r0,#1
        0x08000d64:    d1fa        ..      BNE      0x8000d5c ; HwAdcSample + 52
        0x08000d66:    4838        8H      LDR      r0,[pc,#224] ; [0x8000e48] = 0x50000100
        0x08000d68:    f000f9a8    ....    BL       LL_ADC_REG_StartConversion ; 0x80010bc
        0x08000d6c:    2500        .%      MOVS     r5,#0
        0x08000d6e:    e00b        ..      B        0x8000d88 ; HwAdcSample + 96
        0x08000d70:    bf00        ..      NOP      
        0x08000d72:    4835        5H      LDR      r0,[pc,#212] ; [0x8000e48] = 0x50000100
        0x08000d74:    f000f927    ..'.    BL       LL_ADC_IsActiveFlag_EOC ; 0x8000fc6
        0x08000d78:    2800        .(      CMP      r0,#0
        0x08000d7a:    d0fa        ..      BEQ      0x8000d72 ; HwAdcSample + 74
        0x08000d7c:    bf00        ..      NOP      
        0x08000d7e:    4832        2H      LDR      r0,[pc,#200] ; [0x8000e48] = 0x50000100
        0x08000d80:    6c00        .l      LDR      r0,[r0,#0x40]
        0x08000d82:    b280        ..      UXTH     r0,r0
        0x08000d84:    4407        .D      ADD      r7,r7,r0
        0x08000d86:    1c6d        m.      ADDS     r5,r5,#1
        0x08000d88:    42b5        .B      CMP      r5,r6
        0x08000d8a:    d3f1        ..      BCC      0x8000d70 ; HwAdcSample + 72
        0x08000d8c:    482e        .H      LDR      r0,[pc,#184] ; [0x8000e48] = 0x50000100
        0x08000d8e:    f000f99d    ....    BL       LL_ADC_REG_StopConversion ; 0x80010cc
        0x08000d92:    bf00        ..      NOP      
        0x08000d94:    482c        ,H      LDR      r0,[pc,#176] ; [0x8000e48] = 0x50000100
        0x08000d96:    f000f953    ..S.    BL       LL_ADC_REG_IsConversionOngoing ; 0x8001040
        0x08000d9a:    2800        .(      CMP      r0,#0
        0x08000d9c:    d1fa        ..      BNE      0x8000d94 ; HwAdcSample + 108
        0x08000d9e:    482a        *H      LDR      r0,[pc,#168] ; [0x8000e48] = 0x50000100
        0x08000da0:    f000f8d4    ....    BL       LL_ADC_Disable ; 0x8000f4c
        0x08000da4:    201f        .       MOVS     r0,#0x1f
        0x08000da6:    4928        (I      LDR      r1,[pc,#160] ; [0x8000e48] = 0x50000100
        0x08000da8:    6008        .`      STR      r0,[r1,#0]
        0x08000daa:    e035        5.      B        0x8000e18 ; HwAdcSample + 240
        0x08000dac:    4827        'H      LDR      r0,[pc,#156] ; [0x8000e4c] = 0x32601000
        0x08000dae:    4284        .B      CMP      r4,r0
        0x08000db0:    d002        ..      BEQ      0x8000db8 ; HwAdcSample + 144
        0x08000db2:    4827        'H      LDR      r0,[pc,#156] ; [0x8000e50] = 0x8600004
        0x08000db4:    4284        .B      CMP      r4,r0
        0x08000db6:    d12f        /.      BNE      0x8000e18 ; HwAdcSample + 240
        0x08000db8:    4622        "F      MOV      r2,r4
        0x08000dba:    2106        .!      MOVS     r1,#6
        0x08000dbc:    4825        %H      LDR      r0,[pc,#148] ; [0x8000e54] = 0x50000400
        0x08000dbe:    f000f944    ..D.    BL       LL_ADC_REG_SetSequencerRanks ; 0x800104a
        0x08000dc2:    4824        $H      LDR      r0,[pc,#144] ; [0x8000e54] = 0x50000400
        0x08000dc4:    f000f8ca    ....    BL       LL_ADC_Enable ; 0x8000f5c
        0x08000dc8:    bf00        ..      NOP      
        0x08000dca:    4822        "H      LDR      r0,[pc,#136] ; [0x8000e54] = 0x50000400
        0x08000dcc:    f000f8f6    ....    BL       LL_ADC_IsActiveFlag_ADRDY ; 0x8000fbc
        0x08000dd0:    2801        .(      CMP      r0,#1
        0x08000dd2:    d1fa        ..      BNE      0x8000dca ; HwAdcSample + 162
        0x08000dd4:    481f        .H      LDR      r0,[pc,#124] ; [0x8000e54] = 0x50000400
        0x08000dd6:    f000f971    ..q.    BL       LL_ADC_REG_StartConversion ; 0x80010bc
        0x08000dda:    2500        .%      MOVS     r5,#0
        0x08000ddc:    e00b        ..      B        0x8000df6 ; HwAdcSample + 206
        0x08000dde:    bf00        ..      NOP      
        0x08000de0:    481c        .H      LDR      r0,[pc,#112] ; [0x8000e54] = 0x50000400
        0x08000de2:    f000f8f0    ....    BL       LL_ADC_IsActiveFlag_EOC ; 0x8000fc6
        0x08000de6:    2800        .(      CMP      r0,#0
        0x08000de8:    d0fa        ..      BEQ      0x8000de0 ; HwAdcSample + 184
        0x08000dea:    bf00        ..      NOP      
        0x08000dec:    4819        .H      LDR      r0,[pc,#100] ; [0x8000e54] = 0x50000400
        0x08000dee:    6c00        .l      LDR      r0,[r0,#0x40]
        0x08000df0:    b280        ..      UXTH     r0,r0
        0x08000df2:    4407        .D      ADD      r7,r7,r0
        0x08000df4:    1c6d        m.      ADDS     r5,r5,#1
        0x08000df6:    42b5        .B      CMP      r5,r6
        0x08000df8:    d3f1        ..      BCC      0x8000dde ; HwAdcSample + 182
        0x08000dfa:    4816        .H      LDR      r0,[pc,#88] ; [0x8000e54] = 0x50000400
        0x08000dfc:    f000f966    ..f.    BL       LL_ADC_REG_StopConversion ; 0x80010cc
        0x08000e00:    bf00        ..      NOP      
        0x08000e02:    4814        .H      LDR      r0,[pc,#80] ; [0x8000e54] = 0x50000400
        0x08000e04:    f000f91c    ....    BL       LL_ADC_REG_IsConversionOngoing ; 0x8001040
        0x08000e08:    2800        .(      CMP      r0,#0
        0x08000e0a:    d1fa        ..      BNE      0x8000e02 ; HwAdcSample + 218
        0x08000e0c:    4811        .H      LDR      r0,[pc,#68] ; [0x8000e54] = 0x50000400
        0x08000e0e:    f000f89d    ....    BL       LL_ADC_Disable ; 0x8000f4c
        0x08000e12:    201f        .       MOVS     r0,#0x1f
        0x08000e14:    490f        .I      LDR      r1,[pc,#60] ; [0x8000e54] = 0x50000400
        0x08000e16:    6008        .`      STR      r0,[r1,#0]
        0x08000e18:    fbb7f0f6    ....    UDIV     r0,r7,r6
        0x08000e1c:    490e        .I      LDR      r1,[pc,#56] ; [0x8000e58] = 0x2000005a
        0x08000e1e:    8008        ..      STRH     r0,[r1,#0]
        0x08000e20:    4608        .F      MOV      r0,r1
        0x08000e22:    8800        ..      LDRH     r0,[r0,#0]
        0x08000e24:    f64031b8    @..1    MOV      r1,#0xbb8
        0x08000e28:    4348        HC      MULS     r0,r1,r0
        0x08000e2a:    0b00        ..      LSRS     r0,r0,#12
        0x08000e2c:    490b        .I      LDR      r1,[pc,#44] ; [0x8000e5c] = 0x2000005c
        0x08000e2e:    8008        ..      STRH     r0,[r1,#0]
        0x08000e30:    4608        .F      MOV      r0,r1
        0x08000e32:    8800        ..      LDRH     r0,[r0,#0]
        0x08000e34:    e8bd81f0    ....    POP      {r4-r8,pc}
    $d
        0x08000e38:    0c900008    ....    DCD    210763784
        0x08000e3c:    10c00010    ....    DCD    281018384
        0x08000e40:    14f00020     ...    DCD    351272992
        0x08000e44:    2e300800    ..0.    DCD    774899712
        0x08000e48:    50000100    ...P    DCD    1342177536
        0x08000e4c:    32601000    ..`2    DCD    845156352
        0x08000e50:    08600004    ..`.    DCD    140509188
        0x08000e54:    50000400    ...P    DCD    1342178304
        0x08000e58:    2000005a    Z..     DCD    536871002
        0x08000e5c:    2000005c    \..     DCD    536871004
    $t
    i.IncMsCount
    IncMsCount
        0x08000e60:    4802        .H      LDR      r0,[pc,#8] ; [0x8000e6c] = 0x2000021c
        0x08000e62:    6800        .h      LDR      r0,[r0,#0]
        0x08000e64:    1c40        @.      ADDS     r0,r0,#1
        0x08000e66:    4901        .I      LDR      r1,[pc,#4] ; [0x8000e6c] = 0x2000021c
        0x08000e68:    6008        .`      STR      r0,[r1,#0]
        0x08000e6a:    4770        pG      BX       lr
    $d
        0x08000e6c:    2000021c    ...     DCD    536871452
    $t
    i.IsTimer1Expired
    IsTimer1Expired
        0x08000e70:    b510        ..      PUSH     {r4,lr}
        0x08000e72:    4808        .H      LDR      r0,[pc,#32] ; [0x8000e94] = 0x2000004c
        0x08000e74:    7800        .x      LDRB     r0,[r0,#0]
        0x08000e76:    b150        P.      CBZ      r0,0x8000e8e ; IsTimer1Expired + 30
        0x08000e78:    f7fffcbe    ....    BL       HAL_GetTick ; 0x80007f8
        0x08000e7c:    4906        .I      LDR      r1,[pc,#24] ; [0x8000e98] = 0x20000048
        0x08000e7e:    6809        .h      LDR      r1,[r1,#0]
        0x08000e80:    1a40        @.      SUBS     r0,r0,r1
        0x08000e82:    4906        .I      LDR      r1,[pc,#24] ; [0x8000e9c] = 0x20000044
        0x08000e84:    6809        .h      LDR      r1,[r1,#0]
        0x08000e86:    4288        .B      CMP      r0,r1
        0x08000e88:    d901        ..      BLS      0x8000e8e ; IsTimer1Expired + 30
        0x08000e8a:    2001        .       MOVS     r0,#1
        0x08000e8c:    bd10        ..      POP      {r4,pc}
        0x08000e8e:    2000        .       MOVS     r0,#0
        0x08000e90:    e7fc        ..      B        0x8000e8c ; IsTimer1Expired + 28
    $d
        0x08000e92:    0000        ..      DCW    0
        0x08000e94:    2000004c    L..     DCD    536870988
        0x08000e98:    20000048    H..     DCD    536870984
        0x08000e9c:    20000044    D..     DCD    536870980
    $t
    i.IsTimer2Expired
    IsTimer2Expired
        0x08000ea0:    b510        ..      PUSH     {r4,lr}
        0x08000ea2:    4808        .H      LDR      r0,[pc,#32] ; [0x8000ec4] = 0x20000058
        0x08000ea4:    7800        .x      LDRB     r0,[r0,#0]
        0x08000ea6:    b150        P.      CBZ      r0,0x8000ebe ; IsTimer2Expired + 30
        0x08000ea8:    f7fffca6    ....    BL       HAL_GetTick ; 0x80007f8
        0x08000eac:    4906        .I      LDR      r1,[pc,#24] ; [0x8000ec8] = 0x20000054
        0x08000eae:    6809        .h      LDR      r1,[r1,#0]
        0x08000eb0:    1a40        @.      SUBS     r0,r0,r1
        0x08000eb2:    4906        .I      LDR      r1,[pc,#24] ; [0x8000ecc] = 0x20000050
        0x08000eb4:    6809        .h      LDR      r1,[r1,#0]
        0x08000eb6:    4288        .B      CMP      r0,r1
        0x08000eb8:    d901        ..      BLS      0x8000ebe ; IsTimer2Expired + 30
        0x08000eba:    2001        .       MOVS     r0,#1
        0x08000ebc:    bd10        ..      POP      {r4,pc}
        0x08000ebe:    2000        .       MOVS     r0,#0
        0x08000ec0:    e7fc        ..      B        0x8000ebc ; IsTimer2Expired + 28
    $d
        0x08000ec2:    0000        ..      DCW    0
        0x08000ec4:    20000058    X..     DCD    536871000
        0x08000ec8:    20000054    T..     DCD    536870996
        0x08000ecc:    20000050    P..     DCD    536870992
    $t
    i.LL_ADC_CommonInit
    LL_ADC_CommonInit
        0x08000ed0:    b410        ..      PUSH     {r4}
        0x08000ed2:    f04f0c00    O...    MOV      r12,#0
        0x08000ed6:    684a        Jh      LDR      r2,[r1,#4]
        0x08000ed8:    f1a043a0    ...C    SUB      r3,r0,#0x50000000
        0x08000edc:    f5b37340    ..@s    SUBS     r3,r3,#0x300
        0x08000ee0:    d00e        ..      BEQ      0x8000f00 ; LL_ADC_CommonInit + 48
        0x08000ee2:    4b16        .K      LDR      r3,[pc,#88] ; [0x8000f3c] = 0x50000400
        0x08000ee4:    689b        .h      LDR      r3,[r3,#8]
        0x08000ee6:    f0030301    ....    AND      r3,r3,#1
        0x08000eea:    4c15        .L      LDR      r4,[pc,#84] ; [0x8000f40] = 0x50000500
        0x08000eec:    68a4        .h      LDR      r4,[r4,#8]
        0x08000eee:    f0040401    ....    AND      r4,r4,#1
        0x08000ef2:    4323        #C      ORRS     r3,r3,r4
        0x08000ef4:    b17b        {.      CBZ      r3,0x8000f16 ; LL_ADC_CommonInit + 70
        0x08000ef6:    f04f0c01    O...    MOV      r12,#1
        0x08000efa:    bc10        ..      POP      {r4}
        0x08000efc:    4660        `F      MOV      r0,r12
        0x08000efe:    4770        pG      BX       lr
        0x08000f00:    f04f43a0    O..C    MOV      r3,#0x50000000
        0x08000f04:    689b        .h      LDR      r3,[r3,#8]
        0x08000f06:    f0030301    ....    AND      r3,r3,#1
        0x08000f0a:    4c0e        .L      LDR      r4,[pc,#56] ; [0x8000f44] = 0x50000100
        0x08000f0c:    68a4        .h      LDR      r4,[r4,#8]
        0x08000f0e:    f0040401    ....    AND      r4,r4,#1
        0x08000f12:    4323        #C      ORRS     r3,r3,r4
        0x08000f14:    e7ee        ..      B        0x8000ef4 ; LL_ADC_CommonInit + 36
        0x08000f16:    4b0c        .K      LDR      r3,[pc,#48] ; [0x8000f48] = 0xfffc30e0
        0x08000f18:    b152        R.      CBZ      r2,0x8000f30 ; LL_ADC_CommonInit + 96
        0x08000f1a:    680c        .h      LDR      r4,[r1,#0]
        0x08000f1c:    4322        "C      ORRS     r2,r2,r4
        0x08000f1e:    688c        .h      LDR      r4,[r1,#8]
        0x08000f20:    68c9        .h      LDR      r1,[r1,#0xc]
        0x08000f22:    4321        !C      ORRS     r1,r1,r4
        0x08000f24:    4311        .C      ORRS     r1,r1,r2
        0x08000f26:    6882        .h      LDR      r2,[r0,#8]
        0x08000f28:    401a        .@      ANDS     r2,r2,r3
        0x08000f2a:    4311        .C      ORRS     r1,r1,r2
        0x08000f2c:    6081        .`      STR      r1,[r0,#8]
        0x08000f2e:    e7e4        ..      B        0x8000efa ; LL_ADC_CommonInit + 42
        0x08000f30:    6882        .h      LDR      r2,[r0,#8]
        0x08000f32:    6809        .h      LDR      r1,[r1,#0]
        0x08000f34:    401a        .@      ANDS     r2,r2,r3
        0x08000f36:    4311        .C      ORRS     r1,r1,r2
        0x08000f38:    6081        .`      STR      r1,[r0,#8]
        0x08000f3a:    e7de        ..      B        0x8000efa ; LL_ADC_CommonInit + 42
    $d
        0x08000f3c:    50000400    ...P    DCD    1342178304
        0x08000f40:    50000500    ...P    DCD    1342178560
        0x08000f44:    50000100    ...P    DCD    1342177536
        0x08000f48:    fffc30e0    .0..    DCD    4294717664
    $t
    i.LL_ADC_Disable
    LL_ADC_Disable
        0x08000f4c:    6881        .h      LDR      r1,[r0,#8]
        0x08000f4e:    4a02        .J      LDR      r2,[pc,#8] ; [0x8000f58] = 0x7fffffc0
        0x08000f50:    4011        .@      ANDS     r1,r1,r2
        0x08000f52:    1c89        ..      ADDS     r1,r1,#2
        0x08000f54:    6081        .`      STR      r1,[r0,#8]
        0x08000f56:    4770        pG      BX       lr
    $d
        0x08000f58:    7fffffc0    ....    DCD    2147483584
    $t
    i.LL_ADC_Enable
    LL_ADC_Enable
        0x08000f5c:    6881        .h      LDR      r1,[r0,#8]
        0x08000f5e:    4a02        .J      LDR      r2,[pc,#8] ; [0x8000f68] = 0x7fffffc0
        0x08000f60:    4011        .@      ANDS     r1,r1,r2
        0x08000f62:    1c49        I.      ADDS     r1,r1,#1
        0x08000f64:    6081        .`      STR      r1,[r0,#8]
        0x08000f66:    4770        pG      BX       lr
    $d
        0x08000f68:    7fffffc0    ....    DCD    2147483584
    $t
    i.LL_ADC_EnableInternalRegulator
    LL_ADC_EnableInternalRegulator
        0x08000f6c:    6881        .h      LDR      r1,[r0,#8]
        0x08000f6e:    f0215140    !.@Q    BIC      r1,r1,#0x30000000
        0x08000f72:    6081        .`      STR      r1,[r0,#8]
        0x08000f74:    6881        .h      LDR      r1,[r0,#8]
        0x08000f76:    4a03        .J      LDR      r2,[pc,#12] ; [0x8000f84] = 0x7fffffc0
        0x08000f78:    4011        .@      ANDS     r1,r1,r2
        0x08000f7a:    f0415180    A..Q    ORR      r1,r1,#0x10000000
        0x08000f7e:    6081        .`      STR      r1,[r0,#8]
        0x08000f80:    4770        pG      BX       lr
    $d
        0x08000f82:    0000        ..      DCW    0
        0x08000f84:    7fffffc0    ....    DCD    2147483584
    $t
    i.LL_ADC_Init
    LL_ADC_Init
        0x08000f88:    2200        ."      MOVS     r2,#0
        0x08000f8a:    6883        .h      LDR      r3,[r0,#8]
        0x08000f8c:    f0030301    ....    AND      r3,r3,#1
        0x08000f90:    2b00        .+      CMP      r3,#0
        0x08000f92:    d002        ..      BEQ      0x8000f9a ; LL_ADC_Init + 18
        0x08000f94:    2201        ."      MOVS     r2,#1
        0x08000f96:    4610        .F      MOV      r0,r2
        0x08000f98:    4770        pG      BX       lr
        0x08000f9a:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x08000f9e:    680b        .h      LDR      r3,[r1,#0]
        0x08000fa0:    6889        .h      LDR      r1,[r1,#8]
        0x08000fa2:    ea43030c    C...    ORR      r3,r3,r12
        0x08000fa6:    f8d0c00c    ....    LDR      r12,[r0,#0xc]
        0x08000faa:    f02c0c38    ,.8.    BIC      r12,r12,#0x38
        0x08000fae:    f42c4c80    ,..L    BIC      r12,r12,#0x4000
        0x08000fb2:    ea41010c    A...    ORR      r1,r1,r12
        0x08000fb6:    4319        .C      ORRS     r1,r1,r3
        0x08000fb8:    60c1        .`      STR      r1,[r0,#0xc]
        0x08000fba:    e7ec        ..      B        0x8000f96 ; LL_ADC_Init + 14
    i.LL_ADC_IsActiveFlag_ADRDY
    LL_ADC_IsActiveFlag_ADRDY
        0x08000fbc:    4601        .F      MOV      r1,r0
        0x08000fbe:    6808        .h      LDR      r0,[r1,#0]
        0x08000fc0:    f0000001    ....    AND      r0,r0,#1
        0x08000fc4:    4770        pG      BX       lr
    i.LL_ADC_IsActiveFlag_EOC
    LL_ADC_IsActiveFlag_EOC
        0x08000fc6:    4601        .F      MOV      r1,r0
        0x08000fc8:    6808        .h      LDR      r0,[r1,#0]
        0x08000fca:    f3c00080    ....    UBFX     r0,r0,#2,#1
        0x08000fce:    4770        pG      BX       lr
    i.LL_ADC_REG_Init
    LL_ADC_REG_Init
        0x08000fd0:    b430        0.      PUSH     {r4,r5}
        0x08000fd2:    2300        .#      MOVS     r3,#0
        0x08000fd4:    684a        Jh      LDR      r2,[r1,#4]
        0x08000fd6:    f8d0c008    ....    LDR      r12,[r0,#8]
        0x08000fda:    f00c0c01    ....    AND      r12,r12,#1
        0x08000fde:    f1bc0f00    ....    CMP      r12,#0
        0x08000fe2:    d003        ..      BEQ      0x8000fec ; LL_ADC_REG_Init + 28
        0x08000fe4:    2301        .#      MOVS     r3,#1
        0x08000fe6:    bc30        0.      POP      {r4,r5}
        0x08000fe8:    4618        .F      MOV      r0,r3
        0x08000fea:    4770        pG      BX       lr
        0x08000fec:    f8dfc04c    ..L.    LDR      r12,[pc,#76] ; [0x800103c] = 0xfff0c03c
        0x08000ff0:    b17a        z.      CBZ      r2,0x8001012 ; LL_ADC_REG_Init + 66
        0x08000ff2:    688c        .h      LDR      r4,[r1,#8]
        0x08000ff4:    680a        .h      LDR      r2,[r1,#0]
        0x08000ff6:    690d        .i      LDR      r5,[r1,#0x10]
        0x08000ff8:    4322        "C      ORRS     r2,r2,r4
        0x08000ffa:    68cc        .h      LDR      r4,[r1,#0xc]
        0x08000ffc:    432c        ,C      ORRS     r4,r4,r5
        0x08000ffe:    4322        "C      ORRS     r2,r2,r4
        0x08001000:    694c        Li      LDR      r4,[r1,#0x14]
        0x08001002:    4322        "C      ORRS     r2,r2,r4
        0x08001004:    68c4        .h      LDR      r4,[r0,#0xc]
        0x08001006:    ea040c0c    ....    AND      r12,r4,r12
        0x0800100a:    ea42020c    B...    ORR      r2,r2,r12
        0x0800100e:    60c2        .`      STR      r2,[r0,#0xc]
        0x08001010:    e00c        ..      B        0x800102c ; LL_ADC_REG_Init + 92
        0x08001012:    68cc        .h      LDR      r4,[r1,#0xc]
        0x08001014:    680a        .h      LDR      r2,[r1,#0]
        0x08001016:    694d        Mi      LDR      r5,[r1,#0x14]
        0x08001018:    4322        "C      ORRS     r2,r2,r4
        0x0800101a:    690c        .i      LDR      r4,[r1,#0x10]
        0x0800101c:    432c        ,C      ORRS     r4,r4,r5
        0x0800101e:    4322        "C      ORRS     r2,r2,r4
        0x08001020:    68c4        .h      LDR      r4,[r0,#0xc]
        0x08001022:    ea040c0c    ....    AND      r12,r4,r12
        0x08001026:    ea42020c    B...    ORR      r2,r2,r12
        0x0800102a:    60c2        .`      STR      r2,[r0,#0xc]
        0x0800102c:    6849        Ih      LDR      r1,[r1,#4]
        0x0800102e:    6b02        .k      LDR      r2,[r0,#0x30]
        0x08001030:    f022020f    "...    BIC      r2,r2,#0xf
        0x08001034:    4311        .C      ORRS     r1,r1,r2
        0x08001036:    6301        .c      STR      r1,[r0,#0x30]
        0x08001038:    e7d5        ..      B        0x8000fe6 ; LL_ADC_REG_Init + 22
    $d
        0x0800103a:    0000        ..      DCW    0
        0x0800103c:    fff0c03c    <...    DCD    4293967932
    $t
    i.LL_ADC_REG_IsConversionOngoing
    LL_ADC_REG_IsConversionOngoing
        0x08001040:    4601        .F      MOV      r1,r0
        0x08001042:    6888        .h      LDR      r0,[r1,#8]
        0x08001044:    f3c00080    ....    UBFX     r0,r0,#2,#1
        0x08001048:    4770        pG      BX       lr
    i.LL_ADC_REG_SetSequencerRanks
    LL_ADC_REG_SetSequencerRanks
        0x0800104a:    b570        p.      PUSH     {r4-r6,lr}
        0x0800104c:    f4017440    ..@t    AND      r4,r1,#0x300
        0x08001050:    f44f7540    O.@u    MOV      r5,#0x300
        0x08001054:    fa95f5a5    ....    RBIT     r5,r5
        0x08001058:    fab5f585    ....    CLZ      r5,r5
        0x0800105c:    40ec        .@      LSRS     r4,r4,r5
        0x0800105e:    f1000530    ..0.    ADD      r5,r0,#0x30
        0x08001062:    eb050384    ....    ADD      r3,r5,r4,LSL #2
        0x08001066:    681c        .h      LDR      r4,[r3,#0]
        0x08001068:    f001061f    ....    AND      r6,r1,#0x1f
        0x0800106c:    251f        .%      MOVS     r5,#0x1f
        0x0800106e:    40b5        .@      LSLS     r5,r5,r6
        0x08001070:    43ac        .C      BICS     r4,r4,r5
        0x08001072:    f001061f    ....    AND      r6,r1,#0x1f
        0x08001076:    f3c26584    ...e    UBFX     r5,r2,#26,#5
        0x0800107a:    40b5        .@      LSLS     r5,r5,r6
        0x0800107c:    432c        ,C      ORRS     r4,r4,r5
        0x0800107e:    601c        .`      STR      r4,[r3,#0]
        0x08001080:    bd70        p.      POP      {r4-r6,pc}
    i.LL_ADC_REG_SetSequencerRanks
    LL_ADC_REG_SetSequencerRanks
        0x08001082:    b570        p.      PUSH     {r4-r6,lr}
        0x08001084:    f4017440    ..@t    AND      r4,r1,#0x300
        0x08001088:    f44f7540    O.@u    MOV      r5,#0x300
        0x0800108c:    fa95f5a5    ....    RBIT     r5,r5
        0x08001090:    fab5f585    ....    CLZ      r5,r5
        0x08001094:    40ec        .@      LSRS     r4,r4,r5
        0x08001096:    f1000530    ..0.    ADD      r5,r0,#0x30
        0x0800109a:    eb050384    ....    ADD      r3,r5,r4,LSL #2
        0x0800109e:    681c        .h      LDR      r4,[r3,#0]
        0x080010a0:    f001061f    ....    AND      r6,r1,#0x1f
        0x080010a4:    251f        .%      MOVS     r5,#0x1f
        0x080010a6:    40b5        .@      LSLS     r5,r5,r6
        0x080010a8:    43ac        .C      BICS     r4,r4,r5
        0x080010aa:    f001061f    ....    AND      r6,r1,#0x1f
        0x080010ae:    f3c26584    ...e    UBFX     r5,r2,#26,#5
        0x080010b2:    40b5        .@      LSLS     r5,r5,r6
        0x080010b4:    432c        ,C      ORRS     r4,r4,r5
        0x080010b6:    601c        .`      STR      r4,[r3,#0]
        0x080010b8:    bd70        p.      POP      {r4-r6,pc}
        0x080010ba:    0000        ..      MOVS     r0,r0
    i.LL_ADC_REG_StartConversion
    LL_ADC_REG_StartConversion
        0x080010bc:    6881        .h      LDR      r1,[r0,#8]
        0x080010be:    4a02        .J      LDR      r2,[pc,#8] ; [0x80010c8] = 0x7fffffc0
        0x080010c0:    4011        .@      ANDS     r1,r1,r2
        0x080010c2:    1d09        ..      ADDS     r1,r1,#4
        0x080010c4:    6081        .`      STR      r1,[r0,#8]
        0x080010c6:    4770        pG      BX       lr
    $d
        0x080010c8:    7fffffc0    ....    DCD    2147483584
    $t
    i.LL_ADC_REG_StopConversion
    LL_ADC_REG_StopConversion
        0x080010cc:    6881        .h      LDR      r1,[r0,#8]
        0x080010ce:    4a03        .J      LDR      r2,[pc,#12] ; [0x80010dc] = 0x7fffffc0
        0x080010d0:    4011        .@      ANDS     r1,r1,r2
        0x080010d2:    f0410110    A...    ORR      r1,r1,#0x10
        0x080010d6:    6081        .`      STR      r1,[r0,#8]
        0x080010d8:    4770        pG      BX       lr
    $d
        0x080010da:    0000        ..      DCW    0
        0x080010dc:    7fffffc0    ....    DCD    2147483584
    $t
    i.LL_ADC_SetChannelSamplingTime
    LL_ADC_SetChannelSamplingTime
        0x080010e0:    b570        p.      PUSH     {r4-r6,lr}
        0x080010e2:    f0017400    ...t    AND      r4,r1,#0x2000000
        0x080010e6:    f04f7500    O..u    MOV      r5,#0x2000000
        0x080010ea:    fa95f5a5    ....    RBIT     r5,r5
        0x080010ee:    fab5f585    ....    CLZ      r5,r5
        0x080010f2:    40ec        .@      LSRS     r4,r4,r5
        0x080010f4:    f1000514    ....    ADD      r5,r0,#0x14
        0x080010f8:    eb050384    ....    ADD      r3,r5,r4,LSL #2
        0x080010fc:    681c        .h      LDR      r4,[r3,#0]
        0x080010fe:    f00175f8    ...u    AND      r5,r1,#0x1f00000
        0x08001102:    f04f76f8    O..v    MOV      r6,#0x1f00000
        0x08001106:    fa96f6a6    ....    RBIT     r6,r6
        0x0800110a:    fab6f686    ....    CLZ      r6,r6
        0x0800110e:    40f5        .@      LSRS     r5,r5,r6
        0x08001110:    2607        .&      MOVS     r6,#7
        0x08001112:    40ae        .@      LSLS     r6,r6,r5
        0x08001114:    43b4        .C      BICS     r4,r4,r6
        0x08001116:    f00175f8    ...u    AND      r5,r1,#0x1f00000
        0x0800111a:    f04f76f8    O..v    MOV      r6,#0x1f00000
        0x0800111e:    fa96f6a6    ....    RBIT     r6,r6
        0x08001122:    fab6f686    ....    CLZ      r6,r6
        0x08001126:    40f5        .@      LSRS     r5,r5,r6
        0x08001128:    fa02f505    ....    LSL      r5,r2,r5
        0x0800112c:    432c        ,C      ORRS     r4,r4,r5
        0x0800112e:    601c        .`      STR      r4,[r3,#0]
        0x08001130:    bd70        p.      POP      {r4-r6,pc}
        0x08001132:    0000        ..      MOVS     r0,r0
    i.LL_ADC_SetChannelSingleDiff
    LL_ADC_SetChannelSingleDiff
        0x08001134:    b570        p.      PUSH     {r4-r6,lr}
        0x08001136:    f8d030b0    ...0    LDR      r3,[r0,#0xb0]
        0x0800113a:    4c07        .L      LDR      r4,[pc,#28] ; [0x8001158] = 0x7fffe
        0x0800113c:    400c        .@      ANDS     r4,r4,r1
        0x0800113e:    43a3        .C      BICS     r3,r3,r4
        0x08001140:    4c05        .L      LDR      r4,[pc,#20] ; [0x8001158] = 0x7fffe
        0x08001142:    400c        .@      ANDS     r4,r4,r1
        0x08001144:    f0020618    ....    AND      r6,r2,#0x18
        0x08001148:    4d03        .M      LDR      r5,[pc,#12] ; [0x8001158] = 0x7fffe
        0x0800114a:    40f5        .@      LSRS     r5,r5,r6
        0x0800114c:    402c        ,@      ANDS     r4,r4,r5
        0x0800114e:    4323        #C      ORRS     r3,r3,r4
        0x08001150:    f8c030b0    ...0    STR      r3,[r0,#0xb0]
        0x08001154:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08001156:    0000        ..      DCW    0
        0x08001158:    0007fffe    ....    DCD    524286
    $t
    i.LL_AHB1_GRP1_EnableClock
    LL_AHB1_GRP1_EnableClock
        0x0800115c:    b508        ..      PUSH     {r3,lr}
        0x0800115e:    4905        .I      LDR      r1,[pc,#20] ; [0x8001174] = 0x40021000
        0x08001160:    6949        Ii      LDR      r1,[r1,#0x14]
        0x08001162:    4301        .C      ORRS     r1,r1,r0
        0x08001164:    4a03        .J      LDR      r2,[pc,#12] ; [0x8001174] = 0x40021000
        0x08001166:    6151        Qa      STR      r1,[r2,#0x14]
        0x08001168:    4611        .F      MOV      r1,r2
        0x0800116a:    6949        Ii      LDR      r1,[r1,#0x14]
        0x0800116c:    4001        .@      ANDS     r1,r1,r0
        0x0800116e:    9100        ..      STR      r1,[sp,#0]
        0x08001170:    bf00        ..      NOP      
        0x08001172:    bd08        ..      POP      {r3,pc}
    $d
        0x08001174:    40021000    ...@    DCD    1073876992
    $t
    i.LL_APB1_GRP1_EnableClock
    LL_APB1_GRP1_EnableClock
        0x08001178:    b508        ..      PUSH     {r3,lr}
        0x0800117a:    4905        .I      LDR      r1,[pc,#20] ; [0x8001190] = 0x40021000
        0x0800117c:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x0800117e:    4301        .C      ORRS     r1,r1,r0
        0x08001180:    4a03        .J      LDR      r2,[pc,#12] ; [0x8001190] = 0x40021000
        0x08001182:    61d1        .a      STR      r1,[r2,#0x1c]
        0x08001184:    4611        .F      MOV      r1,r2
        0x08001186:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x08001188:    4001        .@      ANDS     r1,r1,r0
        0x0800118a:    9100        ..      STR      r1,[sp,#0]
        0x0800118c:    bf00        ..      NOP      
        0x0800118e:    bd08        ..      POP      {r3,pc}
    $d
        0x08001190:    40021000    ...@    DCD    1073876992
    $t
    i.LL_COMP_Init
    LL_COMP_Init
        0x08001194:    b410        ..      PUSH     {r4}
        0x08001196:    2200        ."      MOVS     r2,#0
        0x08001198:    6803        .h      LDR      r3,[r0,#0]
        0x0800119a:    0fdb        ..      LSRS     r3,r3,#31
        0x0800119c:    2b00        .+      CMP      r3,#0
        0x0800119e:    d003        ..      BEQ      0x80011a8 ; LL_COMP_Init + 20
        0x080011a0:    2201        ."      MOVS     r2,#1
        0x080011a2:    bc10        ..      POP      {r4}
        0x080011a4:    4610        .F      MOV      r0,r2
        0x080011a6:    4770        pG      BX       lr
        0x080011a8:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x080011ac:    680b        .h      LDR      r3,[r1,#0]
        0x080011ae:    68cc        .h      LDR      r4,[r1,#0xc]
        0x080011b0:    ea43030c    C...    ORR      r3,r3,r12
        0x080011b4:    f8d1c008    ....    LDR      r12,[r1,#8]
        0x080011b8:    ea4c0c04    L...    ORR      r12,r12,r4
        0x080011bc:    ea43030c    C...    ORR      r3,r3,r12
        0x080011c0:    f8d1c010    ....    LDR      r12,[r1,#0x10]
        0x080011c4:    ea43030c    C...    ORR      r3,r3,r12
        0x080011c8:    f8d1c014    ....    LDR      r12,[r1,#0x14]
        0x080011cc:    6989        .i      LDR      r1,[r1,#0x18]
        0x080011ce:    ea43030c    C...    ORR      r3,r3,r12
        0x080011d2:    4319        .C      ORRS     r1,r1,r3
        0x080011d4:    6803        .h      LDR      r3,[r0,#0]
        0x080011d6:    f8dfc00c    ....    LDR      r12,[pc,#12] ; [0x80011e4] = 0xfff04303
        0x080011da:    ea03030c    ....    AND      r3,r3,r12
        0x080011de:    4319        .C      ORRS     r1,r1,r3
        0x080011e0:    6001        .`      STR      r1,[r0,#0]
        0x080011e2:    e7de        ..      B        0x80011a2 ; LL_COMP_Init + 14
    $d
        0x080011e4:    fff04303    .C..    DCD    4293935875
    $t
    i.LL_DAC_DisableTrigger
    LL_DAC_DisableTrigger
        0x080011e8:    b510        ..      PUSH     {r4,lr}
        0x080011ea:    6802        .h      LDR      r2,[r0,#0]
        0x080011ec:    f0010410    ....    AND      r4,r1,#0x10
        0x080011f0:    2304        .#      MOVS     r3,#4
        0x080011f2:    40a3        .@      LSLS     r3,r3,r4
        0x080011f4:    439a        .C      BICS     r2,r2,r3
        0x080011f6:    6002        .`      STR      r2,[r0,#0]
        0x080011f8:    bd10        ..      POP      {r4,pc}
    i.LL_DAC_Init
    LL_DAC_Init
        0x080011fa:    b430        0.      PUSH     {r4,r5}
        0x080011fc:    2400        .$      MOVS     r4,#0
        0x080011fe:    6853        Sh      LDR      r3,[r2,#4]
        0x08001200:    f0010110    ....    AND      r1,r1,#0x10
        0x08001204:    f04f0c01    O...    MOV      r12,#1
        0x08001208:    6805        .h      LDR      r5,[r0,#0]
        0x0800120a:    fa0cfc01    ....    LSL      r12,r12,r1
        0x0800120e:    ea3c0c05    <...    BICS     r12,r12,r5
        0x08001212:    d007        ..      BEQ      0x8001224 ; LL_DAC_Init + 42
        0x08001214:    46a4        .F      MOV      r12,r4
        0x08001216:    f1bc0f00    ....    CMP      r12,#0
        0x0800121a:    d006        ..      BEQ      0x800122a ; LL_DAC_Init + 48
        0x0800121c:    2401        .$      MOVS     r4,#1
        0x0800121e:    4620         F      MOV      r0,r4
        0x08001220:    bc30        0.      POP      {r4,r5}
        0x08001222:    4770        pG      BX       lr
        0x08001224:    f04f0c01    O...    MOV      r12,#1
        0x08001228:    e7f5        ..      B        0x8001216 ; LL_DAC_Init + 28
        0x0800122a:    b1a3        ..      CBZ      r3,0x8001256 ; LL_DAC_Init + 92
        0x0800122c:    f8d2c000    ....    LDR      r12,[r2,#0]
        0x08001230:    ea4c0303    L...    ORR      r3,r12,r3
        0x08001234:    f8d2c008    ....    LDR      r12,[r2,#8]
        0x08001238:    68d2        .h      LDR      r2,[r2,#0xc]
        0x0800123a:    ea4c0202    L...    ORR      r2,r12,r2
        0x0800123e:    431a        .C      ORRS     r2,r2,r3
        0x08001240:    6803        .h      LDR      r3,[r0,#0]
        0x08001242:    408a        .@      LSLS     r2,r2,r1
        0x08001244:    f6407cfa    @..|    MOV      r12,#0xffa
        0x08001248:    fa0cf101    ....    LSL      r1,r12,r1
        0x0800124c:    ea230101    #...    BIC      r1,r3,r1
        0x08001250:    4311        .C      ORRS     r1,r1,r2
        0x08001252:    6001        .`      STR      r1,[r0,#0]
        0x08001254:    e7e3        ..      B        0x800121e ; LL_DAC_Init + 36
        0x08001256:    6803        .h      LDR      r3,[r0,#0]
        0x08001258:    f04f0cfa    O...    MOV      r12,#0xfa
        0x0800125c:    fa0cfc01    ....    LSL      r12,r12,r1
        0x08001260:    ea23030c    #...    BIC      r3,r3,r12
        0x08001264:    f8d2c000    ....    LDR      r12,[r2,#0]
        0x08001268:    68d2        .h      LDR      r2,[r2,#0xc]
        0x0800126a:    ea4c0202    L...    ORR      r2,r12,r2
        0x0800126e:    fa02f101    ....    LSL      r1,r2,r1
        0x08001272:    4319        .C      ORRS     r1,r1,r3
        0x08001274:    6001        .`      STR      r1,[r0,#0]
        0x08001276:    e7d2        ..      B        0x800121e ; LL_DAC_Init + 36
    i.LL_EXTI_Init
    LL_EXTI_Init
        0x08001278:    b470        p.      PUSH     {r4-r6}
        0x0800127a:    2200        ."      MOVS     r2,#0
        0x0800127c:    4d64        dM      LDR      r5,[pc,#400] ; [0x8001410] = 0x40010404
        0x0800127e:    7a03        .z      LDRB     r3,[r0,#8]
        0x08001280:    f8dfc190    ....    LDR      r12,[pc,#400] ; [0x8001414] = 0x40010424
        0x08001284:    1f2e        ..      SUBS     r6,r5,#4
        0x08001286:    6801        .h      LDR      r1,[r0,#0]
        0x08001288:    f1ac0404    ....    SUB      r4,r12,#4
        0x0800128c:    2b00        .+      CMP      r3,#0
        0x0800128e:    d078        x.      BEQ      0x8001382 ; LL_EXTI_Init + 266
        0x08001290:    b189        ..      CBZ      r1,0x80012b6 ; LL_EXTI_Init + 62
        0x08001292:    7a43        Cz      LDRB     r3,[r0,#9]
        0x08001294:    b343        C.      CBZ      r3,0x80012e8 ; LL_EXTI_Init + 112
        0x08001296:    2b01        .+      CMP      r3,#1
        0x08001298:    d02f        /.      BEQ      0x80012fa ; LL_EXTI_Init + 130
        0x0800129a:    2b02        .+      CMP      r3,#2
        0x0800129c:    d036        6.      BEQ      0x800130c ; LL_EXTI_Init + 148
        0x0800129e:    2201        ."      MOVS     r2,#1
        0x080012a0:    7a81        .z      LDRB     r1,[r0,#0xa]
        0x080012a2:    b141        A.      CBZ      r1,0x80012b6 ; LL_EXTI_Init + 62
        0x080012a4:    4d5c        \M      LDR      r5,[pc,#368] ; [0x8001418] = 0x4001040c
        0x080012a6:    1f2b        +.      SUBS     r3,r5,#4
        0x080012a8:    2901        .)      CMP      r1,#1
        0x080012aa:    d037        7.      BEQ      0x800131c ; LL_EXTI_Init + 164
        0x080012ac:    2902        .)      CMP      r1,#2
        0x080012ae:    d03f        ?.      BEQ      0x8001330 ; LL_EXTI_Init + 184
        0x080012b0:    2903        .)      CMP      r1,#3
        0x080012b2:    d047        G.      BEQ      0x8001344 ; LL_EXTI_Init + 204
        0x080012b4:    2201        ."      MOVS     r2,#1
        0x080012b6:    6841        Ah      LDR      r1,[r0,#4]
        0x080012b8:    2900        .)      CMP      r1,#0
        0x080012ba:    d078        x.      BEQ      0x80013ae ; LL_EXTI_Init + 310
        0x080012bc:    7a43        Cz      LDRB     r3,[r0,#9]
        0x080012be:    2b00        .+      CMP      r3,#0
        0x080012c0:    d049        I.      BEQ      0x8001356 ; LL_EXTI_Init + 222
        0x080012c2:    2b01        .+      CMP      r3,#1
        0x080012c4:    d052        R.      BEQ      0x800136c ; LL_EXTI_Init + 244
        0x080012c6:    2b02        .+      CMP      r3,#2
        0x080012c8:    d05c        \.      BEQ      0x8001384 ; LL_EXTI_Init + 268
        0x080012ca:    2201        ."      MOVS     r2,#1
        0x080012cc:    7a81        .z      LDRB     r1,[r0,#0xa]
        0x080012ce:    2900        .)      CMP      r1,#0
        0x080012d0:    d06d        m.      BEQ      0x80013ae ; LL_EXTI_Init + 310
        0x080012d2:    4b52        RK      LDR      r3,[pc,#328] ; [0x800141c] = 0x4001042c
        0x080012d4:    2901        .)      CMP      r1,#1
        0x080012d6:    f1a30c04    ....    SUB      r12,r3,#4
        0x080012da:    d05d        ].      BEQ      0x8001398 ; LL_EXTI_Init + 288
        0x080012dc:    2902        .)      CMP      r1,#2
        0x080012de:    d067        g.      BEQ      0x80013b0 ; LL_EXTI_Init + 312
        0x080012e0:    2903        .)      CMP      r1,#3
        0x080012e2:    d072        r.      BEQ      0x80013ca ; LL_EXTI_Init + 338
        0x080012e4:    2201        ."      MOVS     r2,#1
        0x080012e6:    e090        ..      B        0x800140a ; LL_EXTI_Init + 402
        0x080012e8:    682b        +h      LDR      r3,[r5,#0]
        0x080012ea:    ea230101    #...    BIC      r1,r3,r1
        0x080012ee:    6029        )`      STR      r1,[r5,#0]
        0x080012f0:    6801        .h      LDR      r1,[r0,#0]
        0x080012f2:    6833        3h      LDR      r3,[r6,#0]
        0x080012f4:    4319        .C      ORRS     r1,r1,r3
        0x080012f6:    6031        1`      STR      r1,[r6,#0]
        0x080012f8:    e7d2        ..      B        0x80012a0 ; LL_EXTI_Init + 40
        0x080012fa:    6833        3h      LDR      r3,[r6,#0]
        0x080012fc:    ea230101    #...    BIC      r1,r3,r1
        0x08001300:    6031        1`      STR      r1,[r6,#0]
        0x08001302:    6801        .h      LDR      r1,[r0,#0]
        0x08001304:    682b        +h      LDR      r3,[r5,#0]
        0x08001306:    4319        .C      ORRS     r1,r1,r3
        0x08001308:    6029        )`      STR      r1,[r5,#0]
        0x0800130a:    e7c9        ..      B        0x80012a0 ; LL_EXTI_Init + 40
        0x0800130c:    6833        3h      LDR      r3,[r6,#0]
        0x0800130e:    4319        .C      ORRS     r1,r1,r3
        0x08001310:    6031        1`      STR      r1,[r6,#0]
        0x08001312:    6801        .h      LDR      r1,[r0,#0]
        0x08001314:    682b        +h      LDR      r3,[r5,#0]
        0x08001316:    4319        .C      ORRS     r1,r1,r3
        0x08001318:    6029        )`      STR      r1,[r5,#0]
        0x0800131a:    e7c1        ..      B        0x80012a0 ; LL_EXTI_Init + 40
        0x0800131c:    6801        .h      LDR      r1,[r0,#0]
        0x0800131e:    682e        .h      LDR      r6,[r5,#0]
        0x08001320:    ea260101    &...    BIC      r1,r6,r1
        0x08001324:    6029        )`      STR      r1,[r5,#0]
        0x08001326:    6801        .h      LDR      r1,[r0,#0]
        0x08001328:    681d        .h      LDR      r5,[r3,#0]
        0x0800132a:    4329        )C      ORRS     r1,r1,r5
        0x0800132c:    6019        .`      STR      r1,[r3,#0]
        0x0800132e:    e7c2        ..      B        0x80012b6 ; LL_EXTI_Init + 62
        0x08001330:    6801        .h      LDR      r1,[r0,#0]
        0x08001332:    681e        .h      LDR      r6,[r3,#0]
        0x08001334:    ea260101    &...    BIC      r1,r6,r1
        0x08001338:    6019        .`      STR      r1,[r3,#0]
        0x0800133a:    6801        .h      LDR      r1,[r0,#0]
        0x0800133c:    682b        +h      LDR      r3,[r5,#0]
        0x0800133e:    4319        .C      ORRS     r1,r1,r3
        0x08001340:    6029        )`      STR      r1,[r5,#0]
        0x08001342:    e7b8        ..      B        0x80012b6 ; LL_EXTI_Init + 62
        0x08001344:    6801        .h      LDR      r1,[r0,#0]
        0x08001346:    681e        .h      LDR      r6,[r3,#0]
        0x08001348:    4331        1C      ORRS     r1,r1,r6
        0x0800134a:    6019        .`      STR      r1,[r3,#0]
        0x0800134c:    6801        .h      LDR      r1,[r0,#0]
        0x0800134e:    682b        +h      LDR      r3,[r5,#0]
        0x08001350:    4319        .C      ORRS     r1,r1,r3
        0x08001352:    6029        )`      STR      r1,[r5,#0]
        0x08001354:    e7af        ..      B        0x80012b6 ; LL_EXTI_Init + 62
        0x08001356:    f8dc3000    ...0    LDR      r3,[r12,#0]
        0x0800135a:    ea230101    #...    BIC      r1,r3,r1
        0x0800135e:    f8cc1000    ....    STR      r1,[r12,#0]
        0x08001362:    6841        Ah      LDR      r1,[r0,#4]
        0x08001364:    6823        #h      LDR      r3,[r4,#0]
        0x08001366:    4319        .C      ORRS     r1,r1,r3
        0x08001368:    6021        !`      STR      r1,[r4,#0]
        0x0800136a:    e7af        ..      B        0x80012cc ; LL_EXTI_Init + 84
        0x0800136c:    6823        #h      LDR      r3,[r4,#0]
        0x0800136e:    ea230101    #...    BIC      r1,r3,r1
        0x08001372:    6021        !`      STR      r1,[r4,#0]
        0x08001374:    6841        Ah      LDR      r1,[r0,#4]
        0x08001376:    f8dc3000    ...0    LDR      r3,[r12,#0]
        0x0800137a:    4319        .C      ORRS     r1,r1,r3
        0x0800137c:    f8cc1000    ....    STR      r1,[r12,#0]
        0x08001380:    e7a4        ..      B        0x80012cc ; LL_EXTI_Init + 84
        0x08001382:    e02d        -.      B        0x80013e0 ; LL_EXTI_Init + 360
        0x08001384:    6823        #h      LDR      r3,[r4,#0]
        0x08001386:    4319        .C      ORRS     r1,r1,r3
        0x08001388:    6021        !`      STR      r1,[r4,#0]
        0x0800138a:    6841        Ah      LDR      r1,[r0,#4]
        0x0800138c:    f8dc3000    ...0    LDR      r3,[r12,#0]
        0x08001390:    4319        .C      ORRS     r1,r1,r3
        0x08001392:    f8cc1000    ....    STR      r1,[r12,#0]
        0x08001396:    e799        ..      B        0x80012cc ; LL_EXTI_Init + 84
        0x08001398:    6841        Ah      LDR      r1,[r0,#4]
        0x0800139a:    681c        .h      LDR      r4,[r3,#0]
        0x0800139c:    ea240101    $...    BIC      r1,r4,r1
        0x080013a0:    6019        .`      STR      r1,[r3,#0]
        0x080013a2:    6840        @h      LDR      r0,[r0,#4]
        0x080013a4:    f8dc1000    ....    LDR      r1,[r12,#0]
        0x080013a8:    4308        .C      ORRS     r0,r0,r1
        0x080013aa:    f8cc0000    ....    STR      r0,[r12,#0]
        0x080013ae:    e02c        ,.      B        0x800140a ; LL_EXTI_Init + 402
        0x080013b0:    6841        Ah      LDR      r1,[r0,#4]
        0x080013b2:    f8dc4000    ...@    LDR      r4,[r12,#0]
        0x080013b6:    ea240101    $...    BIC      r1,r4,r1
        0x080013ba:    f8cc1000    ....    STR      r1,[r12,#0]
        0x080013be:    6840        @h      LDR      r0,[r0,#4]
        0x080013c0:    6819        .h      LDR      r1,[r3,#0]
        0x080013c2:    4308        .C      ORRS     r0,r0,r1
        0x080013c4:    6018        .`      STR      r0,[r3,#0]
        0x080013c6:    e020         .      B        0x800140a ; LL_EXTI_Init + 402
        0x080013c8:    e7ff        ..      B        0x80013ca ; LL_EXTI_Init + 338
        0x080013ca:    6841        Ah      LDR      r1,[r0,#4]
        0x080013cc:    f8dc4000    ...@    LDR      r4,[r12,#0]
        0x080013d0:    4321        !C      ORRS     r1,r1,r4
        0x080013d2:    f8cc1000    ....    STR      r1,[r12,#0]
        0x080013d6:    6840        @h      LDR      r0,[r0,#4]
        0x080013d8:    6819        .h      LDR      r1,[r3,#0]
        0x080013da:    4308        .C      ORRS     r0,r0,r1
        0x080013dc:    6018        .`      STR      r0,[r3,#0]
        0x080013de:    e014        ..      B        0x800140a ; LL_EXTI_Init + 402
        0x080013e0:    6833        3h      LDR      r3,[r6,#0]
        0x080013e2:    ea230101    #...    BIC      r1,r3,r1
        0x080013e6:    6031        1`      STR      r1,[r6,#0]
        0x080013e8:    6801        .h      LDR      r1,[r0,#0]
        0x080013ea:    682b        +h      LDR      r3,[r5,#0]
        0x080013ec:    ea230101    #...    BIC      r1,r3,r1
        0x080013f0:    6029        )`      STR      r1,[r5,#0]
        0x080013f2:    6841        Ah      LDR      r1,[r0,#4]
        0x080013f4:    6823        #h      LDR      r3,[r4,#0]
        0x080013f6:    ea230101    #...    BIC      r1,r3,r1
        0x080013fa:    6021        !`      STR      r1,[r4,#0]
        0x080013fc:    6840        @h      LDR      r0,[r0,#4]
        0x080013fe:    f8dc1000    ....    LDR      r1,[r12,#0]
        0x08001402:    ea210000    !...    BIC      r0,r1,r0
        0x08001406:    f8cc0000    ....    STR      r0,[r12,#0]
        0x0800140a:    bc70        p.      POP      {r4-r6}
        0x0800140c:    4610        .F      MOV      r0,r2
        0x0800140e:    4770        pG      BX       lr
    $d
        0x08001410:    40010404    ...@    DCD    1073808388
        0x08001414:    40010424    $..@    DCD    1073808420
        0x08001418:    4001040c    ...@    DCD    1073808396
        0x0800141c:    4001042c    ,..@    DCD    1073808428
    $t
    i.LL_GPIO_Init
    LL_GPIO_Init
        0x08001420:    e92d03f0    -...    PUSH     {r4-r9}
        0x08001424:    680a        .h      LDR      r2,[r1,#0]
        0x08001426:    fa92f3a2    ....    RBIT     r3,r2
        0x0800142a:    fab3f383    ....    CLZ      r3,r3
        0x0800142e:    40da        .@      LSRS     r2,r2,r3
        0x08001430:    d076        v.      BEQ      0x8001520 ; LL_GPIO_Init + 256
        0x08001432:    2601        .&      MOVS     r6,#1
        0x08001434:    250f        .%      MOVS     r5,#0xf
        0x08001436:    2403        .$      MOVS     r4,#3
        0x08001438:    680a        .h      LDR      r2,[r1,#0]
        0x0800143a:    fa06fc03    ....    LSL      r12,r6,r3
        0x0800143e:    ea02020c    ....    AND      r2,r2,r12
        0x08001442:    2a00        .*      CMP      r2,#0
        0x08001444:    d06d        m.      BEQ      0x8001522 ; LL_GPIO_Init + 258
        0x08001446:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x0800144a:    f1bc0f01    ....    CMP      r12,#1
        0x0800144e:    d002        ..      BEQ      0x8001456 ; LL_GPIO_Init + 54
        0x08001450:    f1bc0f02    ....    CMP      r12,#2
        0x08001454:    d125        %.      BNE      0x80014a2 ; LL_GPIO_Init + 130
        0x08001456:    f8d1c008    ....    LDR      r12,[r1,#8]
        0x0800145a:    6887        .h      LDR      r7,[r0,#8]
        0x0800145c:    fa92f8a2    ....    RBIT     r8,r2
        0x08001460:    fab8f888    ....    CLZ      r8,r8
        0x08001464:    ea4f0848    O.H.    LSL      r8,r8,#1
        0x08001468:    fa04f808    ....    LSL      r8,r4,r8
        0x0800146c:    ea270708    '...    BIC      r7,r7,r8
        0x08001470:    fa92f8a2    ....    RBIT     r8,r2
        0x08001474:    fab8f888    ....    CLZ      r8,r8
        0x08001478:    ea4f0848    O.H.    LSL      r8,r8,#1
        0x0800147c:    fa0cfc08    ....    LSL      r12,r12,r8
        0x08001480:    ea470c0c    G...    ORR      r12,r7,r12
        0x08001484:    f8c0c008    ....    STR      r12,[r0,#8]
        0x08001488:    f8d1c000    ....    LDR      r12,[r1,#0]
        0x0800148c:    68cf        .h      LDR      r7,[r1,#0xc]
        0x0800148e:    f8d08004    ....    LDR      r8,[r0,#4]
        0x08001492:    ea28080c    (...    BIC      r8,r8,r12
        0x08001496:    fb0cfc07    ....    MUL      r12,r12,r7
        0x0800149a:    ea480c0c    H...    ORR      r12,r8,r12
        0x0800149e:    f8c0c004    ....    STR      r12,[r0,#4]
        0x080014a2:    f8d1c010    ....    LDR      r12,[r1,#0x10]
        0x080014a6:    68c7        .h      LDR      r7,[r0,#0xc]
        0x080014a8:    fa92f8a2    ....    RBIT     r8,r2
        0x080014ac:    fab8f888    ....    CLZ      r8,r8
        0x080014b0:    ea4f0848    O.H.    LSL      r8,r8,#1
        0x080014b4:    fa04f808    ....    LSL      r8,r4,r8
        0x080014b8:    ea270708    '...    BIC      r7,r7,r8
        0x080014bc:    fa92f8a2    ....    RBIT     r8,r2
        0x080014c0:    fab8f888    ....    CLZ      r8,r8
        0x080014c4:    ea4f0848    O.H.    LSL      r8,r8,#1
        0x080014c8:    fa0cfc08    ....    LSL      r12,r12,r8
        0x080014cc:    ea470c0c    G...    ORR      r12,r7,r12
        0x080014d0:    f8c0c00c    ....    STR      r12,[r0,#0xc]
        0x080014d4:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x080014d8:    f1bc0f02    ....    CMP      r12,#2
        0x080014dc:    d13d        =.      BNE      0x800155a ; LL_GPIO_Init + 314
        0x080014de:    fa92fca2    ....    RBIT     r12,r2
        0x080014e2:    fabcfc8c    ....    CLZ      r12,r12
        0x080014e6:    f1bc0f08    ....    CMP      r12,#8
        0x080014ea:    d21b        ..      BCS      0x8001524 ; LL_GPIO_Init + 260
        0x080014ec:    f8d1c014    ....    LDR      r12,[r1,#0x14]
        0x080014f0:    6a07        .j      LDR      r7,[r0,#0x20]
        0x080014f2:    fa92f8a2    ....    RBIT     r8,r2
        0x080014f6:    fab8f888    ....    CLZ      r8,r8
        0x080014fa:    ea4f0888    O...    LSL      r8,r8,#2
        0x080014fe:    fa05f808    ....    LSL      r8,r5,r8
        0x08001502:    ea270708    '...    BIC      r7,r7,r8
        0x08001506:    fa92f8a2    ....    RBIT     r8,r2
        0x0800150a:    fab8f888    ....    CLZ      r8,r8
        0x0800150e:    ea4f0888    O...    LSL      r8,r8,#2
        0x08001512:    fa0cfc08    ....    LSL      r12,r12,r8
        0x08001516:    ea470c0c    G...    ORR      r12,r7,r12
        0x0800151a:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x0800151e:    e01c        ..      B        0x800155a ; LL_GPIO_Init + 314
        0x08001520:    e036        6.      B        0x8001590 ; LL_GPIO_Init + 368
        0x08001522:    e030        0.      B        0x8001586 ; LL_GPIO_Init + 358
        0x08001524:    694f        Oi      LDR      r7,[r1,#0x14]
        0x08001526:    f8d08024    ..$.    LDR      r8,[r0,#0x24]
        0x0800152a:    ea4f2c12    O..,    LSR      r12,r2,#8
        0x0800152e:    fa9cf9ac    ....    RBIT     r9,r12
        0x08001532:    fab9f989    ....    CLZ      r9,r9
        0x08001536:    fa9cfcac    ....    RBIT     r12,r12
        0x0800153a:    ea4f0989    O...    LSL      r9,r9,#2
        0x0800153e:    fabcfc8c    ....    CLZ      r12,r12
        0x08001542:    fa05f909    ....    LSL      r9,r5,r9
        0x08001546:    ea4f0c8c    O...    LSL      r12,r12,#2
        0x0800154a:    ea280809    (...    BIC      r8,r8,r9
        0x0800154e:    fa07fc0c    ....    LSL      r12,r7,r12
        0x08001552:    ea480c0c    H...    ORR      r12,r8,r12
        0x08001556:    f8c0c024    ..$.    STR      r12,[r0,#0x24]
        0x0800155a:    f8d1c004    ....    LDR      r12,[r1,#4]
        0x0800155e:    6807        .h      LDR      r7,[r0,#0]
        0x08001560:    fa92f8a2    ....    RBIT     r8,r2
        0x08001564:    fab8f888    ....    CLZ      r8,r8
        0x08001568:    ea4f0848    O.H.    LSL      r8,r8,#1
        0x0800156c:    fa04f808    ....    LSL      r8,r4,r8
        0x08001570:    fa92f2a2    ....    RBIT     r2,r2
        0x08001574:    fab2f282    ....    CLZ      r2,r2
        0x08001578:    0052        R.      LSLS     r2,r2,#1
        0x0800157a:    ea270708    '...    BIC      r7,r7,r8
        0x0800157e:    fa0cf202    ....    LSL      r2,r12,r2
        0x08001582:    433a        :C      ORRS     r2,r2,r7
        0x08001584:    6002        .`      STR      r2,[r0,#0]
        0x08001586:    1c5b        [.      ADDS     r3,r3,#1
        0x08001588:    680a        .h      LDR      r2,[r1,#0]
        0x0800158a:    40da        .@      LSRS     r2,r2,r3
        0x0800158c:    f47faf54    ..T.    BNE      0x8001438 ; LL_GPIO_Init + 24
        0x08001590:    e8bd03f0    ....    POP      {r4-r9}
        0x08001594:    2000        .       MOVS     r0,#0
        0x08001596:    4770        pG      BX       lr
    i.LL_GPIO_ResetOutputPin
    LL_GPIO_ResetOutputPin
        0x08001598:    6281        .b      STR      r1,[r0,#0x28]
        0x0800159a:    4770        pG      BX       lr
    i.LL_GPIO_ResetOutputPin
    LL_GPIO_ResetOutputPin
        0x0800159c:    6281        .b      STR      r1,[r0,#0x28]
        0x0800159e:    4770        pG      BX       lr
    i.LL_GPIO_SetOutputPin
    LL_GPIO_SetOutputPin
        0x080015a0:    6181        .a      STR      r1,[r0,#0x18]
        0x080015a2:    4770        pG      BX       lr
    i.LL_GPIO_SetOutputPin
    LL_GPIO_SetOutputPin
        0x080015a4:    6181        .a      STR      r1,[r0,#0x18]
        0x080015a6:    4770        pG      BX       lr
    i.LL_GPIO_SetPinMode
    LL_GPIO_SetPinMode
        0x080015a8:    b530        0.      PUSH     {r4,r5,lr}
        0x080015aa:    6803        .h      LDR      r3,[r0,#0]
        0x080015ac:    fa91f4a1    ....    RBIT     r4,r1
        0x080015b0:    fab4f484    ....    CLZ      r4,r4
        0x080015b4:    0065        e.      LSLS     r5,r4,#1
        0x080015b6:    2403        .$      MOVS     r4,#3
        0x080015b8:    40ac        .@      LSLS     r4,r4,r5
        0x080015ba:    43a3        .C      BICS     r3,r3,r4
        0x080015bc:    fa91f4a1    ....    RBIT     r4,r1
        0x080015c0:    fab4f484    ....    CLZ      r4,r4
        0x080015c4:    0064        d.      LSLS     r4,r4,#1
        0x080015c6:    fa02f404    ....    LSL      r4,r2,r4
        0x080015ca:    4323        #C      ORRS     r3,r3,r4
        0x080015cc:    6003        .`      STR      r3,[r0,#0]
        0x080015ce:    bd30        0.      POP      {r4,r5,pc}
    i.LL_GPIO_SetPinMode
    LL_GPIO_SetPinMode
        0x080015d0:    b530        0.      PUSH     {r4,r5,lr}
        0x080015d2:    6803        .h      LDR      r3,[r0,#0]
        0x080015d4:    fa91f4a1    ....    RBIT     r4,r1
        0x080015d8:    fab4f484    ....    CLZ      r4,r4
        0x080015dc:    0065        e.      LSLS     r5,r4,#1
        0x080015de:    2403        .$      MOVS     r4,#3
        0x080015e0:    40ac        .@      LSLS     r4,r4,r5
        0x080015e2:    43a3        .C      BICS     r3,r3,r4
        0x080015e4:    fa91f4a1    ....    RBIT     r4,r1
        0x080015e8:    fab4f484    ....    CLZ      r4,r4
        0x080015ec:    0064        d.      LSLS     r4,r4,#1
        0x080015ee:    fa02f404    ....    LSL      r4,r2,r4
        0x080015f2:    4323        #C      ORRS     r3,r3,r4
        0x080015f4:    6003        .`      STR      r3,[r0,#0]
        0x080015f6:    bd30        0.      POP      {r4,r5,pc}
    i.LL_GPIO_SetPinPull
    LL_GPIO_SetPinPull
        0x080015f8:    b530        0.      PUSH     {r4,r5,lr}
        0x080015fa:    68c3        .h      LDR      r3,[r0,#0xc]
        0x080015fc:    fa91f4a1    ....    RBIT     r4,r1
        0x08001600:    fab4f484    ....    CLZ      r4,r4
        0x08001604:    0065        e.      LSLS     r5,r4,#1
        0x08001606:    2403        .$      MOVS     r4,#3
        0x08001608:    40ac        .@      LSLS     r4,r4,r5
        0x0800160a:    43a3        .C      BICS     r3,r3,r4
        0x0800160c:    fa91f4a1    ....    RBIT     r4,r1
        0x08001610:    fab4f484    ....    CLZ      r4,r4
        0x08001614:    0064        d.      LSLS     r4,r4,#1
        0x08001616:    fa02f404    ....    LSL      r4,r2,r4
        0x0800161a:    4323        #C      ORRS     r3,r3,r4
        0x0800161c:    60c3        .`      STR      r3,[r0,#0xc]
        0x0800161e:    bd30        0.      POP      {r4,r5,pc}
    i.LL_GPIO_TogglePin
    LL_GPIO_TogglePin
        0x08001620:    b510        ..      PUSH     {r4,lr}
        0x08001622:    6942        Bi      LDR      r2,[r0,#0x14]
        0x08001624:    ea210302    !...    BIC      r3,r1,r2
        0x08001628:    ea020401    ....    AND      r4,r2,r1
        0x0800162c:    ea434304    C..C    ORR      r3,r3,r4,LSL #16
        0x08001630:    6183        .a      STR      r3,[r0,#0x18]
        0x08001632:    bd10        ..      POP      {r4,pc}
    i.LL_RCC_SetADCClockSource
    LL_RCC_SetADCClockSource
        0x08001634:    4904        .I      LDR      r1,[pc,#16] ; [0x8001648] = 0x40021000
        0x08001636:    6ac9        .j      LDR      r1,[r1,#0x2c]
        0x08001638:    ea214110    !..A    BIC      r1,r1,r0,LSR #16
        0x0800163c:    b282        ..      UXTH     r2,r0
        0x0800163e:    4311        .C      ORRS     r1,r1,r2
        0x08001640:    4a01        .J      LDR      r2,[pc,#4] ; [0x8001648] = 0x40021000
        0x08001642:    62d1        .b      STR      r1,[r2,#0x2c]
        0x08001644:    4770        pG      BX       lr
    $d
        0x08001646:    0000        ..      DCW    0
        0x08001648:    40021000    ...@    DCD    1073876992
    $t
    i.LL_SYSCFG_SetEXTISource
    LL_SYSCFG_SetEXTISource
        0x0800164c:    b510        ..      PUSH     {r4,lr}
        0x0800164e:    4a09        .J      LDR      r2,[pc,#36] ; [0x8001674] = 0x40010008
        0x08001650:    b2cb        ..      UXTB     r3,r1
        0x08001652:    f8522023    R.#     LDR      r2,[r2,r3,LSL #2]
        0x08001656:    ea224211    "..B    BIC      r2,r2,r1,LSR #16
        0x0800165a:    0c0b        ..      LSRS     r3,r1,#16
        0x0800165c:    fa93f3a3    ....    RBIT     r3,r3
        0x08001660:    fab3f383    ....    CLZ      r3,r3
        0x08001664:    fa00f303    ....    LSL      r3,r0,r3
        0x08001668:    431a        .C      ORRS     r2,r2,r3
        0x0800166a:    4b02        .K      LDR      r3,[pc,#8] ; [0x8001674] = 0x40010008
        0x0800166c:    b2cc        ..      UXTB     r4,r1
        0x0800166e:    f8432024    C.$     STR      r2,[r3,r4,LSL #2]
        0x08001672:    bd10        ..      POP      {r4,pc}
    $d
        0x08001674:    40010008    ...@    DCD    1073807368
    $t
    i.LL_SetSystemCoreClock
    LL_SetSystemCoreClock
        0x08001678:    4901        .I      LDR      r1,[pc,#4] ; [0x8001680] = 0x20000220
        0x0800167a:    6008        .`      STR      r0,[r1,#0]
        0x0800167c:    4770        pG      BX       lr
    $d
        0x0800167e:    0000        ..      DCW    0
        0x08001680:    20000220     ..     DCD    536871456
    $t
    i.LL_TIM_IC_CaptureCallback
    LL_TIM_IC_CaptureCallback
        0x08001684:    f44f7000    O..p    MOV      r0,#0x200
        0x08001688:    4a3a        :J      LDR      r2,[pc,#232] ; [0x8001774] = 0x48000800
        0x0800168a:    6951        Qi      LDR      r1,[r2,#0x14]
        0x0800168c:    ea200201     ...    BIC      r2,r0,r1
        0x08001690:    ea010300    ....    AND      r3,r1,r0
        0x08001694:    ea424203    B..B    ORR      r2,r2,r3,LSL #16
        0x08001698:    4b36        6K      LDR      r3,[pc,#216] ; [0x8001774] = 0x48000800
        0x0800169a:    619a        .a      STR      r2,[r3,#0x18]
        0x0800169c:    bf00        ..      NOP      
        0x0800169e:    4836        6H      LDR      r0,[pc,#216] ; [0x8001778] = 0x40000834
        0x080016a0:    6800        .h      LDR      r0,[r0,#0]
        0x080016a2:    4936        6I      LDR      r1,[pc,#216] ; [0x800177c] = 0x20000230
        0x080016a4:    4a36        6J      LDR      r2,[pc,#216] ; [0x8001780] = 0x20000010
        0x080016a6:    6812        .h      LDR      r2,[r2,#0]
        0x080016a8:    f8410022    A.".    STR      r0,[r1,r2,LSL #2]
        0x080016ac:    4834        4H      LDR      r0,[pc,#208] ; [0x8001780] = 0x20000010
        0x080016ae:    6800        .h      LDR      r0,[r0,#0]
        0x080016b0:    2800        .(      CMP      r0,#0
        0x080016b2:    d059        Y.      BEQ      0x8001768 ; LL_TIM_IC_CaptureCallback + 228
        0x080016b4:    4608        .F      MOV      r0,r1
        0x080016b6:    4932        2I      LDR      r1,[pc,#200] ; [0x8001780] = 0x20000010
        0x080016b8:    6809        .h      LDR      r1,[r1,#0]
        0x080016ba:    f8501021    P.!.    LDR      r1,[r0,r1,LSL #2]
        0x080016be:    4830        0H      LDR      r0,[pc,#192] ; [0x8001780] = 0x20000010
        0x080016c0:    6800        .h      LDR      r0,[r0,#0]
        0x080016c2:    1e40        @.      SUBS     r0,r0,#1
        0x080016c4:    4a2d        -J      LDR      r2,[pc,#180] ; [0x800177c] = 0x20000230
        0x080016c6:    f8520020    R. .    LDR      r0,[r2,r0,LSL #2]
        0x080016ca:    4281        .B      CMP      r1,r0
        0x080016cc:    d215        ..      BCS      0x80016fa ; LL_TIM_IC_CaptureCallback + 118
        0x080016ce:    482c        ,H      LDR      r0,[pc,#176] ; [0x8001780] = 0x20000010
        0x080016d0:    6800        .h      LDR      r0,[r0,#0]
        0x080016d2:    1e40        @.      SUBS     r0,r0,#1
        0x080016d4:    4611        .F      MOV      r1,r2
        0x080016d6:    f8510020    Q. .    LDR      r0,[r1,r0,LSL #2]
        0x080016da:    f64f71ff    O..q    MOV      r1,#0xffff
        0x080016de:    1a08        ..      SUBS     r0,r1,r0
        0x080016e0:    4611        .F      MOV      r1,r2
        0x080016e2:    4a27        'J      LDR      r2,[pc,#156] ; [0x8001780] = 0x20000010
        0x080016e4:    6812        .h      LDR      r2,[r2,#0]
        0x080016e6:    f8511022    Q.".    LDR      r1,[r1,r2,LSL #2]
        0x080016ea:    4401        .D      ADD      r1,r1,r0
        0x080016ec:    4824        $H      LDR      r0,[pc,#144] ; [0x8001780] = 0x20000010
        0x080016ee:    6800        .h      LDR      r0,[r0,#0]
        0x080016f0:    1e40        @.      SUBS     r0,r0,#1
        0x080016f2:    4a22        "J      LDR      r2,[pc,#136] ; [0x800177c] = 0x20000230
        0x080016f4:    f8421020    B. .    STR      r1,[r2,r0,LSL #2]
        0x080016f8:    e010        ..      B        0x800171c ; LL_TIM_IC_CaptureCallback + 152
        0x080016fa:    4820         H      LDR      r0,[pc,#128] ; [0x800177c] = 0x20000230
        0x080016fc:    4920         I      LDR      r1,[pc,#128] ; [0x8001780] = 0x20000010
        0x080016fe:    6809        .h      LDR      r1,[r1,#0]
        0x08001700:    f8501021    P.!.    LDR      r1,[r0,r1,LSL #2]
        0x08001704:    481e        .H      LDR      r0,[pc,#120] ; [0x8001780] = 0x20000010
        0x08001706:    6800        .h      LDR      r0,[r0,#0]
        0x08001708:    1e40        @.      SUBS     r0,r0,#1
        0x0800170a:    4a1c        .J      LDR      r2,[pc,#112] ; [0x800177c] = 0x20000230
        0x0800170c:    f8520020    R. .    LDR      r0,[r2,r0,LSL #2]
        0x08001710:    1a09        ..      SUBS     r1,r1,r0
        0x08001712:    481b        .H      LDR      r0,[pc,#108] ; [0x8001780] = 0x20000010
        0x08001714:    6800        .h      LDR      r0,[r0,#0]
        0x08001716:    1e40        @.      SUBS     r0,r0,#1
        0x08001718:    f8421020    B. .    STR      r1,[r2,r0,LSL #2]
        0x0800171c:    4818        .H      LDR      r0,[pc,#96] ; [0x8001780] = 0x20000010
        0x0800171e:    6800        .h      LDR      r0,[r0,#0]
        0x08001720:    1e40        @.      SUBS     r0,r0,#1
        0x08001722:    4916        .I      LDR      r1,[pc,#88] ; [0x800177c] = 0x20000230
        0x08001724:    f8510020    Q. .    LDR      r0,[r1,r0,LSL #2]
        0x08001728:    f5b07f82    ....    CMP      r0,#0x104
        0x0800172c:    d91c        ..      BLS      0x8001768 ; LL_TIM_IC_CaptureCallback + 228
        0x0800172e:    4815        .H      LDR      r0,[pc,#84] ; [0x8001784] = 0x20000018
        0x08001730:    7800        .x      LDRB     r0,[r0,#0]
        0x08001732:    1c40        @.      ADDS     r0,r0,#1
        0x08001734:    4913        .I      LDR      r1,[pc,#76] ; [0x8001784] = 0x20000018
        0x08001736:    7008        .p      STRB     r0,[r1,#0]
        0x08001738:    4608        .F      MOV      r0,r1
        0x0800173a:    7800        .x      LDRB     r0,[r0,#0]
        0x0800173c:    2801        .(      CMP      r0,#1
        0x0800173e:    dd13        ..      BLE      0x8001768 ; LL_TIM_IC_CaptureCallback + 228
        0x08001740:    480d        .H      LDR      r0,[pc,#52] ; [0x8001778] = 0x40000834
        0x08001742:    3828        (8      SUBS     r0,r0,#0x28
        0x08001744:    6800        .h      LDR      r0,[r0,#0]
        0x08001746:    f0200002     ...    BIC      r0,r0,#2
        0x0800174a:    490b        .I      LDR      r1,[pc,#44] ; [0x8001778] = 0x40000834
        0x0800174c:    3928        (9      SUBS     r1,r1,#0x28
        0x0800174e:    6008        .`      STR      r0,[r1,#0]
        0x08001750:    4608        .F      MOV      r0,r1
        0x08001752:    6800        .h      LDR      r0,[r0,#0]
        0x08001754:    f0200002     ...    BIC      r0,r0,#2
        0x08001758:    6008        .`      STR      r0,[r1,#0]
        0x0800175a:    2001        .       MOVS     r0,#1
        0x0800175c:    490a        .I      LDR      r1,[pc,#40] ; [0x8001788] = 0x200001a4
        0x0800175e:    7008        .p      STRB     r0,[r1,#0]
        0x08001760:    4807        .H      LDR      r0,[pc,#28] ; [0x8001780] = 0x20000010
        0x08001762:    6800        .h      LDR      r0,[r0,#0]
        0x08001764:    4909        .I      LDR      r1,[pc,#36] ; [0x800178c] = 0x20000014
        0x08001766:    6008        .`      STR      r0,[r1,#0]
        0x08001768:    4805        .H      LDR      r0,[pc,#20] ; [0x8001780] = 0x20000010
        0x0800176a:    6800        .h      LDR      r0,[r0,#0]
        0x0800176c:    1c40        @.      ADDS     r0,r0,#1
        0x0800176e:    4904        .I      LDR      r1,[pc,#16] ; [0x8001780] = 0x20000010
        0x08001770:    6008        .`      STR      r0,[r1,#0]
        0x08001772:    4770        pG      BX       lr
    $d
        0x08001774:    48000800    ...H    DCD    1207961600
        0x08001778:    40000834    4..@    DCD    1073743924
        0x0800177c:    20000230    0..     DCD    536871472
        0x08001780:    20000010    ...     DCD    536870928
        0x08001784:    20000018    ...     DCD    536870936
        0x08001788:    200001a4    ...     DCD    536871332
        0x0800178c:    20000014    ...     DCD    536870932
    $t
    i.LL_TIM_IC_SetActiveInput
    LL_TIM_IC_SetActiveInput
        0x08001790:    b5f0        ..      PUSH     {r4-r7,lr}
        0x08001792:    4603        .F      MOV      r3,r0
        0x08001794:    4614        .F      MOV      r4,r2
        0x08001796:    2901        .)      CMP      r1,#1
        0x08001798:    d101        ..      BNE      0x800179e ; LL_TIM_IC_SetActiveInput + 14
        0x0800179a:    2500        .%      MOVS     r5,#0
        0x0800179c:    e020         .      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x0800179e:    2904        .)      CMP      r1,#4
        0x080017a0:    d101        ..      BNE      0x80017a6 ; LL_TIM_IC_SetActiveInput + 22
        0x080017a2:    2501        .%      MOVS     r5,#1
        0x080017a4:    e01c        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017a6:    2910        .)      CMP      r1,#0x10
        0x080017a8:    d101        ..      BNE      0x80017ae ; LL_TIM_IC_SetActiveInput + 30
        0x080017aa:    2502        .%      MOVS     r5,#2
        0x080017ac:    e018        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017ae:    2940        @)      CMP      r1,#0x40
        0x080017b0:    d101        ..      BNE      0x80017b6 ; LL_TIM_IC_SetActiveInput + 38
        0x080017b2:    2503        .%      MOVS     r5,#3
        0x080017b4:    e014        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017b6:    f5b17f80    ....    CMP      r1,#0x100
        0x080017ba:    d101        ..      BNE      0x80017c0 ; LL_TIM_IC_SetActiveInput + 48
        0x080017bc:    2504        .%      MOVS     r5,#4
        0x080017be:    e00f        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017c0:    f5b16f80    ...o    CMP      r1,#0x400
        0x080017c4:    d101        ..      BNE      0x80017ca ; LL_TIM_IC_SetActiveInput + 58
        0x080017c6:    2505        .%      MOVS     r5,#5
        0x080017c8:    e00a        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017ca:    f5b15f80    ..._    CMP      r1,#0x1000
        0x080017ce:    d101        ..      BNE      0x80017d4 ; LL_TIM_IC_SetActiveInput + 68
        0x080017d0:    2506        .%      MOVS     r5,#6
        0x080017d2:    e005        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017d4:    f5b13f80    ...?    CMP      r1,#0x10000
        0x080017d8:    d101        ..      BNE      0x80017de ; LL_TIM_IC_SetActiveInput + 78
        0x080017da:    2507        .%      MOVS     r5,#7
        0x080017dc:    e000        ..      B        0x80017e0 ; LL_TIM_IC_SetActiveInput + 80
        0x080017de:    2508        .%      MOVS     r5,#8
        0x080017e0:    4628        (F      MOV      r0,r5
        0x080017e2:    4d09        .M      LDR      r5,[pc,#36] ; [0x8001808] = 0x8003cb7
        0x080017e4:    5c2e        .\      LDRB     r6,[r5,r0]
        0x080017e6:    f1030518    ....    ADD      r5,r3,#0x18
        0x080017ea:    1972        r.      ADDS     r2,r6,r5
        0x080017ec:    6815        .h      LDR      r5,[r2,#0]
        0x080017ee:    4e07        .N      LDR      r6,[pc,#28] ; [0x800180c] = 0x8003cc9
        0x080017f0:    5c37        7\      LDRB     r7,[r6,r0]
        0x080017f2:    2603        .&      MOVS     r6,#3
        0x080017f4:    40be        .@      LSLS     r6,r6,r7
        0x080017f6:    43b5        .C      BICS     r5,r5,r6
        0x080017f8:    0c26        &.      LSRS     r6,r4,#16
        0x080017fa:    4f04        .O      LDR      r7,[pc,#16] ; [0x800180c] = 0x8003cc9
        0x080017fc:    5c3f        ?\      LDRB     r7,[r7,r0]
        0x080017fe:    40be        .@      LSLS     r6,r6,r7
        0x08001800:    4335        5C      ORRS     r5,r5,r6
        0x08001802:    6015        .`      STR      r5,[r2,#0]
        0x08001804:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x08001806:    0000        ..      DCW    0
        0x08001808:    08003cb7    .<..    DCD    134233271
        0x0800180c:    08003cc9    .<..    DCD    134233289
    $t
    i.LL_TIM_IC_SetFilter
    LL_TIM_IC_SetFilter
        0x08001810:    b5f0        ..      PUSH     {r4-r7,lr}
        0x08001812:    4603        .F      MOV      r3,r0
        0x08001814:    4614        .F      MOV      r4,r2
        0x08001816:    2901        .)      CMP      r1,#1
        0x08001818:    d101        ..      BNE      0x800181e ; LL_TIM_IC_SetFilter + 14
        0x0800181a:    2500        .%      MOVS     r5,#0
        0x0800181c:    e020         .      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x0800181e:    2904        .)      CMP      r1,#4
        0x08001820:    d101        ..      BNE      0x8001826 ; LL_TIM_IC_SetFilter + 22
        0x08001822:    2501        .%      MOVS     r5,#1
        0x08001824:    e01c        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x08001826:    2910        .)      CMP      r1,#0x10
        0x08001828:    d101        ..      BNE      0x800182e ; LL_TIM_IC_SetFilter + 30
        0x0800182a:    2502        .%      MOVS     r5,#2
        0x0800182c:    e018        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x0800182e:    2940        @)      CMP      r1,#0x40
        0x08001830:    d101        ..      BNE      0x8001836 ; LL_TIM_IC_SetFilter + 38
        0x08001832:    2503        .%      MOVS     r5,#3
        0x08001834:    e014        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x08001836:    f5b17f80    ....    CMP      r1,#0x100
        0x0800183a:    d101        ..      BNE      0x8001840 ; LL_TIM_IC_SetFilter + 48
        0x0800183c:    2504        .%      MOVS     r5,#4
        0x0800183e:    e00f        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x08001840:    f5b16f80    ...o    CMP      r1,#0x400
        0x08001844:    d101        ..      BNE      0x800184a ; LL_TIM_IC_SetFilter + 58
        0x08001846:    2505        .%      MOVS     r5,#5
        0x08001848:    e00a        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x0800184a:    f5b15f80    ..._    CMP      r1,#0x1000
        0x0800184e:    d101        ..      BNE      0x8001854 ; LL_TIM_IC_SetFilter + 68
        0x08001850:    2506        .%      MOVS     r5,#6
        0x08001852:    e005        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x08001854:    f5b13f80    ...?    CMP      r1,#0x10000
        0x08001858:    d101        ..      BNE      0x800185e ; LL_TIM_IC_SetFilter + 78
        0x0800185a:    2507        .%      MOVS     r5,#7
        0x0800185c:    e000        ..      B        0x8001860 ; LL_TIM_IC_SetFilter + 80
        0x0800185e:    2508        .%      MOVS     r5,#8
        0x08001860:    4628        (F      MOV      r0,r5
        0x08001862:    4d09        .M      LDR      r5,[pc,#36] ; [0x8001888] = 0x8003cb7
        0x08001864:    5c2e        .\      LDRB     r6,[r5,r0]
        0x08001866:    f1030518    ....    ADD      r5,r3,#0x18
        0x0800186a:    1972        r.      ADDS     r2,r6,r5
        0x0800186c:    6815        .h      LDR      r5,[r2,#0]
        0x0800186e:    4e07        .N      LDR      r6,[pc,#28] ; [0x800188c] = 0x8003cc9
        0x08001870:    5c37        7\      LDRB     r7,[r6,r0]
        0x08001872:    26f0        .&      MOVS     r6,#0xf0
        0x08001874:    40be        .@      LSLS     r6,r6,r7
        0x08001876:    43b5        .C      BICS     r5,r5,r6
        0x08001878:    0c26        &.      LSRS     r6,r4,#16
        0x0800187a:    4f04        .O      LDR      r7,[pc,#16] ; [0x800188c] = 0x8003cc9
        0x0800187c:    5c3f        ?\      LDRB     r7,[r7,r0]
        0x0800187e:    40be        .@      LSLS     r6,r6,r7
        0x08001880:    4335        5C      ORRS     r5,r5,r6
        0x08001882:    6015        .`      STR      r5,[r2,#0]
        0x08001884:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x08001886:    0000        ..      DCW    0
        0x08001888:    08003cb7    .<..    DCD    134233271
        0x0800188c:    08003cc9    .<..    DCD    134233289
    $t
    i.LL_TIM_IC_SetPolarity
    LL_TIM_IC_SetPolarity
        0x08001890:    b570        p.      PUSH     {r4-r6,lr}
        0x08001892:    2901        .)      CMP      r1,#1
        0x08001894:    d101        ..      BNE      0x800189a ; LL_TIM_IC_SetPolarity + 10
        0x08001896:    2400        .$      MOVS     r4,#0
        0x08001898:    e020         .      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x0800189a:    2904        .)      CMP      r1,#4
        0x0800189c:    d101        ..      BNE      0x80018a2 ; LL_TIM_IC_SetPolarity + 18
        0x0800189e:    2401        .$      MOVS     r4,#1
        0x080018a0:    e01c        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018a2:    2910        .)      CMP      r1,#0x10
        0x080018a4:    d101        ..      BNE      0x80018aa ; LL_TIM_IC_SetPolarity + 26
        0x080018a6:    2402        .$      MOVS     r4,#2
        0x080018a8:    e018        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018aa:    2940        @)      CMP      r1,#0x40
        0x080018ac:    d101        ..      BNE      0x80018b2 ; LL_TIM_IC_SetPolarity + 34
        0x080018ae:    2403        .$      MOVS     r4,#3
        0x080018b0:    e014        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018b2:    f5b17f80    ....    CMP      r1,#0x100
        0x080018b6:    d101        ..      BNE      0x80018bc ; LL_TIM_IC_SetPolarity + 44
        0x080018b8:    2404        .$      MOVS     r4,#4
        0x080018ba:    e00f        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018bc:    f5b16f80    ...o    CMP      r1,#0x400
        0x080018c0:    d101        ..      BNE      0x80018c6 ; LL_TIM_IC_SetPolarity + 54
        0x080018c2:    2405        .$      MOVS     r4,#5
        0x080018c4:    e00a        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018c6:    f5b15f80    ..._    CMP      r1,#0x1000
        0x080018ca:    d101        ..      BNE      0x80018d0 ; LL_TIM_IC_SetPolarity + 64
        0x080018cc:    2406        .$      MOVS     r4,#6
        0x080018ce:    e005        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018d0:    f5b13f80    ...?    CMP      r1,#0x10000
        0x080018d4:    d101        ..      BNE      0x80018da ; LL_TIM_IC_SetPolarity + 74
        0x080018d6:    2407        .$      MOVS     r4,#7
        0x080018d8:    e000        ..      B        0x80018dc ; LL_TIM_IC_SetPolarity + 76
        0x080018da:    2408        .$      MOVS     r4,#8
        0x080018dc:    4623        #F      MOV      r3,r4
        0x080018de:    6a04        .j      LDR      r4,[r0,#0x20]
        0x080018e0:    4d05        .M      LDR      r5,[pc,#20] ; [0x80018f8] = 0x8003cd2
        0x080018e2:    5cee        .\      LDRB     r6,[r5,r3]
        0x080018e4:    250a        .%      MOVS     r5,#0xa
        0x080018e6:    40b5        .@      LSLS     r5,r5,r6
        0x080018e8:    43ac        .C      BICS     r4,r4,r5
        0x080018ea:    4d03        .M      LDR      r5,[pc,#12] ; [0x80018f8] = 0x8003cd2
        0x080018ec:    5ced        .\      LDRB     r5,[r5,r3]
        0x080018ee:    fa02f505    ....    LSL      r5,r2,r5
        0x080018f2:    432c        ,C      ORRS     r4,r4,r5
        0x080018f4:    6204        .b      STR      r4,[r0,#0x20]
        0x080018f6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080018f8:    08003cd2    .<..    DCD    134233298
    $t
    i.LL_TIM_IC_SetPrescaler
    LL_TIM_IC_SetPrescaler
        0x080018fc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x080018fe:    4603        .F      MOV      r3,r0
        0x08001900:    4614        .F      MOV      r4,r2
        0x08001902:    2901        .)      CMP      r1,#1
        0x08001904:    d101        ..      BNE      0x800190a ; LL_TIM_IC_SetPrescaler + 14
        0x08001906:    2500        .%      MOVS     r5,#0
        0x08001908:    e020         .      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x0800190a:    2904        .)      CMP      r1,#4
        0x0800190c:    d101        ..      BNE      0x8001912 ; LL_TIM_IC_SetPrescaler + 22
        0x0800190e:    2501        .%      MOVS     r5,#1
        0x08001910:    e01c        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x08001912:    2910        .)      CMP      r1,#0x10
        0x08001914:    d101        ..      BNE      0x800191a ; LL_TIM_IC_SetPrescaler + 30
        0x08001916:    2502        .%      MOVS     r5,#2
        0x08001918:    e018        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x0800191a:    2940        @)      CMP      r1,#0x40
        0x0800191c:    d101        ..      BNE      0x8001922 ; LL_TIM_IC_SetPrescaler + 38
        0x0800191e:    2503        .%      MOVS     r5,#3
        0x08001920:    e014        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x08001922:    f5b17f80    ....    CMP      r1,#0x100
        0x08001926:    d101        ..      BNE      0x800192c ; LL_TIM_IC_SetPrescaler + 48
        0x08001928:    2504        .%      MOVS     r5,#4
        0x0800192a:    e00f        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x0800192c:    f5b16f80    ...o    CMP      r1,#0x400
        0x08001930:    d101        ..      BNE      0x8001936 ; LL_TIM_IC_SetPrescaler + 58
        0x08001932:    2505        .%      MOVS     r5,#5
        0x08001934:    e00a        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x08001936:    f5b15f80    ..._    CMP      r1,#0x1000
        0x0800193a:    d101        ..      BNE      0x8001940 ; LL_TIM_IC_SetPrescaler + 68
        0x0800193c:    2506        .%      MOVS     r5,#6
        0x0800193e:    e005        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x08001940:    f5b13f80    ...?    CMP      r1,#0x10000
        0x08001944:    d101        ..      BNE      0x800194a ; LL_TIM_IC_SetPrescaler + 78
        0x08001946:    2507        .%      MOVS     r5,#7
        0x08001948:    e000        ..      B        0x800194c ; LL_TIM_IC_SetPrescaler + 80
        0x0800194a:    2508        .%      MOVS     r5,#8
        0x0800194c:    4628        (F      MOV      r0,r5
        0x0800194e:    4d09        .M      LDR      r5,[pc,#36] ; [0x8001974] = 0x8003cb7
        0x08001950:    5c2e        .\      LDRB     r6,[r5,r0]
        0x08001952:    f1030518    ....    ADD      r5,r3,#0x18
        0x08001956:    1972        r.      ADDS     r2,r6,r5
        0x08001958:    6815        .h      LDR      r5,[r2,#0]
        0x0800195a:    4e07        .N      LDR      r6,[pc,#28] ; [0x8001978] = 0x8003cc9
        0x0800195c:    5c37        7\      LDRB     r7,[r6,r0]
        0x0800195e:    260c        .&      MOVS     r6,#0xc
        0x08001960:    40be        .@      LSLS     r6,r6,r7
        0x08001962:    43b5        .C      BICS     r5,r5,r6
        0x08001964:    0c26        &.      LSRS     r6,r4,#16
        0x08001966:    4f04        .O      LDR      r7,[pc,#16] ; [0x8001978] = 0x8003cc9
        0x08001968:    5c3f        ?\      LDRB     r7,[r7,r0]
        0x0800196a:    40be        .@      LSLS     r6,r6,r7
        0x0800196c:    4335        5C      ORRS     r5,r5,r6
        0x0800196e:    6015        .`      STR      r5,[r2,#0]
        0x08001970:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x08001972:    0000        ..      DCW    0
        0x08001974:    08003cb7    .<..    DCD    134233271
        0x08001978:    08003cc9    .<..    DCD    134233289
    $t
    i.LL_TIM_Init
    LL_TIM_Init
        0x0800197c:    e92d01f0    -...    PUSH     {r4-r8}
        0x08001980:    6802        .h      LDR      r2,[r0,#0]
        0x08001982:    4b24        $K      LDR      r3,[pc,#144] ; [0x8001a14] = 0x40012c00
        0x08001984:    f8dfc090    ....    LDR      r12,[pc,#144] ; [0x8001a18] = 0x40000400
        0x08001988:    f8df8090    ....    LDR      r8,[pc,#144] ; [0x8001a1c] = 0x40000800
        0x0800198c:    4c24        $L      LDR      r4,[pc,#144] ; [0x8001a20] = 0x40013400
        0x0800198e:    4298        .B      CMP      r0,r3
        0x08001990:    d008        ..      BEQ      0x80019a4 ; LL_TIM_Init + 40
        0x08001992:    f1b04f80    ...O    CMP      r0,#0x40000000
        0x08001996:    d005        ..      BEQ      0x80019a4 ; LL_TIM_Init + 40
        0x08001998:    4560        `E      CMP      r0,r12
        0x0800199a:    d003        ..      BEQ      0x80019a4 ; LL_TIM_Init + 40
        0x0800199c:    4540        @E      CMP      r0,r8
        0x0800199e:    d001        ..      BEQ      0x80019a4 ; LL_TIM_Init + 40
        0x080019a0:    42a0        .B      CMP      r0,r4
        0x080019a2:    d103        ..      BNE      0x80019ac ; LL_TIM_Init + 48
        0x080019a4:    684d        Mh      LDR      r5,[r1,#4]
        0x080019a6:    f0220270    ".p.    BIC      r2,r2,#0x70
        0x080019aa:    432a        *C      ORRS     r2,r2,r5
        0x080019ac:    4d1d        .M      LDR      r5,[pc,#116] ; [0x8001a24] = 0x40014000
        0x080019ae:    4e1e        .N      LDR      r6,[pc,#120] ; [0x8001a28] = 0x40014400
        0x080019b0:    4f1e        .O      LDR      r7,[pc,#120] ; [0x8001a2c] = 0x40014800
        0x080019b2:    4298        .B      CMP      r0,r3
        0x080019b4:    d00e        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019b6:    f1b04f80    ...O    CMP      r0,#0x40000000
        0x080019ba:    d00b        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019bc:    4560        `E      CMP      r0,r12
        0x080019be:    d009        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019c0:    4540        @E      CMP      r0,r8
        0x080019c2:    d007        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019c4:    42a0        .B      CMP      r0,r4
        0x080019c6:    d005        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019c8:    42a8        .B      CMP      r0,r5
        0x080019ca:    d003        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019cc:    42b0        .B      CMP      r0,r6
        0x080019ce:    d001        ..      BEQ      0x80019d4 ; LL_TIM_Init + 88
        0x080019d0:    42b8        .B      CMP      r0,r7
        0x080019d2:    d105        ..      BNE      0x80019e0 ; LL_TIM_Init + 100
        0x080019d4:    f8d1c00c    ....    LDR      r12,[r1,#0xc]
        0x080019d8:    f4227240    ".@r    BIC      r2,r2,#0x300
        0x080019dc:    ea42020c    B...    ORR      r2,r2,r12
        0x080019e0:    6002        .`      STR      r2,[r0,#0]
        0x080019e2:    688a        .h      LDR      r2,[r1,#8]
        0x080019e4:    62c2        .b      STR      r2,[r0,#0x2c]
        0x080019e6:    880a        ..      LDRH     r2,[r1,#0]
        0x080019e8:    6282        .b      STR      r2,[r0,#0x28]
        0x080019ea:    4298        .B      CMP      r0,r3
        0x080019ec:    d007        ..      BEQ      0x80019fe ; LL_TIM_Init + 130
        0x080019ee:    42a0        .B      CMP      r0,r4
        0x080019f0:    d005        ..      BEQ      0x80019fe ; LL_TIM_Init + 130
        0x080019f2:    42a8        .B      CMP      r0,r5
        0x080019f4:    d003        ..      BEQ      0x80019fe ; LL_TIM_Init + 130
        0x080019f6:    42b0        .B      CMP      r0,r6
        0x080019f8:    d001        ..      BEQ      0x80019fe ; LL_TIM_Init + 130
        0x080019fa:    42b8        .B      CMP      r0,r7
        0x080019fc:    d101        ..      BNE      0x8001a02 ; LL_TIM_Init + 134
        0x080019fe:    6909        .i      LDR      r1,[r1,#0x10]
        0x08001a00:    6301        .c      STR      r1,[r0,#0x30]
        0x08001a02:    6941        Ai      LDR      r1,[r0,#0x14]
        0x08001a04:    f0410101    A...    ORR      r1,r1,#1
        0x08001a08:    6141        Aa      STR      r1,[r0,#0x14]
        0x08001a0a:    e8bd01f0    ....    POP      {r4-r8}
        0x08001a0e:    2000        .       MOVS     r0,#0
        0x08001a10:    4770        pG      BX       lr
    $d
        0x08001a12:    0000        ..      DCW    0
        0x08001a14:    40012c00    .,.@    DCD    1073818624
        0x08001a18:    40000400    ...@    DCD    1073742848
        0x08001a1c:    40000800    ...@    DCD    1073743872
        0x08001a20:    40013400    .4.@    DCD    1073820672
        0x08001a24:    40014000    .@.@    DCD    1073823744
        0x08001a28:    40014400    .D.@    DCD    1073824768
        0x08001a2c:    40014800    .H.@    DCD    1073825792
    $t
    i.MX_ADC2_Init
    MX_ADC2_Init
        0x08001a30:    b510        ..      PUSH     {r4,lr}
        0x08001a32:    b090        ..      SUB      sp,sp,#0x40
        0x08001a34:    2000        .       MOVS     r0,#0
        0x08001a36:    900d        ..      STR      r0,[sp,#0x34]
        0x08001a38:    900e        ..      STR      r0,[sp,#0x38]
        0x08001a3a:    900f        ..      STR      r0,[sp,#0x3c]
        0x08001a3c:    2118        .!      MOVS     r1,#0x18
        0x08001a3e:    a807        ..      ADD      r0,sp,#0x1c
        0x08001a40:    f7fefbd9    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001a44:    2118        .!      MOVS     r1,#0x18
        0x08001a46:    a801        ..      ADD      r0,sp,#4
        0x08001a48:    f7fefbd5    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001a4c:    f04f5080    O..P    MOV      r0,#0x10000000
        0x08001a50:    f7fffb84    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001a54:    f44f3000    O..0    MOV      r0,#0x20000
        0x08001a58:    f7fffb80    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001a5c:    f44f2000    O..     MOV      r0,#0x80000
        0x08001a60:    f7fffb7c    ..|.    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001a64:    20c0        .       MOVS     r0,#0xc0
        0x08001a66:    9001        ..      STR      r0,[sp,#4]
        0x08001a68:    2003        .       MOVS     r0,#3
        0x08001a6a:    9002        ..      STR      r0,[sp,#8]
        0x08001a6c:    2000        .       MOVS     r0,#0
        0x08001a6e:    9005        ..      STR      r0,[sp,#0x14]
        0x08001a70:    a901        ..      ADD      r1,sp,#4
        0x08001a72:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001a76:    f7fffcd3    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001a7a:    2030        0       MOVS     r0,#0x30
        0x08001a7c:    9001        ..      STR      r0,[sp,#4]
        0x08001a7e:    2003        .       MOVS     r0,#3
        0x08001a80:    9002        ..      STR      r0,[sp,#8]
        0x08001a82:    2000        .       MOVS     r0,#0
        0x08001a84:    9005        ..      STR      r0,[sp,#0x14]
        0x08001a86:    a901        ..      ADD      r1,sp,#4
        0x08001a88:    4822        "H      LDR      r0,[pc,#136] ; [0x8001b14] = 0x48000800
        0x08001a8a:    f7fffcc9    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001a8e:    2000        .       MOVS     r0,#0
        0x08001a90:    900d        ..      STR      r0,[sp,#0x34]
        0x08001a92:    900e        ..      STR      r0,[sp,#0x38]
        0x08001a94:    900f        ..      STR      r0,[sp,#0x3c]
        0x08001a96:    a90d        ..      ADD      r1,sp,#0x34
        0x08001a98:    481f        .H      LDR      r0,[pc,#124] ; [0x8001b18] = 0x50000100
        0x08001a9a:    f7fffa75    ..u.    BL       LL_ADC_Init ; 0x8000f88
        0x08001a9e:    2000        .       MOVS     r0,#0
        0x08001aa0:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001aa2:    9008        ..      STR      r0,[sp,#0x20]
        0x08001aa4:    9009        ..      STR      r0,[sp,#0x24]
        0x08001aa6:    f44f5000    O..P    MOV      r0,#0x2000
        0x08001aaa:    900a        ..      STR      r0,[sp,#0x28]
        0x08001aac:    2001        .       MOVS     r0,#1
        0x08001aae:    900b        ..      STR      r0,[sp,#0x2c]
        0x08001ab0:    0300        ..      LSLS     r0,r0,#12
        0x08001ab2:    900c        ..      STR      r0,[sp,#0x30]
        0x08001ab4:    a907        ..      ADD      r1,sp,#0x1c
        0x08001ab6:    4818        .H      LDR      r0,[pc,#96] ; [0x8001b18] = 0x50000100
        0x08001ab8:    f7fffa8a    ....    BL       LL_ADC_REG_Init ; 0x8000fd0
        0x08001abc:    2000        .       MOVS     r0,#0
        0x08001abe:    4917        .I      LDR      r1,[pc,#92] ; [0x8001b1c] = 0x50000300
        0x08001ac0:    6889        .h      LDR      r1,[r1,#8]
        0x08001ac2:    f4213140    !.@1    BIC      r1,r1,#0x30000
        0x08001ac6:    4301        .C      ORRS     r1,r1,r0
        0x08001ac8:    4a14        .J      LDR      r2,[pc,#80] ; [0x8001b1c] = 0x50000300
        0x08001aca:    6091        .`      STR      r1,[r2,#8]
        0x08001acc:    bf00        ..      NOP      
        0x08001ace:    4812        .H      LDR      r0,[pc,#72] ; [0x8001b18] = 0x50000100
        0x08001ad0:    f7fffa4c    ..L.    BL       LL_ADC_EnableInternalRegulator ; 0x8000f6c
        0x08001ad4:    4812        .H      LDR      r0,[pc,#72] ; [0x8001b20] = 0x20000220
        0x08001ad6:    6800        .h      LDR      r0,[r0,#0]
        0x08001ad8:    4912        .I      LDR      r1,[pc,#72] ; [0x8001b24] = 0x30d40
        0x08001ada:    fbb0f0f1    ....    UDIV     r0,r0,r1
        0x08001ade:    eb000080    ....    ADD      r0,r0,r0,LSL #2
        0x08001ae2:    0040        @.      LSLS     r0,r0,#1
        0x08001ae4:    210a        .!      MOVS     r1,#0xa
        0x08001ae6:    fbb0f4f1    ....    UDIV     r4,r0,r1
        0x08001aea:    e000        ..      B        0x8001aee ; MX_ADC2_Init + 190
        0x08001aec:    1e64        d.      SUBS     r4,r4,#1
        0x08001aee:    2c00        .,      CMP      r4,#0
        0x08001af0:    d1fc        ..      BNE      0x8001aec ; MX_ADC2_Init + 188
        0x08001af2:    4a0d        .J      LDR      r2,[pc,#52] ; [0x8001b28] = 0xc900008
        0x08001af4:    2106        .!      MOVS     r1,#6
        0x08001af6:    4808        .H      LDR      r0,[pc,#32] ; [0x8001b18] = 0x50000100
        0x08001af8:    f7fffac3    ....    BL       LL_ADC_REG_SetSequencerRanks ; 0x8001082
        0x08001afc:    2200        ."      MOVS     r2,#0
        0x08001afe:    490a        .I      LDR      r1,[pc,#40] ; [0x8001b28] = 0xc900008
        0x08001b00:    4805        .H      LDR      r0,[pc,#20] ; [0x8001b18] = 0x50000100
        0x08001b02:    f7fffaed    ....    BL       LL_ADC_SetChannelSamplingTime ; 0x80010e0
        0x08001b06:    227f        ."      MOVS     r2,#0x7f
        0x08001b08:    4907        .I      LDR      r1,[pc,#28] ; [0x8001b28] = 0xc900008
        0x08001b0a:    4803        .H      LDR      r0,[pc,#12] ; [0x8001b18] = 0x50000100
        0x08001b0c:    f7fffb12    ....    BL       LL_ADC_SetChannelSingleDiff ; 0x8001134
        0x08001b10:    b010        ..      ADD      sp,sp,#0x40
        0x08001b12:    bd10        ..      POP      {r4,pc}
    $d
        0x08001b14:    48000800    ...H    DCD    1207961600
        0x08001b18:    50000100    ...P    DCD    1342177536
        0x08001b1c:    50000300    ...P    DCD    1342178048
        0x08001b20:    20000220     ..     DCD    536871456
        0x08001b24:    00030d40    @...    DCD    200000
        0x08001b28:    0c900008    ....    DCD    210763784
    $t
    i.MX_ADC3_Init
    MX_ADC3_Init
        0x08001b2c:    b510        ..      PUSH     {r4,lr}
        0x08001b2e:    b094        ..      SUB      sp,sp,#0x50
        0x08001b30:    2000        .       MOVS     r0,#0
        0x08001b32:    9011        ..      STR      r0,[sp,#0x44]
        0x08001b34:    9012        ..      STR      r0,[sp,#0x48]
        0x08001b36:    9013        ..      STR      r0,[sp,#0x4c]
        0x08001b38:    2118        .!      MOVS     r1,#0x18
        0x08001b3a:    a80b        ..      ADD      r0,sp,#0x2c
        0x08001b3c:    f7fefb5b    ..[.    BL       __aeabi_memclr ; 0x80001f6
        0x08001b40:    2000        .       MOVS     r0,#0
        0x08001b42:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001b44:    9008        ..      STR      r0,[sp,#0x20]
        0x08001b46:    9009        ..      STR      r0,[sp,#0x24]
        0x08001b48:    900a        ..      STR      r0,[sp,#0x28]
        0x08001b4a:    2118        .!      MOVS     r1,#0x18
        0x08001b4c:    a801        ..      ADD      r0,sp,#4
        0x08001b4e:    f7fefb52    ..R.    BL       __aeabi_memclr ; 0x80001f6
        0x08001b52:    f04f5000    O..P    MOV      r0,#0x20000000
        0x08001b56:    f7fffb01    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001b5a:    f44f2080    O..     MOV      r0,#0x40000
        0x08001b5e:    f7fffafd    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001b62:    f44f1000    O...    MOV      r0,#0x200000
        0x08001b66:    f7fffaf9    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001b6a:    2001        .       MOVS     r0,#1
        0x08001b6c:    9001        ..      STR      r0,[sp,#4]
        0x08001b6e:    2003        .       MOVS     r0,#3
        0x08001b70:    9002        ..      STR      r0,[sp,#8]
        0x08001b72:    2000        .       MOVS     r0,#0
        0x08001b74:    9005        ..      STR      r0,[sp,#0x14]
        0x08001b76:    a901        ..      ADD      r1,sp,#4
        0x08001b78:    4827        'H      LDR      r0,[pc,#156] ; [0x8001c18] = 0x48000400
        0x08001b7a:    f7fffc51    ..Q.    BL       LL_GPIO_Init ; 0x8001420
        0x08001b7e:    f44f7000    O..p    MOV      r0,#0x200
        0x08001b82:    9001        ..      STR      r0,[sp,#4]
        0x08001b84:    2003        .       MOVS     r0,#3
        0x08001b86:    9002        ..      STR      r0,[sp,#8]
        0x08001b88:    2000        .       MOVS     r0,#0
        0x08001b8a:    9005        ..      STR      r0,[sp,#0x14]
        0x08001b8c:    a901        ..      ADD      r1,sp,#4
        0x08001b8e:    4823        #H      LDR      r0,[pc,#140] ; [0x8001c1c] = 0x48001000
        0x08001b90:    f7fffc46    ..F.    BL       LL_GPIO_Init ; 0x8001420
        0x08001b94:    2000        .       MOVS     r0,#0
        0x08001b96:    9011        ..      STR      r0,[sp,#0x44]
        0x08001b98:    9012        ..      STR      r0,[sp,#0x48]
        0x08001b9a:    9013        ..      STR      r0,[sp,#0x4c]
        0x08001b9c:    a911        ..      ADD      r1,sp,#0x44
        0x08001b9e:    4820         H      LDR      r0,[pc,#128] ; [0x8001c20] = 0x50000400
        0x08001ba0:    f7fff9f2    ....    BL       LL_ADC_Init ; 0x8000f88
        0x08001ba4:    2000        .       MOVS     r0,#0
        0x08001ba6:    900b        ..      STR      r0,[sp,#0x2c]
        0x08001ba8:    900c        ..      STR      r0,[sp,#0x30]
        0x08001baa:    900d        ..      STR      r0,[sp,#0x34]
        0x08001bac:    f44f5000    O..P    MOV      r0,#0x2000
        0x08001bb0:    900e        ..      STR      r0,[sp,#0x38]
        0x08001bb2:    2001        .       MOVS     r0,#1
        0x08001bb4:    900f        ..      STR      r0,[sp,#0x3c]
        0x08001bb6:    0300        ..      LSLS     r0,r0,#12
        0x08001bb8:    9010        ..      STR      r0,[sp,#0x40]
        0x08001bba:    a90b        ..      ADD      r1,sp,#0x2c
        0x08001bbc:    4818        .H      LDR      r0,[pc,#96] ; [0x8001c20] = 0x50000400
        0x08001bbe:    f7fffa07    ....    BL       LL_ADC_REG_Init ; 0x8000fd0
        0x08001bc2:    2000        .       MOVS     r0,#0
        0x08001bc4:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001bc6:    9008        ..      STR      r0,[sp,#0x20]
        0x08001bc8:    a907        ..      ADD      r1,sp,#0x1c
        0x08001bca:    4816        .H      LDR      r0,[pc,#88] ; [0x8001c24] = 0x50000700
        0x08001bcc:    f7fff980    ....    BL       LL_ADC_CommonInit ; 0x8000ed0
        0x08001bd0:    4813        .H      LDR      r0,[pc,#76] ; [0x8001c20] = 0x50000400
        0x08001bd2:    f7fff9cb    ....    BL       LL_ADC_EnableInternalRegulator ; 0x8000f6c
        0x08001bd6:    4814        .H      LDR      r0,[pc,#80] ; [0x8001c28] = 0x20000220
        0x08001bd8:    6800        .h      LDR      r0,[r0,#0]
        0x08001bda:    4914        .I      LDR      r1,[pc,#80] ; [0x8001c2c] = 0x30d40
        0x08001bdc:    fbb0f0f1    ....    UDIV     r0,r0,r1
        0x08001be0:    eb000080    ....    ADD      r0,r0,r0,LSL #2
        0x08001be4:    0040        @.      LSLS     r0,r0,#1
        0x08001be6:    210a        .!      MOVS     r1,#0xa
        0x08001be8:    fbb0f4f1    ....    UDIV     r4,r0,r1
        0x08001bec:    e000        ..      B        0x8001bf0 ; MX_ADC3_Init + 196
        0x08001bee:    1e64        d.      SUBS     r4,r4,#1
        0x08001bf0:    2c00        .,      CMP      r4,#0
        0x08001bf2:    d1fc        ..      BNE      0x8001bee ; MX_ADC3_Init + 194
        0x08001bf4:    4a0e        .J      LDR      r2,[pc,#56] ; [0x8001c30] = 0x8600004
        0x08001bf6:    2106        .!      MOVS     r1,#6
        0x08001bf8:    4809        .H      LDR      r0,[pc,#36] ; [0x8001c20] = 0x50000400
        0x08001bfa:    f7fffa42    ..B.    BL       LL_ADC_REG_SetSequencerRanks ; 0x8001082
        0x08001bfe:    2200        ."      MOVS     r2,#0
        0x08001c00:    490b        .I      LDR      r1,[pc,#44] ; [0x8001c30] = 0x8600004
        0x08001c02:    4807        .H      LDR      r0,[pc,#28] ; [0x8001c20] = 0x50000400
        0x08001c04:    f7fffa6c    ..l.    BL       LL_ADC_SetChannelSamplingTime ; 0x80010e0
        0x08001c08:    227f        ."      MOVS     r2,#0x7f
        0x08001c0a:    4909        .I      LDR      r1,[pc,#36] ; [0x8001c30] = 0x8600004
        0x08001c0c:    4804        .H      LDR      r0,[pc,#16] ; [0x8001c20] = 0x50000400
        0x08001c0e:    f7fffa91    ....    BL       LL_ADC_SetChannelSingleDiff ; 0x8001134
        0x08001c12:    b014        ..      ADD      sp,sp,#0x50
        0x08001c14:    bd10        ..      POP      {r4,pc}
    $d
        0x08001c16:    0000        ..      DCW    0
        0x08001c18:    48000400    ...H    DCD    1207960576
        0x08001c1c:    48001000    ...H    DCD    1207963648
        0x08001c20:    50000400    ...P    DCD    1342178304
        0x08001c24:    50000700    ...P    DCD    1342179072
        0x08001c28:    20000220     ..     DCD    536871456
        0x08001c2c:    00030d40    @...    DCD    200000
        0x08001c30:    08600004    ..`.    DCD    140509188
    $t
    i.MX_COMP1_Init
    MX_COMP1_Init
        0x08001c34:    b500        ..      PUSH     {lr}
        0x08001c36:    b08d        ..      SUB      sp,sp,#0x34
        0x08001c38:    211c        .!      MOVS     r1,#0x1c
        0x08001c3a:    a806        ..      ADD      r0,sp,#0x18
        0x08001c3c:    f7fefadb    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001c40:    2118        .!      MOVS     r1,#0x18
        0x08001c42:    4668        hF      MOV      r0,sp
        0x08001c44:    f7fefad7    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001c48:    f44f3000    O..0    MOV      r0,#0x20000
        0x08001c4c:    f7fffa86    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001c50:    2002        .       MOVS     r0,#2
        0x08001c52:    9000        ..      STR      r0,[sp,#0]
        0x08001c54:    2003        .       MOVS     r0,#3
        0x08001c56:    9001        ..      STR      r0,[sp,#4]
        0x08001c58:    2000        .       MOVS     r0,#0
        0x08001c5a:    9004        ..      STR      r0,[sp,#0x10]
        0x08001c5c:    4669        iF      MOV      r1,sp
        0x08001c5e:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001c62:    f7fffbdd    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001c66:    f44f6000    O..`    MOV      r0,#0x800
        0x08001c6a:    9000        ..      STR      r0,[sp,#0]
        0x08001c6c:    2002        .       MOVS     r0,#2
        0x08001c6e:    9001        ..      STR      r0,[sp,#4]
        0x08001c70:    2000        .       MOVS     r0,#0
        0x08001c72:    9002        ..      STR      r0,[sp,#8]
        0x08001c74:    9003        ..      STR      r0,[sp,#0xc]
        0x08001c76:    9004        ..      STR      r0,[sp,#0x10]
        0x08001c78:    2008        .       MOVS     r0,#8
        0x08001c7a:    9005        ..      STR      r0,[sp,#0x14]
        0x08001c7c:    4669        iF      MOV      r1,sp
        0x08001c7e:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001c82:    f7fffbcd    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001c86:    2000        .       MOVS     r0,#0
        0x08001c88:    9006        ..      STR      r0,[sp,#0x18]
        0x08001c8a:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001c8c:    2040        @       MOVS     r0,#0x40
        0x08001c8e:    9008        ..      STR      r0,[sp,#0x20]
        0x08001c90:    2000        .       MOVS     r0,#0
        0x08001c92:    9009        ..      STR      r0,[sp,#0x24]
        0x08001c94:    f44f5020    O. P    MOV      r0,#0x2800
        0x08001c98:    900a        ..      STR      r0,[sp,#0x28]
        0x08001c9a:    2000        .       MOVS     r0,#0
        0x08001c9c:    900b        ..      STR      r0,[sp,#0x2c]
        0x08001c9e:    900c        ..      STR      r0,[sp,#0x30]
        0x08001ca0:    a906        ..      ADD      r1,sp,#0x18
        0x08001ca2:    4802        .H      LDR      r0,[pc,#8] ; [0x8001cac] = 0x4001001c
        0x08001ca4:    f7fffa76    ..v.    BL       LL_COMP_Init ; 0x8001194
        0x08001ca8:    b00d        ..      ADD      sp,sp,#0x34
        0x08001caa:    bd00        ..      POP      {pc}
    $d
        0x08001cac:    4001001c    ...@    DCD    1073807388
    $t
    i.MX_COMP2_Init
    MX_COMP2_Init
        0x08001cb0:    b500        ..      PUSH     {lr}
        0x08001cb2:    b08d        ..      SUB      sp,sp,#0x34
        0x08001cb4:    211c        .!      MOVS     r1,#0x1c
        0x08001cb6:    a806        ..      ADD      r0,sp,#0x18
        0x08001cb8:    f7fefa9d    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001cbc:    2118        .!      MOVS     r1,#0x18
        0x08001cbe:    4668        hF      MOV      r0,sp
        0x08001cc0:    f7fefa99    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001cc4:    f44f3000    O..0    MOV      r0,#0x20000
        0x08001cc8:    f7fffa48    ..H.    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001ccc:    2008        .       MOVS     r0,#8
        0x08001cce:    9000        ..      STR      r0,[sp,#0]
        0x08001cd0:    2003        .       MOVS     r0,#3
        0x08001cd2:    9001        ..      STR      r0,[sp,#4]
        0x08001cd4:    2000        .       MOVS     r0,#0
        0x08001cd6:    9004        ..      STR      r0,[sp,#0x10]
        0x08001cd8:    4669        iF      MOV      r1,sp
        0x08001cda:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001cde:    f7fffb9f    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001ce2:    f44f5080    O..P    MOV      r0,#0x1000
        0x08001ce6:    9000        ..      STR      r0,[sp,#0]
        0x08001ce8:    2002        .       MOVS     r0,#2
        0x08001cea:    9001        ..      STR      r0,[sp,#4]
        0x08001cec:    2000        .       MOVS     r0,#0
        0x08001cee:    9002        ..      STR      r0,[sp,#8]
        0x08001cf0:    9003        ..      STR      r0,[sp,#0xc]
        0x08001cf2:    9004        ..      STR      r0,[sp,#0x10]
        0x08001cf4:    2008        .       MOVS     r0,#8
        0x08001cf6:    9005        ..      STR      r0,[sp,#0x14]
        0x08001cf8:    4669        iF      MOV      r1,sp
        0x08001cfa:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001cfe:    f7fffb8f    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001d02:    2000        .       MOVS     r0,#0
        0x08001d04:    9006        ..      STR      r0,[sp,#0x18]
        0x08001d06:    2080        .       MOVS     r0,#0x80
        0x08001d08:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001d0a:    2040        @       MOVS     r0,#0x40
        0x08001d0c:    9008        ..      STR      r0,[sp,#0x20]
        0x08001d0e:    2000        .       MOVS     r0,#0
        0x08001d10:    9009        ..      STR      r0,[sp,#0x24]
        0x08001d12:    900a        ..      STR      r0,[sp,#0x28]
        0x08001d14:    900b        ..      STR      r0,[sp,#0x2c]
        0x08001d16:    900c        ..      STR      r0,[sp,#0x30]
        0x08001d18:    a906        ..      ADD      r1,sp,#0x18
        0x08001d1a:    4807        .H      LDR      r0,[pc,#28] ; [0x8001d38] = 0x40010020
        0x08001d1c:    f7fffa3a    ..:.    BL       LL_COMP_Init ; 0x8001194
        0x08001d20:    2000        .       MOVS     r0,#0
        0x08001d22:    4905        .I      LDR      r1,[pc,#20] ; [0x8001d38] = 0x40010020
        0x08001d24:    6809        .h      LDR      r1,[r1,#0]
        0x08001d26:    f4217100    !..q    BIC      r1,r1,#0x200
        0x08001d2a:    4301        .C      ORRS     r1,r1,r0
        0x08001d2c:    4a02        .J      LDR      r2,[pc,#8] ; [0x8001d38] = 0x40010020
        0x08001d2e:    6011        .`      STR      r1,[r2,#0]
        0x08001d30:    bf00        ..      NOP      
        0x08001d32:    b00d        ..      ADD      sp,sp,#0x34
        0x08001d34:    bd00        ..      POP      {pc}
    $d
        0x08001d36:    0000        ..      DCW    0
        0x08001d38:    40010020     ..@    DCD    1073807392
    $t
    i.MX_CRC_Init
    MX_CRC_Init
        0x08001d3c:    b510        ..      PUSH     {r4,lr}
        0x08001d3e:    2040        @       MOVS     r0,#0x40
        0x08001d40:    f7fffa0c    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001d44:    2020                MOVS     r0,#0x20
        0x08001d46:    4910        .I      LDR      r1,[pc,#64] ; [0x8001d88] = 0x40023000
        0x08001d48:    6889        .h      LDR      r1,[r1,#8]
        0x08001d4a:    f0210160    !.`.    BIC      r1,r1,#0x60
        0x08001d4e:    4301        .C      ORRS     r1,r1,r0
        0x08001d50:    4a0d        .J      LDR      r2,[pc,#52] ; [0x8001d88] = 0x40023000
        0x08001d52:    6091        .`      STR      r1,[r2,#8]
        0x08001d54:    bf00        ..      NOP      
        0x08001d56:    2080        .       MOVS     r0,#0x80
        0x08001d58:    4611        .F      MOV      r1,r2
        0x08001d5a:    6889        .h      LDR      r1,[r1,#8]
        0x08001d5c:    f0210180    !...    BIC      r1,r1,#0x80
        0x08001d60:    4301        .C      ORRS     r1,r1,r0
        0x08001d62:    6091        .`      STR      r1,[r2,#8]
        0x08001d64:    bf00        ..      NOP      
        0x08001d66:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x08001d6a:    4611        .F      MOV      r1,r2
        0x08001d6c:    6108        .a      STR      r0,[r1,#0x10]
        0x08001d6e:    bf00        ..      NOP      
        0x08001d70:    4806        .H      LDR      r0,[pc,#24] ; [0x8001d8c] = 0x4c11db7
        0x08001d72:    6148        Ha      STR      r0,[r1,#0x14]
        0x08001d74:    bf00        ..      NOP      
        0x08001d76:    2000        .       MOVS     r0,#0
        0x08001d78:    6889        .h      LDR      r1,[r1,#8]
        0x08001d7a:    f0210118    !...    BIC      r1,r1,#0x18
        0x08001d7e:    4301        .C      ORRS     r1,r1,r0
        0x08001d80:    6091        .`      STR      r1,[r2,#8]
        0x08001d82:    bf00        ..      NOP      
        0x08001d84:    bd10        ..      POP      {r4,pc}
    $d
        0x08001d86:    0000        ..      DCW    0
        0x08001d88:    40023000    .0.@    DCD    1073885184
        0x08001d8c:    04c11db7    ....    DCD    79764919
    $t
    i.MX_DAC_Init
    MX_DAC_Init
        0x08001d90:    b500        ..      PUSH     {lr}
        0x08001d92:    b08b        ..      SUB      sp,sp,#0x2c
        0x08001d94:    2000        .       MOVS     r0,#0
        0x08001d96:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001d98:    9008        ..      STR      r0,[sp,#0x20]
        0x08001d9a:    9009        ..      STR      r0,[sp,#0x24]
        0x08001d9c:    900a        ..      STR      r0,[sp,#0x28]
        0x08001d9e:    2118        .!      MOVS     r1,#0x18
        0x08001da0:    a801        ..      ADD      r0,sp,#4
        0x08001da2:    f7fefa28    ..(.    BL       __aeabi_memclr ; 0x80001f6
        0x08001da6:    f04f5000    O..P    MOV      r0,#0x20000000
        0x08001daa:    f7fff9e5    ....    BL       LL_APB1_GRP1_EnableClock ; 0x8001178
        0x08001dae:    f44f3000    O..0    MOV      r0,#0x20000
        0x08001db2:    f7fff9d3    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001db6:    2030        0       MOVS     r0,#0x30
        0x08001db8:    9001        ..      STR      r0,[sp,#4]
        0x08001dba:    2003        .       MOVS     r0,#3
        0x08001dbc:    9002        ..      STR      r0,[sp,#8]
        0x08001dbe:    2000        .       MOVS     r0,#0
        0x08001dc0:    9005        ..      STR      r0,[sp,#0x14]
        0x08001dc2:    a901        ..      ADD      r1,sp,#4
        0x08001dc4:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001dc8:    f7fffb2a    ..*.    BL       LL_GPIO_Init ; 0x8001420
        0x08001dcc:    2038        8       MOVS     r0,#0x38
        0x08001dce:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001dd0:    2000        .       MOVS     r0,#0
        0x08001dd2:    9008        ..      STR      r0,[sp,#0x20]
        0x08001dd4:    900a        ..      STR      r0,[sp,#0x28]
        0x08001dd6:    aa07        ..      ADD      r2,sp,#0x1c
        0x08001dd8:    4909        .I      LDR      r1,[pc,#36] ; [0x8001e00] = 0x2100001
        0x08001dda:    480a        .H      LDR      r0,[pc,#40] ; [0x8001e04] = 0x40007400
        0x08001ddc:    f7fffa0d    ....    BL       LL_DAC_Init ; 0x80011fa
        0x08001de0:    4907        .I      LDR      r1,[pc,#28] ; [0x8001e00] = 0x2100001
        0x08001de2:    4808        .H      LDR      r0,[pc,#32] ; [0x8001e04] = 0x40007400
        0x08001de4:    f7fffa00    ....    BL       LL_DAC_DisableTrigger ; 0x80011e8
        0x08001de8:    aa07        ..      ADD      r2,sp,#0x1c
        0x08001dea:    4907        .I      LDR      r1,[pc,#28] ; [0x8001e08] = 0x15430012
        0x08001dec:    4805        .H      LDR      r0,[pc,#20] ; [0x8001e04] = 0x40007400
        0x08001dee:    f7fffa04    ....    BL       LL_DAC_Init ; 0x80011fa
        0x08001df2:    4905        .I      LDR      r1,[pc,#20] ; [0x8001e08] = 0x15430012
        0x08001df4:    4803        .H      LDR      r0,[pc,#12] ; [0x8001e04] = 0x40007400
        0x08001df6:    f7fff9f7    ....    BL       LL_DAC_DisableTrigger ; 0x80011e8
        0x08001dfa:    b00b        ..      ADD      sp,sp,#0x2c
        0x08001dfc:    bd00        ..      POP      {pc}
    $d
        0x08001dfe:    0000        ..      DCW    0
        0x08001e00:    02100001    ....    DCD    34603009
        0x08001e04:    40007400    .t.@    DCD    1073771520
        0x08001e08:    15430012    ..C.    DCD    356712466
    $t
    i.MX_GPIO_Init
    MX_GPIO_Init
        0x08001e0c:    b500        ..      PUSH     {lr}
        0x08001e0e:    b089        ..      SUB      sp,sp,#0x24
        0x08001e10:    2000        .       MOVS     r0,#0
        0x08001e12:    9006        ..      STR      r0,[sp,#0x18]
        0x08001e14:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001e16:    9008        ..      STR      r0,[sp,#0x20]
        0x08001e18:    2118        .!      MOVS     r1,#0x18
        0x08001e1a:    4668        hF      MOV      r0,sp
        0x08001e1c:    f7fef9eb    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08001e20:    f44f1000    O...    MOV      r0,#0x200000
        0x08001e24:    f7fff99a    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e28:    f44f0080    O...    MOV      r0,#0x400000
        0x08001e2c:    f7fff996    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e30:    f44f2000    O..     MOV      r0,#0x80000
        0x08001e34:    f7fff992    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e38:    f44f3000    O..0    MOV      r0,#0x20000
        0x08001e3c:    f7fff98e    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e40:    f44f2080    O..     MOV      r0,#0x40000
        0x08001e44:    f7fff98a    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e48:    f44f1080    O...    MOV      r0,#0x100000
        0x08001e4c:    f7fff986    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08001e50:    f6416103    A..a    MOV      r1,#0x1e03
        0x08001e54:    4861        aH      LDR      r0,[pc,#388] ; [0x8001fdc] = 0x48000800
        0x08001e56:    f7fffba1    ....    BL       LL_GPIO_ResetOutputPin ; 0x800159c
        0x08001e5a:    f44f61e0    O..a    MOV      r1,#0x700
        0x08001e5e:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001e62:    f7fffb9b    ....    BL       LL_GPIO_ResetOutputPin ; 0x800159c
        0x08001e66:    2140        @!      MOVS     r1,#0x40
        0x08001e68:    485d        ]H      LDR      r0,[pc,#372] ; [0x8001fe0] = 0x48001400
        0x08001e6a:    f7fffb97    ....    BL       LL_GPIO_ResetOutputPin ; 0x800159c
        0x08001e6e:    200f        .       MOVS     r0,#0xf
        0x08001e70:    9000        ..      STR      r0,[sp,#0]
        0x08001e72:    2000        .       MOVS     r0,#0
        0x08001e74:    9001        ..      STR      r0,[sp,#4]
        0x08001e76:    9004        ..      STR      r0,[sp,#0x10]
        0x08001e78:    4669        iF      MOV      r1,sp
        0x08001e7a:    485a        ZH      LDR      r0,[pc,#360] ; [0x8001fe4] = 0x48001000
        0x08001e7c:    f7fffad0    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001e80:    f6416003    A..`    MOV      r0,#0x1e03
        0x08001e84:    9000        ..      STR      r0,[sp,#0]
        0x08001e86:    2001        .       MOVS     r0,#1
        0x08001e88:    9001        ..      STR      r0,[sp,#4]
        0x08001e8a:    2000        .       MOVS     r0,#0
        0x08001e8c:    9002        ..      STR      r0,[sp,#8]
        0x08001e8e:    9003        ..      STR      r0,[sp,#0xc]
        0x08001e90:    9004        ..      STR      r0,[sp,#0x10]
        0x08001e92:    4669        iF      MOV      r1,sp
        0x08001e94:    4851        QH      LDR      r0,[pc,#324] ; [0x8001fdc] = 0x48000800
        0x08001e96:    f7fffac3    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001e9a:    f44f60e0    O..`    MOV      r0,#0x700
        0x08001e9e:    9000        ..      STR      r0,[sp,#0]
        0x08001ea0:    2001        .       MOVS     r0,#1
        0x08001ea2:    9001        ..      STR      r0,[sp,#4]
        0x08001ea4:    2000        .       MOVS     r0,#0
        0x08001ea6:    9002        ..      STR      r0,[sp,#8]
        0x08001ea8:    9003        ..      STR      r0,[sp,#0xc]
        0x08001eaa:    9004        ..      STR      r0,[sp,#0x10]
        0x08001eac:    4669        iF      MOV      r1,sp
        0x08001eae:    f04f4090    O..@    MOV      r0,#0x48000000
        0x08001eb2:    f7fffab5    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001eb6:    2040        @       MOVS     r0,#0x40
        0x08001eb8:    9000        ..      STR      r0,[sp,#0]
        0x08001eba:    2001        .       MOVS     r0,#1
        0x08001ebc:    9001        ..      STR      r0,[sp,#4]
        0x08001ebe:    2000        .       MOVS     r0,#0
        0x08001ec0:    9002        ..      STR      r0,[sp,#8]
        0x08001ec2:    9003        ..      STR      r0,[sp,#0xc]
        0x08001ec4:    9004        ..      STR      r0,[sp,#0x10]
        0x08001ec6:    4669        iF      MOV      r1,sp
        0x08001ec8:    4845        EH      LDR      r0,[pc,#276] ; [0x8001fe0] = 0x48001400
        0x08001eca:    f7fffaa9    ....    BL       LL_GPIO_Init ; 0x8001420
        0x08001ece:    4946        FI      LDR      r1,[pc,#280] ; [0x8001fe8] = 0xf0003
        0x08001ed0:    2001        .       MOVS     r0,#1
        0x08001ed2:    f7fffbbb    ....    BL       LL_SYSCFG_SetEXTISource ; 0x800164c
        0x08001ed6:    4945        EI      LDR      r1,[pc,#276] ; [0x8001fec] = 0xf00003
        0x08001ed8:    2001        .       MOVS     r0,#1
        0x08001eda:    f7fffbb7    ....    BL       LL_SYSCFG_SetEXTISource ; 0x800164c
        0x08001ede:    4944        DI      LDR      r1,[pc,#272] ; [0x8001ff0] = 0xf000003
        0x08001ee0:    2001        .       MOVS     r0,#1
        0x08001ee2:    f7fffbb3    ....    BL       LL_SYSCFG_SetEXTISource ; 0x800164c
        0x08001ee6:    4943        CI      LDR      r1,[pc,#268] ; [0x8001ff4] = 0xf0000003
        0x08001ee8:    2001        .       MOVS     r0,#1
        0x08001eea:    f7fffbaf    ....    BL       LL_SYSCFG_SetEXTISource ; 0x800164c
        0x08001eee:    2200        ."      MOVS     r2,#0
        0x08001ef0:    f44f5180    O..Q    MOV      r1,#0x1000
        0x08001ef4:    4840        @H      LDR      r0,[pc,#256] ; [0x8001ff8] = 0x48000400
        0x08001ef6:    f7fffb7f    ....    BL       LL_GPIO_SetPinPull ; 0x80015f8
        0x08001efa:    2200        ."      MOVS     r2,#0
        0x08001efc:    f44f5100    O..Q    MOV      r1,#0x2000
        0x08001f00:    483d        =H      LDR      r0,[pc,#244] ; [0x8001ff8] = 0x48000400
        0x08001f02:    f7fffb79    ..y.    BL       LL_GPIO_SetPinPull ; 0x80015f8
        0x08001f06:    2200        ."      MOVS     r2,#0
        0x08001f08:    f44f4180    O..A    MOV      r1,#0x4000
        0x08001f0c:    483a        :H      LDR      r0,[pc,#232] ; [0x8001ff8] = 0x48000400
        0x08001f0e:    f7fffb73    ..s.    BL       LL_GPIO_SetPinPull ; 0x80015f8
        0x08001f12:    2200        ."      MOVS     r2,#0
        0x08001f14:    f44f4100    O..A    MOV      r1,#0x8000
        0x08001f18:    4837        7H      LDR      r0,[pc,#220] ; [0x8001ff8] = 0x48000400
        0x08001f1a:    f7fffb6d    ..m.    BL       LL_GPIO_SetPinPull ; 0x80015f8
        0x08001f1e:    2200        ."      MOVS     r2,#0
        0x08001f20:    f44f5180    O..Q    MOV      r1,#0x1000
        0x08001f24:    4834        4H      LDR      r0,[pc,#208] ; [0x8001ff8] = 0x48000400
        0x08001f26:    f7fffb53    ..S.    BL       LL_GPIO_SetPinMode ; 0x80015d0
        0x08001f2a:    2200        ."      MOVS     r2,#0
        0x08001f2c:    f44f5100    O..Q    MOV      r1,#0x2000
        0x08001f30:    4831        1H      LDR      r0,[pc,#196] ; [0x8001ff8] = 0x48000400
        0x08001f32:    f7fffb4d    ..M.    BL       LL_GPIO_SetPinMode ; 0x80015d0
        0x08001f36:    2200        ."      MOVS     r2,#0
        0x08001f38:    f44f4180    O..A    MOV      r1,#0x4000
        0x08001f3c:    482e        .H      LDR      r0,[pc,#184] ; [0x8001ff8] = 0x48000400
        0x08001f3e:    f7fffb47    ..G.    BL       LL_GPIO_SetPinMode ; 0x80015d0
        0x08001f42:    2200        ."      MOVS     r2,#0
        0x08001f44:    f44f4100    O..A    MOV      r1,#0x8000
        0x08001f48:    482b        +H      LDR      r0,[pc,#172] ; [0x8001ff8] = 0x48000400
        0x08001f4a:    f7fffb41    ..A.    BL       LL_GPIO_SetPinMode ; 0x80015d0
        0x08001f4e:    f44f5080    O..P    MOV      r0,#0x1000
        0x08001f52:    9006        ..      STR      r0,[sp,#0x18]
        0x08001f54:    2000        .       MOVS     r0,#0
        0x08001f56:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001f58:    2001        .       MOVS     r0,#1
        0x08001f5a:    f88d0020    .. .    STRB     r0,[sp,#0x20]
        0x08001f5e:    2000        .       MOVS     r0,#0
        0x08001f60:    f88d0021    ..!.    STRB     r0,[sp,#0x21]
        0x08001f64:    2002        .       MOVS     r0,#2
        0x08001f66:    f88d0022    ..".    STRB     r0,[sp,#0x22]
        0x08001f6a:    a806        ..      ADD      r0,sp,#0x18
        0x08001f6c:    f7fff984    ....    BL       LL_EXTI_Init ; 0x8001278
        0x08001f70:    f44f5000    O..P    MOV      r0,#0x2000
        0x08001f74:    9006        ..      STR      r0,[sp,#0x18]
        0x08001f76:    2000        .       MOVS     r0,#0
        0x08001f78:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001f7a:    2001        .       MOVS     r0,#1
        0x08001f7c:    f88d0020    .. .    STRB     r0,[sp,#0x20]
        0x08001f80:    2000        .       MOVS     r0,#0
        0x08001f82:    f88d0021    ..!.    STRB     r0,[sp,#0x21]
        0x08001f86:    2002        .       MOVS     r0,#2
        0x08001f88:    f88d0022    ..".    STRB     r0,[sp,#0x22]
        0x08001f8c:    a806        ..      ADD      r0,sp,#0x18
        0x08001f8e:    f7fff973    ..s.    BL       LL_EXTI_Init ; 0x8001278
        0x08001f92:    f44f4080    O..@    MOV      r0,#0x4000
        0x08001f96:    9006        ..      STR      r0,[sp,#0x18]
        0x08001f98:    2000        .       MOVS     r0,#0
        0x08001f9a:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001f9c:    2001        .       MOVS     r0,#1
        0x08001f9e:    f88d0020    .. .    STRB     r0,[sp,#0x20]
        0x08001fa2:    2000        .       MOVS     r0,#0
        0x08001fa4:    f88d0021    ..!.    STRB     r0,[sp,#0x21]
        0x08001fa8:    2002        .       MOVS     r0,#2
        0x08001faa:    f88d0022    ..".    STRB     r0,[sp,#0x22]
        0x08001fae:    a806        ..      ADD      r0,sp,#0x18
        0x08001fb0:    f7fff962    ..b.    BL       LL_EXTI_Init ; 0x8001278
        0x08001fb4:    f44f4000    O..@    MOV      r0,#0x8000
        0x08001fb8:    9006        ..      STR      r0,[sp,#0x18]
        0x08001fba:    2000        .       MOVS     r0,#0
        0x08001fbc:    9007        ..      STR      r0,[sp,#0x1c]
        0x08001fbe:    2001        .       MOVS     r0,#1
        0x08001fc0:    f88d0020    .. .    STRB     r0,[sp,#0x20]
        0x08001fc4:    2000        .       MOVS     r0,#0
        0x08001fc6:    f88d0021    ..!.    STRB     r0,[sp,#0x21]
        0x08001fca:    2002        .       MOVS     r0,#2
        0x08001fcc:    f88d0022    ..".    STRB     r0,[sp,#0x22]
        0x08001fd0:    a806        ..      ADD      r0,sp,#0x18
        0x08001fd2:    f7fff951    ..Q.    BL       LL_EXTI_Init ; 0x8001278
        0x08001fd6:    b009        ..      ADD      sp,sp,#0x24
        0x08001fd8:    bd00        ..      POP      {pc}
    $d
        0x08001fda:    0000        ..      DCW    0
        0x08001fdc:    48000800    ...H    DCD    1207961600
        0x08001fe0:    48001400    ...H    DCD    1207964672
        0x08001fe4:    48001000    ...H    DCD    1207963648
        0x08001fe8:    000f0003    ....    DCD    983043
        0x08001fec:    00f00003    ....    DCD    15728643
        0x08001ff0:    0f000003    ....    DCD    251658243
        0x08001ff4:    f0000003    ....    DCD    4026531843
        0x08001ff8:    48000400    ...H    DCD    1207960576
    $t
    i.MX_TIM3_Init
    MX_TIM3_Init
        0x08001ffc:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x08002000:    b08c        ..      SUB      sp,sp,#0x30
        0x08002002:    2114        .!      MOVS     r1,#0x14
        0x08002004:    a807        ..      ADD      r0,sp,#0x1c
        0x08002006:    f7fef8f6    ....    BL       __aeabi_memclr ; 0x80001f6
        0x0800200a:    2118        .!      MOVS     r1,#0x18
        0x0800200c:    a801        ..      ADD      r0,sp,#4
        0x0800200e:    f7fef8f2    ....    BL       __aeabi_memclr ; 0x80001f6
        0x08002012:    2002        .       MOVS     r0,#2
        0x08002014:    f7fff8b0    ....    BL       LL_APB1_GRP1_EnableClock ; 0x8001178
        0x08002018:    f44f2080    O..     MOV      r0,#0x40000
        0x0800201c:    f7fff89e    ....    BL       LL_AHB1_GRP1_EnableClock ; 0x800115c
        0x08002020:    2010        .       MOVS     r0,#0x10
        0x08002022:    9001        ..      STR      r0,[sp,#4]
        0x08002024:    2002        .       MOVS     r0,#2
        0x08002026:    9002        ..      STR      r0,[sp,#8]
        0x08002028:    2000        .       MOVS     r0,#0
        0x0800202a:    9003        ..      STR      r0,[sp,#0xc]
        0x0800202c:    9004        ..      STR      r0,[sp,#0x10]
        0x0800202e:    9005        ..      STR      r0,[sp,#0x14]
        0x08002030:    2002        .       MOVS     r0,#2
        0x08002032:    9006        ..      STR      r0,[sp,#0x18]
        0x08002034:    a901        ..      ADD      r1,sp,#4
        0x08002036:    484c        LH      LDR      r0,[pc,#304] ; [0x8002168] = 0x48000400
        0x08002038:    f7fff9f2    ....    BL       LL_GPIO_Init ; 0x8001420
        0x0800203c:    211d        .!      MOVS     r1,#0x1d
        0x0800203e:    4b4b        KK      LDR      r3,[pc,#300] ; [0x800216c] = 0xe000ed0c
        0x08002040:    681b        .h      LDR      r3,[r3,#0]
        0x08002042:    f3c32002    ...     UBFX     r0,r3,#8,#3
        0x08002046:    2400        .$      MOVS     r4,#0
        0x08002048:    4625        %F      MOV      r5,r4
        0x0800204a:    4603        .F      MOV      r3,r0
        0x0800204c:    f1c30c07    ....    RSB      r12,r3,#7
        0x08002050:    f1bc0f04    ....    CMP      r12,#4
        0x08002054:    d902        ..      BLS      0x800205c ; MX_TIM3_Init + 96
        0x08002056:    f04f0c04    O...    MOV      r12,#4
        0x0800205a:    e001        ..      B        0x8002060 ; MX_TIM3_Init + 100
        0x0800205c:    f1c30c07    ....    RSB      r12,r3,#7
        0x08002060:    4667        gF      MOV      r7,r12
        0x08002062:    f1030c04    ....    ADD      r12,r3,#4
        0x08002066:    f1bc0f07    ....    CMP      r12,#7
        0x0800206a:    d202        ..      BCS      0x8002072 ; MX_TIM3_Init + 118
        0x0800206c:    f04f0c00    O...    MOV      r12,#0
        0x08002070:    e001        ..      B        0x8002076 ; MX_TIM3_Init + 122
        0x08002072:    f1a30c03    ....    SUB      r12,r3,#3
        0x08002076:    4666        fF      MOV      r6,r12
        0x08002078:    f04f0c01    O...    MOV      r12,#1
        0x0800207c:    fa0cfc07    ....    LSL      r12,r12,r7
        0x08002080:    f1ac0c01    ....    SUB      r12,r12,#1
        0x08002084:    ea0c0c04    ....    AND      r12,r12,r4
        0x08002088:    fa0cfc06    ....    LSL      r12,r12,r6
        0x0800208c:    f04f0801    O...    MOV      r8,#1
        0x08002090:    fa08f806    ....    LSL      r8,r8,r6
        0x08002094:    f1a80801    ....    SUB      r8,r8,#1
        0x08002098:    ea080805    ....    AND      r8,r8,r5
        0x0800209c:    ea4c0208    L...    ORR      r2,r12,r8
        0x080020a0:    bf00        ..      NOP      
        0x080020a2:    2900        .)      CMP      r1,#0
        0x080020a4:    db04        ..      BLT      0x80020b0 ; MX_TIM3_Init + 180
        0x080020a6:    0710        ..      LSLS     r0,r2,#28
        0x080020a8:    0e03        ..      LSRS     r3,r0,#24
        0x080020aa:    4831        1H      LDR      r0,[pc,#196] ; [0x8002170] = 0xe000e400
        0x080020ac:    5443        CT      STRB     r3,[r0,r1]
        0x080020ae:    e007        ..      B        0x80020c0 ; MX_TIM3_Init + 196
        0x080020b0:    0710        ..      LSLS     r0,r2,#28
        0x080020b2:    0e04        ..      LSRS     r4,r0,#24
        0x080020b4:    482d        -H      LDR      r0,[pc,#180] ; [0x800216c] = 0xe000ed0c
        0x080020b6:    300c        .0      ADDS     r0,r0,#0xc
        0x080020b8:    f001030f    ....    AND      r3,r1,#0xf
        0x080020bc:    1f1b        ..      SUBS     r3,r3,#4
        0x080020be:    54c4        .T      STRB     r4,[r0,r3]
        0x080020c0:    bf00        ..      NOP      
        0x080020c2:    201d        .       MOVS     r0,#0x1d
        0x080020c4:    2800        .(      CMP      r0,#0
        0x080020c6:    db09        ..      BLT      0x80020dc ; MX_TIM3_Init + 224
        0x080020c8:    f000021f    ....    AND      r2,r0,#0x1f
        0x080020cc:    2101        .!      MOVS     r1,#1
        0x080020ce:    4091        .@      LSLS     r1,r1,r2
        0x080020d0:    0942        B.      LSRS     r2,r0,#5
        0x080020d2:    0092        ..      LSLS     r2,r2,#2
        0x080020d4:    f10222e0    ..."    ADD      r2,r2,#0xe000e000
        0x080020d8:    f8c21100    ....    STR      r1,[r2,#0x100]
        0x080020dc:    bf00        ..      NOP      
        0x080020de:    2000        .       MOVS     r0,#0
        0x080020e0:    f8ad001c    ....    STRH     r0,[sp,#0x1c]
        0x080020e4:    9008        ..      STR      r0,[sp,#0x20]
        0x080020e6:    f64f70ff    O..p    MOV      r0,#0xffff
        0x080020ea:    9009        ..      STR      r0,[sp,#0x24]
        0x080020ec:    2000        .       MOVS     r0,#0
        0x080020ee:    900a        ..      STR      r0,[sp,#0x28]
        0x080020f0:    a907        ..      ADD      r1,sp,#0x1c
        0x080020f2:    4820         H      LDR      r0,[pc,#128] ; [0x8002174] = 0x40000400
        0x080020f4:    f7fffc42    ..B.    BL       LL_TIM_Init ; 0x800197c
        0x080020f8:    bf00        ..      NOP      
        0x080020fa:    481e        .H      LDR      r0,[pc,#120] ; [0x8002174] = 0x40000400
        0x080020fc:    6800        .h      LDR      r0,[r0,#0]
        0x080020fe:    f0400080    @...    ORR      r0,r0,#0x80
        0x08002102:    491c        .I      LDR      r1,[pc,#112] ; [0x8002174] = 0x40000400
        0x08002104:    6008        .`      STR      r0,[r1,#0]
        0x08002106:    bf00        ..      NOP      
        0x08002108:    2000        .       MOVS     r0,#0
        0x0800210a:    6889        .h      LDR      r1,[r1,#8]
        0x0800210c:    4a1a        .J      LDR      r2,[pc,#104] ; [0x8002178] = 0xfffebff8
        0x0800210e:    4011        .@      ANDS     r1,r1,r2
        0x08002110:    4301        .C      ORRS     r1,r1,r0
        0x08002112:    4a18        .J      LDR      r2,[pc,#96] ; [0x8002174] = 0x40000400
        0x08002114:    6091        .`      STR      r1,[r2,#8]
        0x08002116:    bf00        ..      NOP      
        0x08002118:    bf00        ..      NOP      
        0x0800211a:    4611        .F      MOV      r1,r2
        0x0800211c:    6849        Ih      LDR      r1,[r1,#4]
        0x0800211e:    f0210170    !.p.    BIC      r1,r1,#0x70
        0x08002122:    4301        .C      ORRS     r1,r1,r0
        0x08002124:    6051        Q`      STR      r1,[r2,#4]
        0x08002126:    bf00        ..      NOP      
        0x08002128:    bf00        ..      NOP      
        0x0800212a:    4610        .F      MOV      r0,r2
        0x0800212c:    6880        .h      LDR      r0,[r0,#8]
        0x0800212e:    f0200080     ...    BIC      r0,r0,#0x80
        0x08002132:    4611        .F      MOV      r1,r2
        0x08002134:    6088        .`      STR      r0,[r1,#8]
        0x08002136:    bf00        ..      NOP      
        0x08002138:    138a        ..      ASRS     r2,r1,#14
        0x0800213a:    2101        .!      MOVS     r1,#1
        0x0800213c:    480d        .H      LDR      r0,[pc,#52] ; [0x8002174] = 0x40000400
        0x0800213e:    f7fffb27    ..'.    BL       LL_TIM_IC_SetActiveInput ; 0x8001790
        0x08002142:    2200        ."      MOVS     r2,#0
        0x08002144:    2101        .!      MOVS     r1,#1
        0x08002146:    480b        .H      LDR      r0,[pc,#44] ; [0x8002174] = 0x40000400
        0x08002148:    f7fffbd8    ....    BL       LL_TIM_IC_SetPrescaler ; 0x80018fc
        0x0800214c:    2200        ."      MOVS     r2,#0
        0x0800214e:    2101        .!      MOVS     r1,#1
        0x08002150:    4808        .H      LDR      r0,[pc,#32] ; [0x8002174] = 0x40000400
        0x08002152:    f7fffb5d    ..].    BL       LL_TIM_IC_SetFilter ; 0x8001810
        0x08002156:    2200        ."      MOVS     r2,#0
        0x08002158:    2101        .!      MOVS     r1,#1
        0x0800215a:    4806        .H      LDR      r0,[pc,#24] ; [0x8002174] = 0x40000400
        0x0800215c:    f7fffb98    ....    BL       LL_TIM_IC_SetPolarity ; 0x8001890
        0x08002160:    b00c        ..      ADD      sp,sp,#0x30
        0x08002162:    e8bd81f0    ....    POP      {r4-r8,pc}
    $d
        0x08002166:    0000        ..      DCW    0
        0x08002168:    48000400    ...H    DCD    1207960576
        0x0800216c:    e000ed0c    ....    DCD    3758157068
        0x08002170:    e000e400    ....    DCD    3758154752
        0x08002174:    40000400    ...@    DCD    1073742848
        0x08002178:    fffebff8    ....    DCD    4294885368
    $t
    i.MX_TIM4_Init
    MX_TIM4_Init
        0x0800217c:    b500        ..      PUSH     {lr}
        0x0800217e:    b08b        ..      SUB      sp,sp,#0x2c
        0x08002180:    2000        .       MOVS     r0,#0
        0x08002182:    9007        ..      STR      r0,[sp,#0x1c]
        0x08002184:    9008        ..      STR      r0,[sp,#0x20]
        0x08002186:    9009        ..      STR      r0,[sp,#0x24]
        0x08002188:    900a        ..      STR      r0,[sp,#0x28]
        0x0800218a:    9004        ..      STR      r0,[sp,#0x10]
        0x0800218c:    9005        ..      STR      r0,[sp,#0x14]
        0x0800218e:    9006        ..      STR      r0,[sp,#0x18]
        0x08002190:    9000        ..      STR      r0,[sp,#0]
        0x08002192:    9001        ..      STR      r0,[sp,#4]
        0x08002194:    9002        ..      STR      r0,[sp,#8]
        0x08002196:    9003        ..      STR      r0,[sp,#0xc]
        0x08002198:    4823        #H      LDR      r0,[pc,#140] ; [0x8002228] = 0x40000800
        0x0800219a:    4924        $I      LDR      r1,[pc,#144] ; [0x800222c] = 0x20000e0c
        0x0800219c:    6008        .`      STR      r0,[r1,#0]
        0x0800219e:    2000        .       MOVS     r0,#0
        0x080021a0:    6048        H`      STR      r0,[r1,#4]
        0x080021a2:    2100        .!      MOVS     r1,#0
        0x080021a4:    4821        !H      LDR      r0,[pc,#132] ; [0x800222c] = 0x20000e0c
        0x080021a6:    6081        .`      STR      r1,[r0,#8]
        0x080021a8:    f64f71ff    O..q    MOV      r1,#0xffff
        0x080021ac:    60c1        .`      STR      r1,[r0,#0xc]
        0x080021ae:    2100        .!      MOVS     r1,#0
        0x080021b0:    6101        .a      STR      r1,[r0,#0x10]
        0x080021b2:    2180        .!      MOVS     r1,#0x80
        0x080021b4:    6181        .a      STR      r1,[r0,#0x18]
        0x080021b6:    f7fefc35    ..5.    BL       HAL_TIM_Base_Init ; 0x8000a24
        0x080021ba:    b108        ..      CBZ      r0,0x80021c0 ; MX_TIM4_Init + 68
        0x080021bc:    f7fef987    ....    BL       Error_Handler ; 0x80004ce
        0x080021c0:    f44f5080    O..P    MOV      r0,#0x1000
        0x080021c4:    9007        ..      STR      r0,[sp,#0x1c]
        0x080021c6:    a907        ..      ADD      r1,sp,#0x1c
        0x080021c8:    4818        .H      LDR      r0,[pc,#96] ; [0x800222c] = 0x20000e0c
        0x080021ca:    f7fefca1    ....    BL       HAL_TIM_ConfigClockSource ; 0x8000b10
        0x080021ce:    b108        ..      CBZ      r0,0x80021d4 ; MX_TIM4_Init + 88
        0x080021d0:    f7fef97d    ..}.    BL       Error_Handler ; 0x80004ce
        0x080021d4:    4815        .H      LDR      r0,[pc,#84] ; [0x800222c] = 0x20000e0c
        0x080021d6:    f7fefd72    ..r.    BL       HAL_TIM_IC_Init ; 0x8000cbe
        0x080021da:    b108        ..      CBZ      r0,0x80021e0 ; MX_TIM4_Init + 100
        0x080021dc:    f7fef977    ..w.    BL       Error_Handler ; 0x80004ce
        0x080021e0:    2000        .       MOVS     r0,#0
        0x080021e2:    9004        ..      STR      r0,[sp,#0x10]
        0x080021e4:    9006        ..      STR      r0,[sp,#0x18]
        0x080021e6:    a904        ..      ADD      r1,sp,#0x10
        0x080021e8:    4810        .H      LDR      r0,[pc,#64] ; [0x800222c] = 0x20000e0c
        0x080021ea:    f7fefbd1    ....    BL       HAL_TIMEx_MasterConfigSynchronization ; 0x8000990
        0x080021ee:    b108        ..      CBZ      r0,0x80021f4 ; MX_TIM4_Init + 120
        0x080021f0:    f7fef96d    ..m.    BL       Error_Handler ; 0x80004ce
        0x080021f4:    2000        .       MOVS     r0,#0
        0x080021f6:    9000        ..      STR      r0,[sp,#0]
        0x080021f8:    2001        .       MOVS     r0,#1
        0x080021fa:    9001        ..      STR      r0,[sp,#4]
        0x080021fc:    2000        .       MOVS     r0,#0
        0x080021fe:    9002        ..      STR      r0,[sp,#8]
        0x08002200:    9003        ..      STR      r0,[sp,#0xc]
        0x08002202:    2200        ."      MOVS     r2,#0
        0x08002204:    4669        iF      MOV      r1,sp
        0x08002206:    4809        .H      LDR      r0,[pc,#36] ; [0x800222c] = 0x20000e0c
        0x08002208:    f7fefcf9    ....    BL       HAL_TIM_IC_ConfigChannel ; 0x8000bfe
        0x0800220c:    b108        ..      CBZ      r0,0x8002212 ; MX_TIM4_Init + 150
        0x0800220e:    f7fef95e    ..^.    BL       Error_Handler ; 0x80004ce
        0x08002212:    2204        ."      MOVS     r2,#4
        0x08002214:    4669        iF      MOV      r1,sp
        0x08002216:    4805        .H      LDR      r0,[pc,#20] ; [0x800222c] = 0x20000e0c
        0x08002218:    f7fefcf1    ....    BL       HAL_TIM_IC_ConfigChannel ; 0x8000bfe
        0x0800221c:    b108        ..      CBZ      r0,0x8002222 ; MX_TIM4_Init + 166
        0x0800221e:    f7fef956    ..V.    BL       Error_Handler ; 0x80004ce
        0x08002222:    b00b        ..      ADD      sp,sp,#0x2c
        0x08002224:    bd00        ..      POP      {pc}
    $d
        0x08002226:    0000        ..      DCW    0
        0x08002228:    40000800    ...@    DCD    1073743872
        0x0800222c:    20000e0c    ...     DCD    536874508
    $t
    i.MemManage_Handler
    MemManage_Handler
        0x08002230:    bf00        ..      NOP      
        0x08002232:    e7fe        ..      B        0x8002232 ; MemManage_Handler + 2
    i.NMI_Handler
    NMI_Handler
        0x08002234:    bf00        ..      NOP      
        0x08002236:    e7fe        ..      B        0x8002236 ; NMI_Handler + 2
    i.PendSV_Handler
    PendSV_Handler
        0x08002238:    4770        pG      BX       lr
        0x0800223a:    0000        ..      MOVS     r0,r0
    i.QuickChargeDetection
    QuickChargeDetection
        0x0800223c:    b510        ..      PUSH     {r4,lr}
        0x0800223e:    2200        ."      MOVS     r2,#0
        0x08002240:    2101        .!      MOVS     r1,#1
        0x08002242:    4848        HH      LDR      r0,[pc,#288] ; [0x8002364] = 0x48001000
        0x08002244:    f7fff9b0    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x08002248:    2201        ."      MOVS     r2,#1
        0x0800224a:    2102        .!      MOVS     r1,#2
        0x0800224c:    4845        EH      LDR      r0,[pc,#276] ; [0x8002364] = 0x48001000
        0x0800224e:    f7fff9ab    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x08002252:    2102        .!      MOVS     r1,#2
        0x08002254:    4843        CH      LDR      r0,[pc,#268] ; [0x8002364] = 0x48001000
        0x08002256:    f7fff9a3    ....    BL       LL_GPIO_SetOutputPin ; 0x80015a0
        0x0800225a:    2200        ."      MOVS     r2,#0
        0x0800225c:    2104        .!      MOVS     r1,#4
        0x0800225e:    4841        AH      LDR      r0,[pc,#260] ; [0x8002364] = 0x48001000
        0x08002260:    f7fff9a2    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x08002264:    2200        ."      MOVS     r2,#0
        0x08002266:    2108        .!      MOVS     r1,#8
        0x08002268:    483e        >H      LDR      r0,[pc,#248] ; [0x8002364] = 0x48001000
        0x0800226a:    f7fff99d    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x0800226e:    2050        P       MOVS     r0,#0x50
        0x08002270:    f7fef9a8    ....    BL       HAL_Delay ; 0x80005c4
        0x08002274:    2103        .!      MOVS     r1,#3
        0x08002276:    200a        .       MOVS     r0,#0xa
        0x08002278:    f7fef92c    ..,.    BL       GetAverageValue ; 0x80004d4
        0x0800227c:    493a        :I      LDR      r1,[pc,#232] ; [0x8002368] = 0x20000040
        0x0800227e:    8008        ..      STRH     r0,[r1,#0]
        0x08002280:    4608        .F      MOV      r0,r1
        0x08002282:    8800        ..      LDRH     r0,[r0,#0]
        0x08002284:    f24071f3    @..q    MOV      r1,#0x7f3
        0x08002288:    4288        .B      CMP      r0,r1
        0x0800228a:    dd03        ..      BLE      0x8002294 ; QuickChargeDetection + 88
        0x0800228c:    2001        .       MOVS     r0,#1
        0x0800228e:    4937        7I      LDR      r1,[pc,#220] ; [0x800236c] = 0x20000042
        0x08002290:    7008        .p      STRB     r0,[r1,#0]
        0x08002292:    e002        ..      B        0x800229a ; QuickChargeDetection + 94
        0x08002294:    2000        .       MOVS     r0,#0
        0x08002296:    4935        5I      LDR      r1,[pc,#212] ; [0x800236c] = 0x20000042
        0x08002298:    7008        .p      STRB     r0,[r1,#0]
        0x0800229a:    2201        ."      MOVS     r2,#1
        0x0800229c:    4611        .F      MOV      r1,r2
        0x0800229e:    4831        1H      LDR      r0,[pc,#196] ; [0x8002364] = 0x48001000
        0x080022a0:    f7fff982    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x080022a4:    2101        .!      MOVS     r1,#1
        0x080022a6:    482f        /H      LDR      r0,[pc,#188] ; [0x8002364] = 0x48001000
        0x080022a8:    f7fff976    ..v.    BL       LL_GPIO_ResetOutputPin ; 0x8001598
        0x080022ac:    2201        ."      MOVS     r2,#1
        0x080022ae:    2102        .!      MOVS     r1,#2
        0x080022b0:    482c        ,H      LDR      r0,[pc,#176] ; [0x8002364] = 0x48001000
        0x080022b2:    f7fff979    ..y.    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x080022b6:    2102        .!      MOVS     r1,#2
        0x080022b8:    482a        *H      LDR      r0,[pc,#168] ; [0x8002364] = 0x48001000
        0x080022ba:    f7fff96d    ..m.    BL       LL_GPIO_ResetOutputPin ; 0x8001598
        0x080022be:    2064        d       MOVS     r0,#0x64
        0x080022c0:    f7fef980    ....    BL       HAL_Delay ; 0x80005c4
        0x080022c4:    2201        ."      MOVS     r2,#1
        0x080022c6:    4611        .F      MOV      r1,r2
        0x080022c8:    4826        &H      LDR      r0,[pc,#152] ; [0x8002364] = 0x48001000
        0x080022ca:    f7fff96d    ..m.    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x080022ce:    2101        .!      MOVS     r1,#1
        0x080022d0:    4824        $H      LDR      r0,[pc,#144] ; [0x8002364] = 0x48001000
        0x080022d2:    f7fff961    ..a.    BL       LL_GPIO_ResetOutputPin ; 0x8001598
        0x080022d6:    2201        ."      MOVS     r2,#1
        0x080022d8:    2102        .!      MOVS     r1,#2
        0x080022da:    4822        "H      LDR      r0,[pc,#136] ; [0x8002364] = 0x48001000
        0x080022dc:    f7fff964    ..d.    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x080022e0:    2102        .!      MOVS     r1,#2
        0x080022e2:    4820         H      LDR      r0,[pc,#128] ; [0x8002364] = 0x48001000
        0x080022e4:    f7fff95c    ..\.    BL       LL_GPIO_SetOutputPin ; 0x80015a0
        0x080022e8:    2064        d       MOVS     r0,#0x64
        0x080022ea:    f7fef96b    ..k.    BL       HAL_Delay ; 0x80005c4
        0x080022ee:    2103        .!      MOVS     r1,#3
        0x080022f0:    200a        .       MOVS     r0,#0xa
        0x080022f2:    f7fef8ef    ....    BL       GetAverageValue ; 0x80004d4
        0x080022f6:    491c        .I      LDR      r1,[pc,#112] ; [0x8002368] = 0x20000040
        0x080022f8:    8008        ..      STRH     r0,[r1,#0]
        0x080022fa:    4608        .F      MOV      r0,r1
        0x080022fc:    8800        ..      LDRH     r0,[r0,#0]
        0x080022fe:    f5b07f96    ....    CMP      r0,#0x12c
        0x08002302:    dd03        ..      BLE      0x800230c ; QuickChargeDetection + 208
        0x08002304:    2001        .       MOVS     r0,#1
        0x08002306:    491a        .I      LDR      r1,[pc,#104] ; [0x8002370] = 0x20000043
        0x08002308:    7008        .p      STRB     r0,[r1,#0]
        0x0800230a:    e002        ..      B        0x8002312 ; QuickChargeDetection + 214
        0x0800230c:    2000        .       MOVS     r0,#0
        0x0800230e:    4918        .I      LDR      r1,[pc,#96] ; [0x8002370] = 0x20000043
        0x08002310:    7008        .p      STRB     r0,[r1,#0]
        0x08002312:    f44f60c8    O..`    MOV      r0,#0x640
        0x08002316:    f7fef955    ..U.    BL       HAL_Delay ; 0x80005c4
        0x0800231a:    2103        .!      MOVS     r1,#3
        0x0800231c:    200a        .       MOVS     r0,#0xa
        0x0800231e:    f7fef8d9    ....    BL       GetAverageValue ; 0x80004d4
        0x08002322:    4911        .I      LDR      r1,[pc,#68] ; [0x8002368] = 0x20000040
        0x08002324:    8008        ..      STRH     r0,[r1,#0]
        0x08002326:    4608        .F      MOV      r0,r1
        0x08002328:    8800        ..      LDRH     r0,[r0,#0]
        0x0800232a:    f5b07f96    ....    CMP      r0,#0x12c
        0x0800232e:    da0d        ..      BGE      0x800234c ; QuickChargeDetection + 272
        0x08002330:    480e        .H      LDR      r0,[pc,#56] ; [0x800236c] = 0x20000042
        0x08002332:    7800        .x      LDRB     r0,[r0,#0]
        0x08002334:    490e        .I      LDR      r1,[pc,#56] ; [0x8002370] = 0x20000043
        0x08002336:    7809        .x      LDRB     r1,[r1,#0]
        0x08002338:    4008        .@      ANDS     r0,r0,r1
        0x0800233a:    b118        ..      CBZ      r0,0x8002344 ; QuickChargeDetection + 264
        0x0800233c:    2001        .       MOVS     r0,#1
        0x0800233e:    490d        .I      LDR      r1,[pc,#52] ; [0x8002374] = 0x200001cc
        0x08002340:    7008        .p      STRB     r0,[r1,#0]
        0x08002342:    e006        ..      B        0x8002352 ; QuickChargeDetection + 278
        0x08002344:    2000        .       MOVS     r0,#0
        0x08002346:    490b        .I      LDR      r1,[pc,#44] ; [0x8002374] = 0x200001cc
        0x08002348:    7008        .p      STRB     r0,[r1,#0]
        0x0800234a:    e002        ..      B        0x8002352 ; QuickChargeDetection + 278
        0x0800234c:    2000        .       MOVS     r0,#0
        0x0800234e:    4909        .I      LDR      r1,[pc,#36] ; [0x8002374] = 0x200001cc
        0x08002350:    7008        .p      STRB     r0,[r1,#0]
        0x08002352:    4808        .H      LDR      r0,[pc,#32] ; [0x8002374] = 0x200001cc
        0x08002354:    7800        .x      LDRB     r0,[r0,#0]
        0x08002356:    b908        ..      CBNZ     r0,0x800235c ; QuickChargeDetection + 288
        0x08002358:    f000f80e    ....    BL       ReleaseUsbData ; 0x8002378
        0x0800235c:    2001        .       MOVS     r0,#1
        0x0800235e:    4905        .I      LDR      r1,[pc,#20] ; [0x8002374] = 0x200001cc
        0x08002360:    7008        .p      STRB     r0,[r1,#0]
        0x08002362:    bd10        ..      POP      {r4,pc}
    $d
        0x08002364:    48001000    ...H    DCD    1207963648
        0x08002368:    20000040    @..     DCD    536870976
        0x0800236c:    20000042    B..     DCD    536870978
        0x08002370:    20000043    C..     DCD    536870979
        0x08002374:    200001cc    ...     DCD    536871372
    $t
    i.ReleaseUsbData
    ReleaseUsbData
        0x08002378:    b510        ..      PUSH     {r4,lr}
        0x0800237a:    2200        ."      MOVS     r2,#0
        0x0800237c:    2104        .!      MOVS     r1,#4
        0x0800237e:    4809        .H      LDR      r0,[pc,#36] ; [0x80023a4] = 0x48001000
        0x08002380:    f7fff912    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x08002384:    2200        ."      MOVS     r2,#0
        0x08002386:    2108        .!      MOVS     r1,#8
        0x08002388:    4806        .H      LDR      r0,[pc,#24] ; [0x80023a4] = 0x48001000
        0x0800238a:    f7fff90d    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x0800238e:    2200        ."      MOVS     r2,#0
        0x08002390:    2101        .!      MOVS     r1,#1
        0x08002392:    4804        .H      LDR      r0,[pc,#16] ; [0x80023a4] = 0x48001000
        0x08002394:    f7fff908    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x08002398:    2200        ."      MOVS     r2,#0
        0x0800239a:    2102        .!      MOVS     r1,#2
        0x0800239c:    4801        .H      LDR      r0,[pc,#4] ; [0x80023a4] = 0x48001000
        0x0800239e:    f7fff903    ....    BL       LL_GPIO_SetPinMode ; 0x80015a8
        0x080023a2:    bd10        ..      POP      {r4,pc}
    $d
        0x080023a4:    48001000    ...H    DCD    1207963648
    $t
    i.ResetQuickChargeFlag
    ResetQuickChargeFlag
        0x080023a8:    2000        .       MOVS     r0,#0
        0x080023aa:    4903        .I      LDR      r1,[pc,#12] ; [0x80023b8] = 0x20000042
        0x080023ac:    7008        .p      STRB     r0,[r1,#0]
        0x080023ae:    4903        .I      LDR      r1,[pc,#12] ; [0x80023bc] = 0x20000043
        0x080023b0:    7008        .p      STRB     r0,[r1,#0]
        0x080023b2:    4903        .I      LDR      r1,[pc,#12] ; [0x80023c0] = 0x200001cc
        0x080023b4:    7008        .p      STRB     r0,[r1,#0]
        0x080023b6:    4770        pG      BX       lr
    $d
        0x080023b8:    20000042    B..     DCD    536870978
        0x080023bc:    20000043    C..     DCD    536870979
        0x080023c0:    200001cc    ...     DCD    536871372
    $t
    i.RestartTimer1
    RestartTimer1
        0x080023c4:    b510        ..      PUSH     {r4,lr}
        0x080023c6:    f7fefa17    ....    BL       HAL_GetTick ; 0x80007f8
        0x080023ca:    4901        .I      LDR      r1,[pc,#4] ; [0x80023d0] = 0x20000048
        0x080023cc:    6008        .`      STR      r0,[r1,#0]
        0x080023ce:    bd10        ..      POP      {r4,pc}
    $d
        0x080023d0:    20000048    H..     DCD    536870984
    $t
    i.SVC_Handler
    SVC_Handler
        0x080023d4:    4770        pG      BX       lr
        0x080023d6:    0000        ..      MOVS     r0,r0
    i.StartTimer1
    StartTimer1
        0x080023d8:    b510        ..      PUSH     {r4,lr}
        0x080023da:    4604        .F      MOV      r4,r0
        0x080023dc:    4804        .H      LDR      r0,[pc,#16] ; [0x80023f0] = 0x20000044
        0x080023de:    6004        .`      STR      r4,[r0,#0]
        0x080023e0:    f7fefa0a    ....    BL       HAL_GetTick ; 0x80007f8
        0x080023e4:    4903        .I      LDR      r1,[pc,#12] ; [0x80023f4] = 0x20000048
        0x080023e6:    6008        .`      STR      r0,[r1,#0]
        0x080023e8:    2001        .       MOVS     r0,#1
        0x080023ea:    4903        .I      LDR      r1,[pc,#12] ; [0x80023f8] = 0x2000004c
        0x080023ec:    7008        .p      STRB     r0,[r1,#0]
        0x080023ee:    bd10        ..      POP      {r4,pc}
    $d
        0x080023f0:    20000044    D..     DCD    536870980
        0x080023f4:    20000048    H..     DCD    536870984
        0x080023f8:    2000004c    L..     DCD    536870988
    $t
    i.StartTimer2
    StartTimer2
        0x080023fc:    b510        ..      PUSH     {r4,lr}
        0x080023fe:    4604        .F      MOV      r4,r0
        0x08002400:    4804        .H      LDR      r0,[pc,#16] ; [0x8002414] = 0x20000050
        0x08002402:    6004        .`      STR      r4,[r0,#0]
        0x08002404:    f7fef9f8    ....    BL       HAL_GetTick ; 0x80007f8
        0x08002408:    4903        .I      LDR      r1,[pc,#12] ; [0x8002418] = 0x20000054
        0x0800240a:    6008        .`      STR      r0,[r1,#0]
        0x0800240c:    2001        .       MOVS     r0,#1
        0x0800240e:    4903        .I      LDR      r1,[pc,#12] ; [0x800241c] = 0x20000058
        0x08002410:    7008        .p      STRB     r0,[r1,#0]
        0x08002412:    bd10        ..      POP      {r4,pc}
    $d
        0x08002414:    20000050    P..     DCD    536870992
        0x08002418:    20000054    T..     DCD    536870996
        0x0800241c:    20000058    X..     DCD    536871000
    $t
    i.StopAllTimers
    StopAllTimers
        0x08002420:    2000        .       MOVS     r0,#0
        0x08002422:    4902        .I      LDR      r1,[pc,#8] ; [0x800242c] = 0x2000004c
        0x08002424:    7008        .p      STRB     r0,[r1,#0]
        0x08002426:    4902        .I      LDR      r1,[pc,#8] ; [0x8002430] = 0x20000058
        0x08002428:    7008        .p      STRB     r0,[r1,#0]
        0x0800242a:    4770        pG      BX       lr
    $d
        0x0800242c:    2000004c    L..     DCD    536870988
        0x08002430:    20000058    X..     DCD    536871000
    $t
    i.StopTimer1
    StopTimer1
        0x08002434:    2000        .       MOVS     r0,#0
        0x08002436:    4901        .I      LDR      r1,[pc,#4] ; [0x800243c] = 0x2000004c
        0x08002438:    7008        .p      STRB     r0,[r1,#0]
        0x0800243a:    4770        pG      BX       lr
    $d
        0x0800243c:    2000004c    L..     DCD    536870988
    $t
    i.SysTick_Handler
    SysTick_Handler
        0x08002440:    b510        ..      PUSH     {r4,lr}
        0x08002442:    f7fefd0d    ....    BL       IncMsCount ; 0x8000e60
        0x08002446:    f7fef9dd    ....    BL       HAL_IncTick ; 0x8000804
        0x0800244a:    bd10        ..      POP      {r4,pc}
    i.SystemClock_Config
    SystemClock_Config
        0x0800244c:    b510        ..      PUSH     {r4,lr}
        0x0800244e:    2002        .       MOVS     r0,#2
        0x08002450:    493e        >I      LDR      r1,[pc,#248] ; [0x800254c] = 0x40022000
        0x08002452:    6809        .h      LDR      r1,[r1,#0]
        0x08002454:    f0210107    !...    BIC      r1,r1,#7
        0x08002458:    4301        .C      ORRS     r1,r1,r0
        0x0800245a:    4a3c        <J      LDR      r2,[pc,#240] ; [0x800254c] = 0x40022000
        0x0800245c:    6011        .`      STR      r1,[r2,#0]
        0x0800245e:    bf00        ..      NOP      
        0x08002460:    bf00        ..      NOP      
        0x08002462:    bf00        ..      NOP      
        0x08002464:    4839        9H      LDR      r0,[pc,#228] ; [0x800254c] = 0x40022000
        0x08002466:    6800        .h      LDR      r0,[r0,#0]
        0x08002468:    f0000007    ....    AND      r0,r0,#7
        0x0800246c:    2802        .(      CMP      r0,#2
        0x0800246e:    d1f8        ..      BNE      0x8002462 ; SystemClock_Config + 22
        0x08002470:    bf00        ..      NOP      
        0x08002472:    4837        7H      LDR      r0,[pc,#220] ; [0x8002550] = 0x40021000
        0x08002474:    6800        .h      LDR      r0,[r0,#0]
        0x08002476:    f4403080    @..0    ORR      r0,r0,#0x10000
        0x0800247a:    4935        5I      LDR      r1,[pc,#212] ; [0x8002550] = 0x40021000
        0x0800247c:    6008        .`      STR      r0,[r1,#0]
        0x0800247e:    bf00        ..      NOP      
        0x08002480:    bf00        ..      NOP      
        0x08002482:    bf00        ..      NOP      
        0x08002484:    4832        2H      LDR      r0,[pc,#200] ; [0x8002550] = 0x40021000
        0x08002486:    6800        .h      LDR      r0,[r0,#0]
        0x08002488:    f3c04040    ..@@    UBFX     r0,r0,#17,#1
        0x0800248c:    2800        .(      CMP      r0,#0
        0x0800248e:    d0f8        ..      BEQ      0x8002482 ; SystemClock_Config + 54
        0x08002490:    f44f3080    O..0    MOV      r0,#0x10000
        0x08002494:    f44f11e0    O...    MOV      r1,#0x1c0000
        0x08002498:    4a2d        -J      LDR      r2,[pc,#180] ; [0x8002550] = 0x40021000
        0x0800249a:    6852        Rh      LDR      r2,[r2,#4]
        0x0800249c:    f4221274    ".t.    BIC      r2,r2,#0x3d0000
        0x080024a0:    f4003380    ...3    AND      r3,r0,#0x10000
        0x080024a4:    430b        .C      ORRS     r3,r3,r1
        0x080024a6:    431a        .C      ORRS     r2,r2,r3
        0x080024a8:    4b29        )K      LDR      r3,[pc,#164] ; [0x8002550] = 0x40021000
        0x080024aa:    605a        Z`      STR      r2,[r3,#4]
        0x080024ac:    461a        .F      MOV      r2,r3
        0x080024ae:    6ad2        .j      LDR      r2,[r2,#0x2c]
        0x080024b0:    f3600203    `...    BFI      r2,r0,#0,#4
        0x080024b4:    62da        .b      STR      r2,[r3,#0x2c]
        0x080024b6:    bf00        ..      NOP      
        0x080024b8:    bf00        ..      NOP      
        0x080024ba:    4618        .F      MOV      r0,r3
        0x080024bc:    6800        .h      LDR      r0,[r0,#0]
        0x080024be:    f0407080    @..p    ORR      r0,r0,#0x1000000
        0x080024c2:    4619        .F      MOV      r1,r3
        0x080024c4:    6008        .`      STR      r0,[r1,#0]
        0x080024c6:    bf00        ..      NOP      
        0x080024c8:    bf00        ..      NOP      
        0x080024ca:    bf00        ..      NOP      
        0x080024cc:    4820         H      LDR      r0,[pc,#128] ; [0x8002550] = 0x40021000
        0x080024ce:    6800        .h      LDR      r0,[r0,#0]
        0x080024d0:    f3c06040    ..@`    UBFX     r0,r0,#25,#1
        0x080024d4:    2800        .(      CMP      r0,#0
        0x080024d6:    d0f8        ..      BEQ      0x80024ca ; SystemClock_Config + 126
        0x080024d8:    2000        .       MOVS     r0,#0
        0x080024da:    491d        .I      LDR      r1,[pc,#116] ; [0x8002550] = 0x40021000
        0x080024dc:    6849        Ih      LDR      r1,[r1,#4]
        0x080024de:    f02101f0    !...    BIC      r1,r1,#0xf0
        0x080024e2:    4301        .C      ORRS     r1,r1,r0
        0x080024e4:    4a1a        .J      LDR      r2,[pc,#104] ; [0x8002550] = 0x40021000
        0x080024e6:    6051        Q`      STR      r1,[r2,#4]
        0x080024e8:    bf00        ..      NOP      
        0x080024ea:    1510        ..      ASRS     r0,r2,#20
        0x080024ec:    4611        .F      MOV      r1,r2
        0x080024ee:    6849        Ih      LDR      r1,[r1,#4]
        0x080024f0:    f42161e0    !..a    BIC      r1,r1,#0x700
        0x080024f4:    4301        .C      ORRS     r1,r1,r0
        0x080024f6:    6051        Q`      STR      r1,[r2,#4]
        0x080024f8:    bf00        ..      NOP      
        0x080024fa:    2000        .       MOVS     r0,#0
        0x080024fc:    4611        .F      MOV      r1,r2
        0x080024fe:    6849        Ih      LDR      r1,[r1,#4]
        0x08002500:    f4215160    !.`Q    BIC      r1,r1,#0x3800
        0x08002504:    4301        .C      ORRS     r1,r1,r0
        0x08002506:    6051        Q`      STR      r1,[r2,#4]
        0x08002508:    bf00        ..      NOP      
        0x0800250a:    2002        .       MOVS     r0,#2
        0x0800250c:    4611        .F      MOV      r1,r2
        0x0800250e:    6849        Ih      LDR      r1,[r1,#4]
        0x08002510:    f0210103    !...    BIC      r1,r1,#3
        0x08002514:    4301        .C      ORRS     r1,r1,r0
        0x08002516:    6051        Q`      STR      r1,[r2,#4]
        0x08002518:    bf00        ..      NOP      
        0x0800251a:    bf00        ..      NOP      
        0x0800251c:    bf00        ..      NOP      
        0x0800251e:    480c        .H      LDR      r0,[pc,#48] ; [0x8002550] = 0x40021000
        0x08002520:    6840        @h      LDR      r0,[r0,#4]
        0x08002522:    f000000c    ....    AND      r0,r0,#0xc
        0x08002526:    2808        .(      CMP      r0,#8
        0x08002528:    d1f8        ..      BNE      0x800251c ; SystemClock_Config + 208
        0x0800252a:    480a        .H      LDR      r0,[pc,#40] ; [0x8002554] = 0x44aa200
        0x0800252c:    f7fff8a4    ....    BL       LL_SetSystemCoreClock ; 0x8001678
        0x08002530:    2000        .       MOVS     r0,#0
        0x08002532:    f7fef981    ....    BL       HAL_InitTick ; 0x8000838
        0x08002536:    b108        ..      CBZ      r0,0x800253c ; SystemClock_Config + 240
        0x08002538:    f7fdffc9    ....    BL       Error_Handler ; 0x80004ce
        0x0800253c:    4806        .H      LDR      r0,[pc,#24] ; [0x8002558] = 0x1f00100
        0x0800253e:    f7fff879    ..y.    BL       LL_RCC_SetADCClockSource ; 0x8001634
        0x08002542:    4806        .H      LDR      r0,[pc,#24] ; [0x800255c] = 0x3e002000
        0x08002544:    f7fff876    ..v.    BL       LL_RCC_SetADCClockSource ; 0x8001634
        0x08002548:    bd10        ..      POP      {r4,pc}
    $d
        0x0800254a:    0000        ..      DCW    0
        0x0800254c:    40022000    . .@    DCD    1073881088
        0x08002550:    40021000    ...@    DCD    1073876992
        0x08002554:    044aa200    ..J.    DCD    72000000
        0x08002558:    01f00100    ....    DCD    32506112
        0x0800255c:    3e002000    . .>    DCD    1040195584
    $t
    i.SystemInit
    SystemInit
        0x08002560:    4803        .H      LDR      r0,[pc,#12] ; [0x8002570] = 0xe000ed88
        0x08002562:    6800        .h      LDR      r0,[r0,#0]
        0x08002564:    f4400070    @.p.    ORR      r0,r0,#0xf00000
        0x08002568:    4901        .I      LDR      r1,[pc,#4] ; [0x8002570] = 0xe000ed88
        0x0800256a:    6008        .`      STR      r0,[r1,#0]
        0x0800256c:    4770        pG      BX       lr
    $d
        0x0800256e:    0000        ..      DCW    0
        0x08002570:    e000ed88    ....    DCD    3758157192
    $t
    i.TIM4_IRQHandler
    TIM4_IRQHandler
        0x08002574:    b510        ..      PUSH     {r4,lr}
        0x08002576:    bf00        ..      NOP      
        0x08002578:    f06f0002    o...    MVN      r0,#2
        0x0800257c:    4902        .I      LDR      r1,[pc,#8] ; [0x8002588] = 0x40000800
        0x0800257e:    6108        .a      STR      r0,[r1,#0x10]
        0x08002580:    bf00        ..      NOP      
        0x08002582:    f7fff87f    ....    BL       LL_TIM_IC_CaptureCallback ; 0x8001684
        0x08002586:    bd10        ..      POP      {r4,pc}
    $d
        0x08002588:    40000800    ...@    DCD    1073743872
    $t
    i.TIM_Base_SetConfig
    TIM_Base_SetConfig
        0x0800258c:    e92d01f0    -...    PUSH     {r4-r8}
        0x08002590:    6802        .h      LDR      r2,[r0,#0]
        0x08002592:    4c23        #L      LDR      r4,[pc,#140] ; [0x8002620] = 0x40012c00
        0x08002594:    4b23        #K      LDR      r3,[pc,#140] ; [0x8002624] = 0x40000400
        0x08002596:    f8df8090    ....    LDR      r8,[pc,#144] ; [0x8002628] = 0x40000800
        0x0800259a:    f8dfc090    ....    LDR      r12,[pc,#144] ; [0x800262c] = 0x40013400
        0x0800259e:    42a0        .B      CMP      r0,r4
        0x080025a0:    d008        ..      BEQ      0x80025b4 ; TIM_Base_SetConfig + 40
        0x080025a2:    f1b04f80    ...O    CMP      r0,#0x40000000
        0x080025a6:    d005        ..      BEQ      0x80025b4 ; TIM_Base_SetConfig + 40
        0x080025a8:    4298        .B      CMP      r0,r3
        0x080025aa:    d003        ..      BEQ      0x80025b4 ; TIM_Base_SetConfig + 40
        0x080025ac:    4540        @E      CMP      r0,r8
        0x080025ae:    d001        ..      BEQ      0x80025b4 ; TIM_Base_SetConfig + 40
        0x080025b0:    4560        `E      CMP      r0,r12
        0x080025b2:    d103        ..      BNE      0x80025bc ; TIM_Base_SetConfig + 48
        0x080025b4:    f0220270    ".p.    BIC      r2,r2,#0x70
        0x080025b8:    684d        Mh      LDR      r5,[r1,#4]
        0x080025ba:    432a        *C      ORRS     r2,r2,r5
        0x080025bc:    4d1c        .M      LDR      r5,[pc,#112] ; [0x8002630] = 0x40014000
        0x080025be:    4e1d        .N      LDR      r6,[pc,#116] ; [0x8002634] = 0x40014400
        0x080025c0:    4f1d        .O      LDR      r7,[pc,#116] ; [0x8002638] = 0x40014800
        0x080025c2:    42a0        .B      CMP      r0,r4
        0x080025c4:    d00e        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025c6:    f1b04f80    ...O    CMP      r0,#0x40000000
        0x080025ca:    d00b        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025cc:    4298        .B      CMP      r0,r3
        0x080025ce:    d009        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025d0:    4540        @E      CMP      r0,r8
        0x080025d2:    d007        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025d4:    4560        `E      CMP      r0,r12
        0x080025d6:    d005        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025d8:    42a8        .B      CMP      r0,r5
        0x080025da:    d003        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025dc:    42b0        .B      CMP      r0,r6
        0x080025de:    d001        ..      BEQ      0x80025e4 ; TIM_Base_SetConfig + 88
        0x080025e0:    42b8        .B      CMP      r0,r7
        0x080025e2:    d103        ..      BNE      0x80025ec ; TIM_Base_SetConfig + 96
        0x080025e4:    f4227240    ".@r    BIC      r2,r2,#0x300
        0x080025e8:    68cb        .h      LDR      r3,[r1,#0xc]
        0x080025ea:    431a        .C      ORRS     r2,r2,r3
        0x080025ec:    694b        Ki      LDR      r3,[r1,#0x14]
        0x080025ee:    f0220280    "...    BIC      r2,r2,#0x80
        0x080025f2:    431a        .C      ORRS     r2,r2,r3
        0x080025f4:    6002        .`      STR      r2,[r0,#0]
        0x080025f6:    688a        .h      LDR      r2,[r1,#8]
        0x080025f8:    62c2        .b      STR      r2,[r0,#0x2c]
        0x080025fa:    680a        .h      LDR      r2,[r1,#0]
        0x080025fc:    6282        .b      STR      r2,[r0,#0x28]
        0x080025fe:    42a0        .B      CMP      r0,r4
        0x08002600:    d007        ..      BEQ      0x8002612 ; TIM_Base_SetConfig + 134
        0x08002602:    4560        `E      CMP      r0,r12
        0x08002604:    d005        ..      BEQ      0x8002612 ; TIM_Base_SetConfig + 134
        0x08002606:    42a8        .B      CMP      r0,r5
        0x08002608:    d003        ..      BEQ      0x8002612 ; TIM_Base_SetConfig + 134
        0x0800260a:    42b0        .B      CMP      r0,r6
        0x0800260c:    d001        ..      BEQ      0x8002612 ; TIM_Base_SetConfig + 134
        0x0800260e:    42b8        .B      CMP      r0,r7
        0x08002610:    d101        ..      BNE      0x8002616 ; TIM_Base_SetConfig + 138
        0x08002612:    6909        .i      LDR      r1,[r1,#0x10]
        0x08002614:    6301        .c      STR      r1,[r0,#0x30]
        0x08002616:    2101        .!      MOVS     r1,#1
        0x08002618:    6141        Aa      STR      r1,[r0,#0x14]
        0x0800261a:    e8bd01f0    ....    POP      {r4-r8}
        0x0800261e:    4770        pG      BX       lr
    $d
        0x08002620:    40012c00    .,.@    DCD    1073818624
        0x08002624:    40000400    ...@    DCD    1073742848
        0x08002628:    40000800    ...@    DCD    1073743872
        0x0800262c:    40013400    .4.@    DCD    1073820672
        0x08002630:    40014000    .@.@    DCD    1073823744
        0x08002634:    40014400    .D.@    DCD    1073824768
        0x08002638:    40014800    .H.@    DCD    1073825792
    $t
    i.TIM_ETR_SetConfig
    TIM_ETR_SetConfig
        0x0800263c:    f8d0c008    ....    LDR      r12,[r0,#8]
        0x08002640:    f42c4c7f    ,..L    BIC      r12,r12,#0xff00
        0x08002644:    ea422203    B.."    ORR      r2,r2,r3,LSL #8
        0x08002648:    4311        .C      ORRS     r1,r1,r2
        0x0800264a:    ea41010c    A...    ORR      r1,r1,r12
        0x0800264e:    6081        .`      STR      r1,[r0,#8]
        0x08002650:    4770        pG      BX       lr
    i.TIM_ITRx_SetConfig
    TIM_ITRx_SetConfig
        0x08002652:    6882        .h      LDR      r2,[r0,#8]
        0x08002654:    f0220270    ".p.    BIC      r2,r2,#0x70
        0x08002658:    4311        .C      ORRS     r1,r1,r2
        0x0800265a:    f0410107    A...    ORR      r1,r1,#7
        0x0800265e:    6081        .`      STR      r1,[r0,#8]
        0x08002660:    4770        pG      BX       lr
    i.TIM_TI1_ConfigInputStage
    TIM_TI1_ConfigInputStage
        0x08002662:    6a03        .j      LDR      r3,[r0,#0x20]
        0x08002664:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x08002668:    f02c0c01    ,...    BIC      r12,r12,#1
        0x0800266c:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x08002670:    f8d0c018    ....    LDR      r12,[r0,#0x18]
        0x08002674:    f02c0cf0    ,...    BIC      r12,r12,#0xf0
        0x08002678:    ea4c1202    L...    ORR      r2,r12,r2,LSL #4
        0x0800267c:    f023030a    #...    BIC      r3,r3,#0xa
        0x08002680:    4319        .C      ORRS     r1,r1,r3
        0x08002682:    6182        .a      STR      r2,[r0,#0x18]
        0x08002684:    6201        .b      STR      r1,[r0,#0x20]
        0x08002686:    4770        pG      BX       lr
    i.TIM_TI1_SetConfig
    TIM_TI1_SetConfig
        0x08002688:    b430        0.      PUSH     {r4,r5}
        0x0800268a:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x0800268e:    f02c0c01    ,...    BIC      r12,r12,#1
        0x08002692:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x08002696:    f8d0c018    ....    LDR      r12,[r0,#0x18]
        0x0800269a:    6a04        .j      LDR      r4,[r0,#0x20]
        0x0800269c:    f1a04580    ...E    SUB      r5,r0,#0x40000000
        0x080026a0:    f5b53596    ...5    SUBS     r5,r5,#0x12c00
        0x080026a4:    d028        (.      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026a6:    f1b04f80    ...O    CMP      r0,#0x40000000
        0x080026aa:    d025        %.      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026ac:    f1a04580    ...E    SUB      r5,r0,#0x40000000
        0x080026b0:    f5b56580    ...e    SUBS     r5,r5,#0x400
        0x080026b4:    d020         .      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026b6:    f1a04580    ...E    SUB      r5,r0,#0x40000000
        0x080026ba:    f5b56500    ...e    SUBS     r5,r5,#0x800
        0x080026be:    d01b        ..      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026c0:    f1a04580    ...E    SUB      r5,r0,#0x40000000
        0x080026c4:    f5b5359a    ...5    SUBS     r5,r5,#0x13400
        0x080026c8:    d016        ..      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026ca:    f1a04580    ...E    SUB      r5,r0,#0x40000000
        0x080026ce:    f5b535a0    ...5    SUBS     r5,r5,#0x14000
        0x080026d2:    d011        ..      BEQ      0x80026f8 ; TIM_TI1_SetConfig + 112
        0x080026d4:    f04c0201    L...    ORR      r2,r12,#1
        0x080026d8:    f02202f0    "...    BIC      r2,r2,#0xf0
        0x080026dc:    f04f0cf0    O...    MOV      r12,#0xf0
        0x080026e0:    ea0c1303    ....    AND      r3,r12,r3,LSL #4
        0x080026e4:    431a        .C      ORRS     r2,r2,r3
        0x080026e6:    f024030a    $...    BIC      r3,r4,#0xa
        0x080026ea:    f001010a    ....    AND      r1,r1,#0xa
        0x080026ee:    4319        .C      ORRS     r1,r1,r3
        0x080026f0:    6182        .a      STR      r2,[r0,#0x18]
        0x080026f2:    6201        .b      STR      r1,[r0,#0x20]
        0x080026f4:    bc30        0.      POP      {r4,r5}
        0x080026f6:    4770        pG      BX       lr
        0x080026f8:    f02c0c03    ,...    BIC      r12,r12,#3
        0x080026fc:    ea4c0202    L...    ORR      r2,r12,r2
        0x08002700:    e7ea        ..      B        0x80026d8 ; TIM_TI1_SetConfig + 80
    i.TIM_TI2_ConfigInputStage
    TIM_TI2_ConfigInputStage
        0x08002702:    6a03        .j      LDR      r3,[r0,#0x20]
        0x08002704:    f0230310    #...    BIC      r3,r3,#0x10
        0x08002708:    6203        .b      STR      r3,[r0,#0x20]
        0x0800270a:    f8d0c018    ....    LDR      r12,[r0,#0x18]
        0x0800270e:    6a03        .j      LDR      r3,[r0,#0x20]
        0x08002710:    f42c4c70    ,.pL    BIC      r12,r12,#0xf000
        0x08002714:    ea4c3202    L..2    ORR      r2,r12,r2,LSL #12
        0x08002718:    f02303a0    #...    BIC      r3,r3,#0xa0
        0x0800271c:    ea431101    C...    ORR      r1,r3,r1,LSL #4
        0x08002720:    6182        .a      STR      r2,[r0,#0x18]
        0x08002722:    6201        .b      STR      r1,[r0,#0x20]
        0x08002724:    4770        pG      BX       lr
    i.TIM_TI2_SetConfig
    TIM_TI2_SetConfig
        0x08002726:    b410        ..      PUSH     {r4}
        0x08002728:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x0800272c:    f02c0c10    ,...    BIC      r12,r12,#0x10
        0x08002730:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x08002734:    6984        .i      LDR      r4,[r0,#0x18]
        0x08002736:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x0800273a:    f4247440    $.@t    BIC      r4,r4,#0x300
        0x0800273e:    ea442202    D.."    ORR      r2,r4,r2,LSL #8
        0x08002742:    f4224270    ".pB    BIC      r2,r2,#0xf000
        0x08002746:    f44f4470    O.pD    MOV      r4,#0xf000
        0x0800274a:    ea043303    ...3    AND      r3,r4,r3,LSL #12
        0x0800274e:    431a        .C      ORRS     r2,r2,r3
        0x08002750:    f02c03a0    ,...    BIC      r3,r12,#0xa0
        0x08002754:    f04f0ca0    O...    MOV      r12,#0xa0
        0x08002758:    ea0c1101    ....    AND      r1,r12,r1,LSL #4
        0x0800275c:    4319        .C      ORRS     r1,r1,r3
        0x0800275e:    6182        .a      STR      r2,[r0,#0x18]
        0x08002760:    6201        .b      STR      r1,[r0,#0x20]
        0x08002762:    bc10        ..      POP      {r4}
        0x08002764:    4770        pG      BX       lr
    i.TIM_TI3_SetConfig
    TIM_TI3_SetConfig
        0x08002766:    b410        ..      PUSH     {r4}
        0x08002768:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x0800276c:    f42c7c80    ,..|    BIC      r12,r12,#0x100
        0x08002770:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x08002774:    69c4        .i      LDR      r4,[r0,#0x1c]
        0x08002776:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x0800277a:    f0240403    $...    BIC      r4,r4,#3
        0x0800277e:    4322        "C      ORRS     r2,r2,r4
        0x08002780:    f02202f0    "...    BIC      r2,r2,#0xf0
        0x08002784:    24f0        .$      MOVS     r4,#0xf0
        0x08002786:    ea041303    ....    AND      r3,r4,r3,LSL #4
        0x0800278a:    431a        .C      ORRS     r2,r2,r3
        0x0800278c:    f42c6320    ,. c    BIC      r3,r12,#0xa00
        0x08002790:    f44f6c20    O. l    MOV      r12,#0xa00
        0x08002794:    ea0c2101    ...!    AND      r1,r12,r1,LSL #8
        0x08002798:    4319        .C      ORRS     r1,r1,r3
        0x0800279a:    61c2        .a      STR      r2,[r0,#0x1c]
        0x0800279c:    6201        .b      STR      r1,[r0,#0x20]
        0x0800279e:    bc10        ..      POP      {r4}
        0x080027a0:    4770        pG      BX       lr
    i.TIM_TI4_SetConfig
    TIM_TI4_SetConfig
        0x080027a2:    b410        ..      PUSH     {r4}
        0x080027a4:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x080027a8:    f42c5c80    ,..\    BIC      r12,r12,#0x1000
        0x080027ac:    f8c0c020    .. .    STR      r12,[r0,#0x20]
        0x080027b0:    69c4        .i      LDR      r4,[r0,#0x1c]
        0x080027b2:    f8d0c020    .. .    LDR      r12,[r0,#0x20]
        0x080027b6:    f4247440    $.@t    BIC      r4,r4,#0x300
        0x080027ba:    ea442202    D.."    ORR      r2,r4,r2,LSL #8
        0x080027be:    f4224270    ".pB    BIC      r2,r2,#0xf000
        0x080027c2:    f44f4470    O.pD    MOV      r4,#0xf000
        0x080027c6:    ea043303    ...3    AND      r3,r4,r3,LSL #12
        0x080027ca:    431a        .C      ORRS     r2,r2,r3
        0x080027cc:    f42c4320    ,. C    BIC      r3,r12,#0xa000
        0x080027d0:    f44f4c20    O. L    MOV      r12,#0xa000
        0x080027d4:    ea0c3101    ...1    AND      r1,r12,r1,LSL #12
        0x080027d8:    4319        .C      ORRS     r1,r1,r3
        0x080027da:    61c2        .a      STR      r2,[r0,#0x1c]
        0x080027dc:    6201        .b      STR      r1,[r0,#0x20]
        0x080027de:    bc10        ..      POP      {r4}
        0x080027e0:    4770        pG      BX       lr
        0x080027e2:    0000        ..      MOVS     r0,r0
    i.USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO
    USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO
        0x080027e4:    e92d4ffc    -..O    PUSH     {r2-r11,lr}
        0x080027e8:    4605        .F      MOV      r5,r0
        0x080027ea:    460e        .F      MOV      r6,r1
        0x080027ec:    4617        .F      MOV      r7,r2
        0x080027ee:    2000        .       MOVS     r0,#0
        0x080027f0:    9001        ..      STR      r0,[sp,#4]
        0x080027f2:    9500        ..      STR      r5,[sp,#0]
        0x080027f4:    2400        .$      MOVS     r4,#0
        0x080027f6:    4682        .F      MOV      r10,r0
        0x080027f8:    9800        ..      LDR      r0,[sp,#0]
        0x080027fa:    0f80        ..      LSRS     r0,r0,#30
        0x080027fc:    bb50        P.      CBNZ     r0,0x8002854 ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 112
        0x080027fe:    9800        ..      LDR      r0,[sp,#0]
        0x08002800:    f3c02c89    ...,    UBFX     r12,r0,#10,#10
        0x08002804:    9800        ..      LDR      r0,[sp,#0]
        0x08002806:    f3c00809    ....    UBFX     r8,r0,#0,#10
        0x0800280a:    2100        .!      MOVS     r1,#0
        0x0800280c:    e01f        ..      B        0x800284e ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 106
        0x0800280e:    f04f0900    O...    MOV      r9,#0
        0x08002812:    46cb        .F      MOV      r11,r9
        0x08002814:    4815        .H      LDR      r0,[pc,#84] ; [0x800286c] = 0x200001b8
        0x08002816:    f8500021    P.!.    LDR      r0,[r0,r1,LSL #2]
        0x0800281a:    f3c02289    ..."    UBFX     r2,r0,#10,#10
        0x0800281e:    4813        .H      LDR      r0,[pc,#76] ; [0x800286c] = 0x200001b8
        0x08002820:    f8300021    0.!.    LDRH     r0,[r0,r1,LSL #2]
        0x08002824:    f3c00309    ....    UBFX     r3,r0,#0,#10
        0x08002828:    4562        bE      CMP      r2,r12
        0x0800282a:    d108        ..      BNE      0x800283e ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 90
        0x0800282c:    4543        CE      CMP      r3,r8
        0x0800282e:    dc06        ..      BGT      0x800283e ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 90
        0x08002830:    fb02f003    ....    MUL      r0,r2,r3
        0x08002834:    eb007ed0    ...~    ADD      lr,r0,r0,LSR #31
        0x08002838:    ea4f096e    O.n.    ASR      r9,lr,#1
        0x0800283c:    4693        .F      MOV      r11,r2
        0x0800283e:    45a1        .E      CMP      r9,r4
        0x08002840:    d903        ..      BLS      0x800284a ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 102
        0x08002842:    2001        .       MOVS     r0,#1
        0x08002844:    9001        ..      STR      r0,[sp,#4]
        0x08002846:    464c        LF      MOV      r4,r9
        0x08002848:    46da        .F      MOV      r10,r11
        0x0800284a:    1c48        H.      ADDS     r0,r1,#1
        0x0800284c:    b281        ..      UXTH     r1,r0
        0x0800284e:    2902        .)      CMP      r1,#2
        0x08002850:    dbdd        ..      BLT      0x800280e ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 42
        0x08002852:    e002        ..      B        0x800285a ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 118
        0x08002854:    2000        .       MOVS     r0,#0
        0x08002856:    e8bd8ffc    ....    POP      {r2-r11,pc}
        0x0800285a:    b124        $.      CBZ      r4,0x8002866 ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 130
        0x0800285c:    603c        <`      STR      r4,[r7,#0]
        0x0800285e:    2032        2       MOVS     r0,#0x32
        0x08002860:    fb0af000    ....    MUL      r0,r10,r0
        0x08002864:    6030        0`      STR      r0,[r6,#0]
        0x08002866:    9801        ..      LDR      r0,[sp,#4]
        0x08002868:    e7f5        ..      B        0x8002856 ; USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO + 114
    $d
        0x0800286a:    0000        ..      DCW    0
        0x0800286c:    200001b8    ...     DCD    536871352
    $t
    i.USBPD_DisableDecoder
    USBPD_DisableDecoder
        0x08002870:    bf00        ..      NOP      
        0x08002872:    4806        .H      LDR      r0,[pc,#24] ; [0x800288c] = 0x40000800
        0x08002874:    68c0        .h      LDR      r0,[r0,#0xc]
        0x08002876:    f0200002     ...    BIC      r0,r0,#2
        0x0800287a:    4904        .I      LDR      r1,[pc,#16] ; [0x800288c] = 0x40000800
        0x0800287c:    60c8        .`      STR      r0,[r1,#0xc]
        0x0800287e:    bf00        ..      NOP      
        0x08002880:    bf00        ..      NOP      
        0x08002882:    f06f0002    o...    MVN      r0,#2
        0x08002886:    6108        .a      STR      r0,[r1,#0x10]
        0x08002888:    bf00        ..      NOP      
        0x0800288a:    4770        pG      BX       lr
    $d
        0x0800288c:    40000800    ...@    DCD    1073743872
    $t
    i.USBPD_EnableDecoder
    USBPD_EnableDecoder
        0x08002890:    bf00        ..      NOP      
        0x08002892:    f06f0002    o...    MVN      r0,#2
        0x08002896:    4905        .I      LDR      r1,[pc,#20] ; [0x80028ac] = 0x40000400
        0x08002898:    6108        .a      STR      r0,[r1,#0x10]
        0x0800289a:    bf00        ..      NOP      
        0x0800289c:    bf00        ..      NOP      
        0x0800289e:    4608        .F      MOV      r0,r1
        0x080028a0:    68c0        .h      LDR      r0,[r0,#0xc]
        0x080028a2:    f0400002    @...    ORR      r0,r0,#2
        0x080028a6:    60c8        .`      STR      r0,[r1,#0xc]
        0x080028a8:    bf00        ..      NOP      
        0x080028aa:    4770        pG      BX       lr
    $d
        0x080028ac:    40000400    ...@    DCD    1073742848
    $t
    i.USBPD_GetMessage
    USBPD_GetMessage
        0x080028b0:    b530        0.      PUSH     {r4,r5,lr}
        0x080028b2:    4602        .F      MOV      r2,r0
        0x080028b4:    7a10        .z      LDRB     r0,[r2,#8]
        0x080028b6:    7008        .p      STRB     r0,[r1,#0]
        0x080028b8:    7808        .x      LDRB     r0,[r1,#0]
        0x080028ba:    bb70        p.      CBNZ     r0,0x800291a ; USBPD_GetMessage + 106
        0x080028bc:    7c13        .|      LDRB     r3,[r2,#0x10]
        0x080028be:    7c50        P|      LDRB     r0,[r2,#0x11]
        0x080028c0:    ea432000    C..     ORR      r0,r3,r0,LSL #8
        0x080028c4:    8088        ..      STRH     r0,[r1,#4]
        0x080028c6:    2000        .       MOVS     r0,#0
        0x080028c8:    e022        ".      B        0x8002910 ; USBPD_GetMessage + 96
        0x080028ca:    2302        .#      MOVS     r3,#2
        0x080028cc:    eb030480    ....    ADD      r4,r3,r0,LSL #2
        0x080028d0:    f1020310    ....    ADD      r3,r2,#0x10
        0x080028d4:    5d1c        .]      LDRB     r4,[r3,r4]
        0x080028d6:    2303        .#      MOVS     r3,#3
        0x080028d8:    eb030580    ....    ADD      r5,r3,r0,LSL #2
        0x080028dc:    f1020310    ....    ADD      r3,r2,#0x10
        0x080028e0:    5d5b        []      LDRB     r3,[r3,r5]
        0x080028e2:    ea442403    D..$    ORR      r4,r4,r3,LSL #8
        0x080028e6:    2303        .#      MOVS     r3,#3
        0x080028e8:    eb030580    ....    ADD      r5,r3,r0,LSL #2
        0x080028ec:    f1020310    ....    ADD      r3,r2,#0x10
        0x080028f0:    5d5b        []      LDRB     r3,[r3,r5]
        0x080028f2:    ea444403    D..D    ORR      r4,r4,r3,LSL #16
        0x080028f6:    2303        .#      MOVS     r3,#3
        0x080028f8:    eb030580    ....    ADD      r5,r3,r0,LSL #2
        0x080028fc:    f1020310    ....    ADD      r3,r2,#0x10
        0x08002900:    5d5b        []      LDRB     r3,[r3,r5]
        0x08002902:    ea446403    D..d    ORR      r4,r4,r3,LSL #24
        0x08002906:    f1010308    ....    ADD      r3,r1,#8
        0x0800290a:    f8434020    C. @    STR      r4,[r3,r0,LSL #2]
        0x0800290e:    1c40        @.      ADDS     r0,r0,#1
        0x08002910:    888b        ..      LDRH     r3,[r1,#4]
        0x08002912:    f3c33302    ...3    UBFX     r3,r3,#12,#3
        0x08002916:    4283        .B      CMP      r3,r0
        0x08002918:    d8d7        ..      BHI      0x80028ca ; USBPD_GetMessage + 26
        0x0800291a:    bd30        0.      POP      {r4,r5,pc}
    i.USBPD_GetReceivedMsgType
    USBPD_GetReceivedMsgType
        0x0800291c:    b510        ..      PUSH     {r4,lr}
        0x0800291e:    4601        .F      MOV      r1,r0
        0x08002920:    780a        .x      LDRB     r2,[r1,#0]
        0x08002922:    8888        ..      LDRH     r0,[r1,#4]
        0x08002924:    f3c03402    ...4    UBFX     r4,r0,#12,#3
        0x08002928:    7908        .y      LDRB     r0,[r1,#4]
        0x0800292a:    f000031f    ....    AND      r3,r0,#0x1f
        0x0800292e:    2a05        .*      CMP      r2,#5
        0x08002930:    d101        ..      BNE      0x8002936 ; USBPD_GetReceivedMsgType + 26
        0x08002932:    2001        .       MOVS     r0,#1
        0x08002934:    bd10        ..      POP      {r4,pc}
        0x08002936:    b9fa        ..      CBNZ     r2,0x8002978 ; USBPD_GetReceivedMsgType + 92
        0x08002938:    b9c4        ..      CBNZ     r4,0x800296c ; USBPD_GetReceivedMsgType + 80
        0x0800293a:    2b06        .+      CMP      r3,#6
        0x0800293c:    d010        ..      BEQ      0x8002960 ; USBPD_GetReceivedMsgType + 68
        0x0800293e:    dc04        ..      BGT      0x800294a ; USBPD_GetReceivedMsgType + 46
        0x08002940:    2b01        .+      CMP      r3,#1
        0x08002942:    d007        ..      BEQ      0x8002954 ; USBPD_GetReceivedMsgType + 56
        0x08002944:    2b03        .+      CMP      r3,#3
        0x08002946:    d10f        ..      BNE      0x8002968 ; USBPD_GetReceivedMsgType + 76
        0x08002948:    e00c        ..      B        0x8002964 ; USBPD_GetReceivedMsgType + 72
        0x0800294a:    2b08        .+      CMP      r3,#8
        0x0800294c:    d006        ..      BEQ      0x800295c ; USBPD_GetReceivedMsgType + 64
        0x0800294e:    2b0d        .+      CMP      r3,#0xd
        0x08002950:    d10a        ..      BNE      0x8002968 ; USBPD_GetReceivedMsgType + 76
        0x08002952:    e001        ..      B        0x8002958 ; USBPD_GetReceivedMsgType + 60
        0x08002954:    2003        .       MOVS     r0,#3
        0x08002956:    e7ed        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x08002958:    2002        .       MOVS     r0,#2
        0x0800295a:    e7eb        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x0800295c:    2004        .       MOVS     r0,#4
        0x0800295e:    e7e9        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x08002960:    2008        .       MOVS     r0,#8
        0x08002962:    e7e7        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x08002964:    2005        .       MOVS     r0,#5
        0x08002966:    e7e5        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x08002968:    bf00        ..      NOP      
        0x0800296a:    e005        ..      B        0x8002978 ; USBPD_GetReceivedMsgType + 92
        0x0800296c:    2b01        .+      CMP      r3,#1
        0x0800296e:    d101        ..      BNE      0x8002974 ; USBPD_GetReceivedMsgType + 88
        0x08002970:    2009        .       MOVS     r0,#9
        0x08002972:    e7df        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
        0x08002974:    bf00        ..      NOP      
        0x08002976:    bf00        ..      NOP      
        0x08002978:    2000        .       MOVS     r0,#0
        0x0800297a:    e7db        ..      B        0x8002934 ; USBPD_GetReceivedMsgType + 24
    i.USBPD_IncreaseTransMsgID
    USBPD_IncreaseTransMsgID
        0x0800297c:    4806        .H      LDR      r0,[pc,#24] ; [0x8002998] = 0x200001c4
        0x0800297e:    7800        .x      LDRB     r0,[r0,#0]
        0x08002980:    2807        .(      CMP      r0,#7
        0x08002982:    d103        ..      BNE      0x800298c ; USBPD_IncreaseTransMsgID + 16
        0x08002984:    2000        .       MOVS     r0,#0
        0x08002986:    4904        .I      LDR      r1,[pc,#16] ; [0x8002998] = 0x200001c4
        0x08002988:    7008        .p      STRB     r0,[r1,#0]
        0x0800298a:    e004        ..      B        0x8002996 ; USBPD_IncreaseTransMsgID + 26
        0x0800298c:    4802        .H      LDR      r0,[pc,#8] ; [0x8002998] = 0x200001c4
        0x0800298e:    7800        .x      LDRB     r0,[r0,#0]
        0x08002990:    1c40        @.      ADDS     r0,r0,#1
        0x08002992:    4901        .I      LDR      r1,[pc,#4] ; [0x8002998] = 0x200001c4
        0x08002994:    7008        .p      STRB     r0,[r1,#0]
        0x08002996:    4770        pG      BX       lr
    $d
        0x08002998:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_PHY_4B5BEncode
    USBPD_PHY_4B5BEncode
        0x0800299c:    4601        .F      MOV      r1,r0
        0x0800299e:    2000        .       MOVS     r0,#0
        0x080029a0:    2910        .)      CMP      r1,#0x10
        0x080029a2:    d229        ).      BCS      0x80029f8 ; USBPD_PHY_4B5BEncode + 92
        0x080029a4:    e8dff001    ....    TBB      [pc,r1]
    $d
        0x080029a8:    0e0c0a08    ....    DCD    235670024
        0x080029ac:    16141210    ....    DCD    370414096
        0x080029b0:    1e1c1a18    ....    DCD    505158168
        0x080029b4:    26242220     "$&    DCD    639902240
    $t
        0x080029b8:    201e        .       MOVS     r0,#0x1e
        0x080029ba:    e01f        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029bc:    2009        .       MOVS     r0,#9
        0x080029be:    e01d        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029c0:    2014        .       MOVS     r0,#0x14
        0x080029c2:    e01b        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029c4:    2015        .       MOVS     r0,#0x15
        0x080029c6:    e019        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029c8:    200a        .       MOVS     r0,#0xa
        0x080029ca:    e017        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029cc:    200b        .       MOVS     r0,#0xb
        0x080029ce:    e015        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029d0:    200e        .       MOVS     r0,#0xe
        0x080029d2:    e013        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029d4:    200f        .       MOVS     r0,#0xf
        0x080029d6:    e011        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029d8:    2012        .       MOVS     r0,#0x12
        0x080029da:    e00f        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029dc:    2013        .       MOVS     r0,#0x13
        0x080029de:    e00d        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029e0:    2016        .       MOVS     r0,#0x16
        0x080029e2:    e00b        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029e4:    2017        .       MOVS     r0,#0x17
        0x080029e6:    e009        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029e8:    201a        .       MOVS     r0,#0x1a
        0x080029ea:    e007        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029ec:    201b        .       MOVS     r0,#0x1b
        0x080029ee:    e005        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029f0:    201c        .       MOVS     r0,#0x1c
        0x080029f2:    e003        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029f4:    201d        .       MOVS     r0,#0x1d
        0x080029f6:    e001        ..      B        0x80029fc ; USBPD_PHY_4B5BEncode + 96
        0x080029f8:    201e        .       MOVS     r0,#0x1e
        0x080029fa:    bf00        ..      NOP      
        0x080029fc:    bf00        ..      NOP      
        0x080029fe:    4770        pG      BX       lr
    i.USBPD_PHY_5B4BDecode
    USBPD_PHY_5B4BDecode
        0x08002a00:    4601        .F      MOV      r1,r0
        0x08002a02:    2000        .       MOVS     r0,#0
        0x08002a04:    f1a10209    ....    SUB      r2,r1,#9
        0x08002a08:    2a16        .*      CMP      r2,#0x16
        0x08002a0a:    d22c        ,.      BCS      0x8002a66 ; USBPD_PHY_5B4BDecode + 102
        0x08002a0c:    e8dff002    ....    TBB      [pc,r2]
    $d
        0x08002a10:    2b15130d    ...+    DCD    722801421
        0x08002a14:    2b19172b    +..+    DCD    723064619
        0x08002a18:    0f1d1b2b    +...    DCD    253565739
        0x08002a1c:    2b211f11    ..!+    DCD    723590929
        0x08002a20:    2725232b    +#%'    DCD    656745259
        0x08002a24:    0b29        ).      DCW    2857
    $t
        0x08002a26:    2000        .       MOVS     r0,#0
        0x08002a28:    e01f        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a2a:    2001        .       MOVS     r0,#1
        0x08002a2c:    e01d        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a2e:    2002        .       MOVS     r0,#2
        0x08002a30:    e01b        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a32:    2003        .       MOVS     r0,#3
        0x08002a34:    e019        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a36:    2004        .       MOVS     r0,#4
        0x08002a38:    e017        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a3a:    2005        .       MOVS     r0,#5
        0x08002a3c:    e015        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a3e:    2006        .       MOVS     r0,#6
        0x08002a40:    e013        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a42:    2007        .       MOVS     r0,#7
        0x08002a44:    e011        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a46:    2008        .       MOVS     r0,#8
        0x08002a48:    e00f        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a4a:    2009        .       MOVS     r0,#9
        0x08002a4c:    e00d        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a4e:    200a        .       MOVS     r0,#0xa
        0x08002a50:    e00b        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a52:    200b        .       MOVS     r0,#0xb
        0x08002a54:    e009        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a56:    200c        .       MOVS     r0,#0xc
        0x08002a58:    e007        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a5a:    200d        .       MOVS     r0,#0xd
        0x08002a5c:    e005        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a5e:    200e        .       MOVS     r0,#0xe
        0x08002a60:    e003        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a62:    200f        .       MOVS     r0,#0xf
        0x08002a64:    e001        ..      B        0x8002a6a ; USBPD_PHY_5B4BDecode + 106
        0x08002a66:    2000        .       MOVS     r0,#0
        0x08002a68:    bf00        ..      NOP      
        0x08002a6a:    bf00        ..      NOP      
        0x08002a6c:    4770        pG      BX       lr
        0x08002a6e:    0000        ..      MOVS     r0,r0
    i.USBPD_PHY_BitRecognize
    USBPD_PHY_BitRecognize
        0x08002a70:    b5f0        ..      PUSH     {r4-r7,lr}
        0x08002a72:    4603        .F      MOV      r3,r0
        0x08002a74:    2400        .$      MOVS     r4,#0
        0x08002a76:    2000        .       MOVS     r0,#0
        0x08002a78:    e029        ).      B        0x8002ace ; USBPD_PHY_BitRecognize + 94
        0x08002a7a:    b9b4        ..      CBNZ     r4,0x8002aaa ; USBPD_PHY_BitRecognize + 58
        0x08002a7c:    f8535020    S. P    LDR      r5,[r3,r0,LSL #2]
        0x08002a80:    2d02        .-      CMP      r5,#2
        0x08002a82:    d101        ..      BNE      0x8002a88 ; USBPD_PHY_BitRecognize + 24
        0x08002a84:    2401        .$      MOVS     r4,#1
        0x08002a86:    e021        !.      B        0x8002acc ; USBPD_PHY_BitRecognize + 92
        0x08002a88:    f8535020    S. P    LDR      r5,[r3,r0,LSL #2]
        0x08002a8c:    2d03        .-      CMP      r5,#3
        0x08002a8e:    d10a        ..      BNE      0x8002aa6 ; USBPD_PHY_BitRecognize + 54
        0x08002a90:    2600        .&      MOVS     r6,#0
        0x08002a92:    4d14        .M      LDR      r5,[pc,#80] ; [0x8002ae4] = 0x2000001c
        0x08002a94:    682f        /h      LDR      r7,[r5,#0]
        0x08002a96:    682d        -h      LDR      r5,[r5,#0]
        0x08002a98:    1c6d        m.      ADDS     r5,r5,#1
        0x08002a9a:    f8dfc048    ..H.    LDR      r12,[pc,#72] ; [0x8002ae4] = 0x2000001c
        0x08002a9e:    f8cc5000    ...P    STR      r5,[r12,#0]
        0x08002aa2:    55d6        .U      STRB     r6,[r2,r7]
        0x08002aa4:    e012        ..      B        0x8002acc ; USBPD_PHY_BitRecognize + 92
        0x08002aa6:    2400        .$      MOVS     r4,#0
        0x08002aa8:    e010        ..      B        0x8002acc ; USBPD_PHY_BitRecognize + 92
        0x08002aaa:    f8535020    S. P    LDR      r5,[r3,r0,LSL #2]
        0x08002aae:    2d02        .-      CMP      r5,#2
        0x08002ab0:    d10b        ..      BNE      0x8002aca ; USBPD_PHY_BitRecognize + 90
        0x08002ab2:    2601        .&      MOVS     r6,#1
        0x08002ab4:    4d0b        .M      LDR      r5,[pc,#44] ; [0x8002ae4] = 0x2000001c
        0x08002ab6:    682f        /h      LDR      r7,[r5,#0]
        0x08002ab8:    682d        -h      LDR      r5,[r5,#0]
        0x08002aba:    1c6d        m.      ADDS     r5,r5,#1
        0x08002abc:    f8dfc024    ..$.    LDR      r12,[pc,#36] ; [0x8002ae4] = 0x2000001c
        0x08002ac0:    f8cc5000    ...P    STR      r5,[r12,#0]
        0x08002ac4:    55d6        .U      STRB     r6,[r2,r7]
        0x08002ac6:    2400        .$      MOVS     r4,#0
        0x08002ac8:    e000        ..      B        0x8002acc ; USBPD_PHY_BitRecognize + 92
        0x08002aca:    2400        .$      MOVS     r4,#0
        0x08002acc:    1c40        @.      ADDS     r0,r0,#1
        0x08002ace:    4288        .B      CMP      r0,r1
        0x08002ad0:    d3d3        ..      BCC      0x8002a7a ; USBPD_PHY_BitRecognize + 10
        0x08002ad2:    4804        .H      LDR      r0,[pc,#16] ; [0x8002ae4] = 0x2000001c
        0x08002ad4:    6800        .h      LDR      r0,[r0,#0]
        0x08002ad6:    2895        .(      CMP      r0,#0x95
        0x08002ad8:    d201        ..      BCS      0x8002ade ; USBPD_PHY_BitRecognize + 110
        0x08002ada:    2002        .       MOVS     r0,#2
        0x08002adc:    bdf0        ..      POP      {r4-r7,pc}
        0x08002ade:    2000        .       MOVS     r0,#0
        0x08002ae0:    e7fc        ..      B        0x8002adc ; USBPD_PHY_BitRecognize + 108
    $d
        0x08002ae2:    0000        ..      DCW    0
        0x08002ae4:    2000001c    ...     DCD    536870940
    $t
    i.USBPD_PHY_CRC32Check
    USBPD_PHY_CRC32Check
        0x08002ae8:    b530        0.      PUSH     {r4,r5,lr}
        0x08002aea:    4603        .F      MOV      r3,r0
        0x08002aec:    460c        .F      MOV      r4,r1
        0x08002aee:    4806        .H      LDR      r0,[pc,#24] ; [0x8002b08] = 0x40023000
        0x08002af0:    6880        .h      LDR      r0,[r0,#8]
        0x08002af2:    f0400001    @...    ORR      r0,r0,#1
        0x08002af6:    4d04        .M      LDR      r5,[pc,#16] ; [0x8002b08] = 0x40023000
        0x08002af8:    60a8        .`      STR      r0,[r5,#8]
        0x08002afa:    4291        .B      CMP      r1,r2
        0x08002afc:    d101        ..      BNE      0x8002b02 ; USBPD_PHY_CRC32Check + 26
        0x08002afe:    2000        .       MOVS     r0,#0
        0x08002b00:    bd30        0.      POP      {r4,r5,pc}
        0x08002b02:    2002        .       MOVS     r0,#2
        0x08002b04:    e7fc        ..      B        0x8002b00 ; USBPD_PHY_CRC32Check + 24
    $d
        0x08002b06:    0000        ..      DCW    0
        0x08002b08:    40023000    .0.@    DCD    1073885184
    $t
    i.USBPD_PHY_CRC32Generate
    USBPD_PHY_CRC32Generate
        0x08002b0c:    b570        p.      PUSH     {r4-r6,lr}
        0x08002b0e:    4604        .F      MOV      r4,r0
        0x08002b10:    460d        .F      MOV      r5,r1
        0x08002b12:    4806        .H      LDR      r0,[pc,#24] ; [0x8002b2c] = 0x40023000
        0x08002b14:    6880        .h      LDR      r0,[r0,#8]
        0x08002b16:    f0400001    @...    ORR      r0,r0,#1
        0x08002b1a:    4904        .I      LDR      r1,[pc,#16] ; [0x8002b2c] = 0x40023000
        0x08002b1c:    6088        .`      STR      r0,[r1,#8]
        0x08002b1e:    4629        )F      MOV      r1,r5
        0x08002b20:    4620         F      MOV      r0,r4
        0x08002b22:    f7fdfbb3    ....    BL       CRC_Handle_8 ; 0x800028c
        0x08002b26:    43c6        .C      MVNS     r6,r0
        0x08002b28:    4630        0F      MOV      r0,r6
        0x08002b2a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08002b2c:    40023000    .0.@    DCD    1073885184
    $t
    i.USBPD_PHY_Cov5BCodeTo5BValue
    USBPD_PHY_Cov5BCodeTo5BValue
        0x08002b30:    4601        .F      MOV      r1,r0
        0x08002b32:    780b        .x      LDRB     r3,[r1,#0]
        0x08002b34:    784a        Jx      LDRB     r2,[r1,#1]
        0x08002b36:    eb030342    ..B.    ADD      r3,r3,r2,LSL #1
        0x08002b3a:    788a        .x      LDRB     r2,[r1,#2]
        0x08002b3c:    eb030382    ....    ADD      r3,r3,r2,LSL #2
        0x08002b40:    78ca        .x      LDRB     r2,[r1,#3]
        0x08002b42:    eb0303c2    ....    ADD      r3,r3,r2,LSL #3
        0x08002b46:    790a        .y      LDRB     r2,[r1,#4]
        0x08002b48:    eb031202    ....    ADD      r2,r3,r2,LSL #4
        0x08002b4c:    b2d0        ..      UXTB     r0,r2
        0x08002b4e:    4770        pG      BX       lr
    i.USBPD_PHY_Cov5BValueTo5BCode
    USBPD_PHY_Cov5BValueTo5BCode
        0x08002b50:    f0000201    ....    AND      r2,r0,#1
        0x08002b54:    700a        .p      STRB     r2,[r1,#0]
        0x08002b56:    f3c00240    ..@.    UBFX     r2,r0,#1,#1
        0x08002b5a:    704a        Jp      STRB     r2,[r1,#1]
        0x08002b5c:    f3c00280    ....    UBFX     r2,r0,#2,#1
        0x08002b60:    708a        .p      STRB     r2,[r1,#2]
        0x08002b62:    f3c002c0    ....    UBFX     r2,r0,#3,#1
        0x08002b66:    70ca        .p      STRB     r2,[r1,#3]
        0x08002b68:    f3c01200    ....    UBFX     r2,r0,#4,#1
        0x08002b6c:    710a        .q      STRB     r2,[r1,#4]
        0x08002b6e:    4770        pG      BX       lr
    i.USBPD_PHY_DecodeMessage
    USBPD_PHY_DecodeMessage
        0x08002b70:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x08002b74:    4604        .F      MOV      r4,r0
        0x08002b76:    f000f9e9    ....    BL       USBPD_PHY_Reset ; 0x8002f4c
        0x08002b7a:    2500        .%      MOVS     r5,#0
        0x08002b7c:    e013        ..      B        0x8002ba6 ; USBPD_PHY_DecodeMessage + 54
        0x08002b7e:    484a        JH      LDR      r0,[pc,#296] ; [0x8002ca8] = 0x20000230
        0x08002b80:    f8500025    P.%.    LDR      r0,[r0,r5,LSL #2]
        0x08002b84:    f44f717a    O.zq    MOV      r1,#0x3e8
        0x08002b88:    4348        HC      MULS     r0,r1,r0
        0x08002b8a:    2148        H!      MOVS     r1,#0x48
        0x08002b8c:    fbb0f0f1    ....    UDIV     r0,r0,r1
        0x08002b90:    4945        EI      LDR      r1,[pc,#276] ; [0x8002ca8] = 0x20000230
        0x08002b92:    f8410025    A.%.    STR      r0,[r1,r5,LSL #2]
        0x08002b96:    f8510025    Q.%.    LDR      r0,[r1,r5,LSL #2]
        0x08002b9a:    f000f98b    ....    BL       USBPD_PHY_GapClassify ; 0x8002eb4
        0x08002b9e:    4942        BI      LDR      r1,[pc,#264] ; [0x8002ca8] = 0x20000230
        0x08002ba0:    f8410025    A.%.    STR      r0,[r1,r5,LSL #2]
        0x08002ba4:    1c6d        m.      ADDS     r5,r5,#1
        0x08002ba6:    4841        AH      LDR      r0,[pc,#260] ; [0x8002cac] = 0x20000014
        0x08002ba8:    6800        .h      LDR      r0,[r0,#0]
        0x08002baa:    4285        .B      CMP      r5,r0
        0x08002bac:    d3e7        ..      BCC      0x8002b7e ; USBPD_PHY_DecodeMessage + 14
        0x08002bae:    4a40        @J      LDR      r2,[pc,#256] ; [0x8002cb0] = 0x20000e58
        0x08002bb0:    483e        >H      LDR      r0,[pc,#248] ; [0x8002cac] = 0x20000014
        0x08002bb2:    6801        .h      LDR      r1,[r0,#0]
        0x08002bb4:    483c        <H      LDR      r0,[pc,#240] ; [0x8002ca8] = 0x20000230
        0x08002bb6:    f7ffff5b    ..[.    BL       USBPD_PHY_BitRecognize ; 0x8002a70
        0x08002bba:    b918        ..      CBNZ     r0,0x8002bc4 ; USBPD_PHY_DecodeMessage + 84
        0x08002bbc:    483d        =H      LDR      r0,[pc,#244] ; [0x8002cb4] = 0x2000001c
        0x08002bbe:    6800        .h      LDR      r0,[r0,#0]
        0x08002bc0:    6020         `      STR      r0,[r4,#0]
        0x08002bc2:    e002        ..      B        0x8002bca ; USBPD_PHY_DecodeMessage + 90
        0x08002bc4:    2002        .       MOVS     r0,#2
        0x08002bc6:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x08002bca:    483a        :H      LDR      r0,[pc,#232] ; [0x8002cb4] = 0x2000001c
        0x08002bcc:    6801        .h      LDR      r1,[r0,#0]
        0x08002bce:    4838        8H      LDR      r0,[pc,#224] ; [0x8002cb0] = 0x20000e58
        0x08002bd0:    f000f990    ....    BL       USBPD_PHY_PreambleDetect ; 0x8002ef4
        0x08002bd4:    b918        ..      CBNZ     r0,0x8002bde ; USBPD_PHY_DecodeMessage + 110
        0x08002bd6:    4838        8H      LDR      r0,[pc,#224] ; [0x8002cb8] = 0x20000020
        0x08002bd8:    6800        .h      LDR      r0,[r0,#0]
        0x08002bda:    6060        ``      STR      r0,[r4,#4]
        0x08002bdc:    e001        ..      B        0x8002be2 ; USBPD_PHY_DecodeMessage + 114
        0x08002bde:    2002        .       MOVS     r0,#2
        0x08002be0:    e7f1        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002be2:    4933        3I      LDR      r1,[pc,#204] ; [0x8002cb0] = 0x20000e58
        0x08002be4:    6860        `h      LDR      r0,[r4,#4]
        0x08002be6:    1846        F.      ADDS     r6,r0,r1
        0x08002be8:    4630        0F      MOV      r0,r6
        0x08002bea:    f000f9c1    ....    BL       USBPD_PHY_SOPDetect ; 0x8002f70
        0x08002bee:    b918        ..      CBNZ     r0,0x8002bf8 ; USBPD_PHY_DecodeMessage + 136
        0x08002bf0:    4832        2H      LDR      r0,[pc,#200] ; [0x8002cbc] = 0x20000024
        0x08002bf2:    7800        .x      LDRB     r0,[r0,#0]
        0x08002bf4:    7220         r      STRB     r0,[r4,#8]
        0x08002bf6:    e001        ..      B        0x8002bfc ; USBPD_PHY_DecodeMessage + 140
        0x08002bf8:    2002        .       MOVS     r0,#2
        0x08002bfa:    e7e4        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002bfc:    7a20         z      LDRB     r0,[r4,#8]
        0x08002bfe:    2805        .(      CMP      r0,#5
        0x08002c00:    d103        ..      BNE      0x8002c0a ; USBPD_PHY_DecodeMessage + 154
        0x08002c02:    2001        .       MOVS     r0,#1
        0x08002c04:    f000faaa    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x08002c08:    e031        1.      B        0x8002c6e ; USBPD_PHY_DecodeMessage + 254
        0x08002c0a:    7a20         z      LDRB     r0,[r4,#8]
        0x08002c0c:    bb68        h.      CBNZ     r0,0x8002c6a ; USBPD_PHY_DecodeMessage + 250
        0x08002c0e:    2001        .       MOVS     r0,#1
        0x08002c10:    f000faa4    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x08002c14:    6820         h      LDR      r0,[r4,#0]
        0x08002c16:    f1a00759    ..Y.    SUB      r7,r0,#0x59
        0x08002c1a:    200a        .       MOVS     r0,#0xa
        0x08002c1c:    fbb7f0f0    ....    UDIV     r0,r7,r0
        0x08002c20:    1f00        ..      SUBS     r0,r0,#4
        0x08002c22:    60e0        .`      STR      r0,[r4,#0xc]
        0x08002c24:    3614        .6      ADDS     r6,r6,#0x14
        0x08002c26:    4a26        &J      LDR      r2,[pc,#152] ; [0x8002cc0] = 0x20000de8
        0x08002c28:    4639        9F      MOV      r1,r7
        0x08002c2a:    4630        0F      MOV      r0,r6
        0x08002c2c:    f000f84a    ..J.    BL       USBPD_PHY_DecodeMsgByte ; 0x8002cc4
        0x08002c30:    b9c8        ..      CBNZ     r0,0x8002c66 ; USBPD_PHY_DecodeMessage + 246
        0x08002c32:    4923        #I      LDR      r1,[pc,#140] ; [0x8002cc0] = 0x20000de8
        0x08002c34:    f1040010    ....    ADD      r0,r4,#0x10
        0x08002c38:    68e2        .h      LDR      r2,[r4,#0xc]
        0x08002c3a:    f7fdfac3    ....    BL       __aeabi_memcpy ; 0x80001c4
        0x08002c3e:    4920         I      LDR      r1,[pc,#128] ; [0x8002cc0] = 0x20000de8
        0x08002c40:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08002c42:    5c09        .\      LDRB     r1,[r1,r0]
        0x08002c44:    1c40        @.      ADDS     r0,r0,#1
        0x08002c46:    4a1e        .J      LDR      r2,[pc,#120] ; [0x8002cc0] = 0x20000de8
        0x08002c48:    5c10        .\      LDRB     r0,[r2,r0]
        0x08002c4a:    ea412100    A..!    ORR      r1,r1,r0,LSL #8
        0x08002c4e:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08002c50:    1c80        ..      ADDS     r0,r0,#2
        0x08002c52:    5c10        .\      LDRB     r0,[r2,r0]
        0x08002c54:    ea414100    A..A    ORR      r1,r1,r0,LSL #16
        0x08002c58:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08002c5a:    1cc0        ..      ADDS     r0,r0,#3
        0x08002c5c:    5c10        .\      LDRB     r0,[r2,r0]
        0x08002c5e:    ea416000    A..`    ORR      r0,r1,r0,LSL #24
        0x08002c62:    6320         c      STR      r0,[r4,#0x30]
        0x08002c64:    e003        ..      B        0x8002c6e ; USBPD_PHY_DecodeMessage + 254
        0x08002c66:    2002        .       MOVS     r0,#2
        0x08002c68:    e7ad        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002c6a:    2002        .       MOVS     r0,#2
        0x08002c6c:    e7ab        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002c6e:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08002c70:    eb000080    ....    ADD      r0,r0,r0,LSL #2
        0x08002c74:    2128        (!      MOVS     r1,#0x28
        0x08002c76:    eb010040    ..@.    ADD      r0,r1,r0,LSL #1
        0x08002c7a:    4406        .D      ADD      r6,r6,r0
        0x08002c7c:    4630        0F      MOV      r0,r6
        0x08002c7e:    f000f852    ..R.    BL       USBPD_PHY_EOPDetect ; 0x8002d26
        0x08002c82:    b918        ..      CBNZ     r0,0x8002c8c ; USBPD_PHY_DecodeMessage + 284
        0x08002c84:    2001        .       MOVS     r0,#1
        0x08002c86:    f8840034    ..4.    STRB     r0,[r4,#0x34]
        0x08002c8a:    e001        ..      B        0x8002c90 ; USBPD_PHY_DecodeMessage + 288
        0x08002c8c:    2002        .       MOVS     r0,#2
        0x08002c8e:    e79a        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002c90:    f1040010    ....    ADD      r0,r4,#0x10
        0x08002c94:    6b22        "k      LDR      r2,[r4,#0x30]
        0x08002c96:    68e1        .h      LDR      r1,[r4,#0xc]
        0x08002c98:    f7ffff26    ..&.    BL       USBPD_PHY_CRC32Check ; 0x8002ae8
        0x08002c9c:    b908        ..      CBNZ     r0,0x8002ca2 ; USBPD_PHY_DecodeMessage + 306
        0x08002c9e:    2000        .       MOVS     r0,#0
        0x08002ca0:    e791        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
        0x08002ca2:    2002        .       MOVS     r0,#2
        0x08002ca4:    e78f        ..      B        0x8002bc6 ; USBPD_PHY_DecodeMessage + 86
    $d
        0x08002ca6:    0000        ..      DCW    0
        0x08002ca8:    20000230    0..     DCD    536871472
        0x08002cac:    20000014    ...     DCD    536870932
        0x08002cb0:    20000e58    X..     DCD    536874584
        0x08002cb4:    2000001c    ...     DCD    536870940
        0x08002cb8:    20000020     ..     DCD    536870944
        0x08002cbc:    20000024    $..     DCD    536870948
        0x08002cc0:    20000de8    ...     DCD    536874472
    $t
    i.USBPD_PHY_DecodeMsgByte
    USBPD_PHY_DecodeMsgByte
        0x08002cc4:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x08002cc8:    4605        .F      MOV      r5,r0
        0x08002cca:    460f        .F      MOV      r7,r1
        0x08002ccc:    4690        .F      MOV      r8,r2
        0x08002cce:    2005        .       MOVS     r0,#5
        0x08002cd0:    fbb7f0f0    ....    UDIV     r0,r7,r0
        0x08002cd4:    f3c00647    ..G.    UBFX     r6,r0,#1,#8
        0x08002cd8:    2e00        ..      CMP      r6,#0
        0x08002cda:    dd22        ".      BLE      0x8002d22 ; USBPD_PHY_DecodeMsgByte + 94
        0x08002cdc:    2e1f        ..      CMP      r6,#0x1f
        0x08002cde:    da20         .      BGE      0x8002d22 ; USBPD_PHY_DecodeMsgByte + 94
        0x08002ce0:    2400        .$      MOVS     r4,#0
        0x08002ce2:    e019        ..      B        0x8002d18 ; USBPD_PHY_DecodeMsgByte + 84
        0x08002ce4:    0061        a.      LSLS     r1,r4,#1
        0x08002ce6:    eb010181    ....    ADD      r1,r1,r1,LSL #2
        0x08002cea:    1948        H.      ADDS     r0,r1,r5
        0x08002cec:    f7ffff20    .. .    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002cf0:    4681        .F      MOV      r9,r0
        0x08002cf2:    f7fffe85    ....    BL       USBPD_PHY_5B4BDecode ; 0x8002a00
        0x08002cf6:    4682        .F      MOV      r10,r0
        0x08002cf8:    2101        .!      MOVS     r1,#1
        0x08002cfa:    eb010144    ..D.    ADD      r1,r1,r4,LSL #1
        0x08002cfe:    eb010181    ....    ADD      r1,r1,r1,LSL #2
        0x08002d02:    1948        H.      ADDS     r0,r1,r5
        0x08002d04:    f7ffff14    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002d08:    4681        .F      MOV      r9,r0
        0x08002d0a:    f7fffe79    ..y.    BL       USBPD_PHY_5B4BDecode ; 0x8002a00
        0x08002d0e:    ea4a1000    J...    ORR      r0,r10,r0,LSL #4
        0x08002d12:    f8080004    ....    STRB     r0,[r8,r4]
        0x08002d16:    1c64        d.      ADDS     r4,r4,#1
        0x08002d18:    42b4        .B      CMP      r4,r6
        0x08002d1a:    d3e3        ..      BCC      0x8002ce4 ; USBPD_PHY_DecodeMsgByte + 32
        0x08002d1c:    2000        .       MOVS     r0,#0
        0x08002d1e:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x08002d22:    2002        .       MOVS     r0,#2
        0x08002d24:    e7fb        ..      B        0x8002d1e ; USBPD_PHY_DecodeMsgByte + 90
    i.USBPD_PHY_EOPDetect
    USBPD_PHY_EOPDetect
        0x08002d26:    b570        p.      PUSH     {r4-r6,lr}
        0x08002d28:    4604        .F      MOV      r4,r0
        0x08002d2a:    4620         F      MOV      r0,r4
        0x08002d2c:    f7ffff00    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002d30:    4605        .F      MOV      r5,r0
        0x08002d32:    2d0d        .-      CMP      r5,#0xd
        0x08002d34:    d101        ..      BNE      0x8002d3a ; USBPD_PHY_EOPDetect + 20
        0x08002d36:    2000        .       MOVS     r0,#0
        0x08002d38:    bd70        p.      POP      {r4-r6,pc}
        0x08002d3a:    2002        .       MOVS     r0,#2
        0x08002d3c:    e7fc        ..      B        0x8002d38 ; USBPD_PHY_EOPDetect + 18
        0x08002d3e:    0000        ..      MOVS     r0,r0
    i.USBPD_PHY_EncodeMessage
    USBPD_PHY_EncodeMessage
        0x08002d40:    b570        p.      PUSH     {r4-r6,lr}
        0x08002d42:    b092        ..      SUB      sp,sp,#0x48
        0x08002d44:    4605        .F      MOV      r5,r0
        0x08002d46:    460c        .F      MOV      r4,r1
        0x08002d48:    2000        .       MOVS     r0,#0
        0x08002d4a:    e007        ..      B        0x8002d5c ; USBPD_PHY_EncodeMessage + 28
        0x08002d4c:    2100        .!      MOVS     r1,#0
        0x08002d4e:    f8041010    ....    STRB     r1,[r4,r0,LSL #1]
        0x08002d52:    2101        .!      MOVS     r1,#1
        0x08002d54:    eb010240    ..@.    ADD      r2,r1,r0,LSL #1
        0x08002d58:    54a1        .T      STRB     r1,[r4,r2]
        0x08002d5a:    1c40        @.      ADDS     r0,r0,#1
        0x08002d5c:    2820         (      CMP      r0,#0x20
        0x08002d5e:    d3f5        ..      BCC      0x8002d4c ; USBPD_PHY_EncodeMessage + 12
        0x08002d60:    2040        @       MOVS     r0,#0x40
        0x08002d62:    4952        RI      LDR      r1,[pc,#328] ; [0x8002eac] = 0x200001a8
        0x08002d64:    6008        .`      STR      r0,[r1,#0]
        0x08002d66:    7a28        (z      LDRB     r0,[r5,#8]
        0x08002d68:    2805        .(      CMP      r0,#5
        0x08002d6a:    d117        ..      BNE      0x8002d9c ; USBPD_PHY_EncodeMessage + 92
        0x08002d6c:    2600        .&      MOVS     r6,#0
        0x08002d6e:    e008        ..      B        0x8002d82 ; USBPD_PHY_EncodeMessage + 66
        0x08002d70:    eb060286    ....    ADD      r2,r6,r6,LSL #2
        0x08002d74:    f1040040    ..@.    ADD      r0,r4,#0x40
        0x08002d78:    1811        ..      ADDS     r1,r2,r0
        0x08002d7a:    2007        .       MOVS     r0,#7
        0x08002d7c:    f7fffee8    ....    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002d80:    1c76        v.      ADDS     r6,r6,#1
        0x08002d82:    2e03        ..      CMP      r6,#3
        0x08002d84:    d3f4        ..      BCC      0x8002d70 ; USBPD_PHY_EncodeMessage + 48
        0x08002d86:    f104014f    ..O.    ADD      r1,r4,#0x4f
        0x08002d8a:    2019        .       MOVS     r0,#0x19
        0x08002d8c:    f7fffee0    ....    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002d90:    4846        FH      LDR      r0,[pc,#280] ; [0x8002eac] = 0x200001a8
        0x08002d92:    6800        .h      LDR      r0,[r0,#0]
        0x08002d94:    3014        .0      ADDS     r0,r0,#0x14
        0x08002d96:    4945        EI      LDR      r1,[pc,#276] ; [0x8002eac] = 0x200001a8
        0x08002d98:    6008        .`      STR      r0,[r1,#0]
        0x08002d9a:    e077        w.      B        0x8002e8c ; USBPD_PHY_EncodeMessage + 332
        0x08002d9c:    7a28        (z      LDRB     r0,[r5,#8]
        0x08002d9e:    b9b0        ..      CBNZ     r0,0x8002dce ; USBPD_PHY_EncodeMessage + 142
        0x08002da0:    2600        .&      MOVS     r6,#0
        0x08002da2:    e008        ..      B        0x8002db6 ; USBPD_PHY_EncodeMessage + 118
        0x08002da4:    eb060286    ....    ADD      r2,r6,r6,LSL #2
        0x08002da8:    f1040040    ..@.    ADD      r0,r4,#0x40
        0x08002dac:    1811        ..      ADDS     r1,r2,r0
        0x08002dae:    2018        .       MOVS     r0,#0x18
        0x08002db0:    f7fffece    ....    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002db4:    1c76        v.      ADDS     r6,r6,#1
        0x08002db6:    2e03        ..      CMP      r6,#3
        0x08002db8:    d3f4        ..      BCC      0x8002da4 ; USBPD_PHY_EncodeMessage + 100
        0x08002dba:    f104014f    ..O.    ADD      r1,r4,#0x4f
        0x08002dbe:    2011        .       MOVS     r0,#0x11
        0x08002dc0:    f7fffec6    ....    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002dc4:    4839        9H      LDR      r0,[pc,#228] ; [0x8002eac] = 0x200001a8
        0x08002dc6:    6800        .h      LDR      r0,[r0,#0]
        0x08002dc8:    3014        .0      ADDS     r0,r0,#0x14
        0x08002dca:    4938        8I      LDR      r1,[pc,#224] ; [0x8002eac] = 0x200001a8
        0x08002dcc:    6008        .`      STR      r0,[r1,#0]
        0x08002dce:    2600        .&      MOVS     r6,#0
        0x08002dd0:    e014        ..      B        0x8002dfc ; USBPD_PHY_EncodeMessage + 188
        0x08002dd2:    f1050110    ....    ADD      r1,r5,#0x10
        0x08002dd6:    5d89        .]      LDRB     r1,[r1,r6]
        0x08002dd8:    f001000f    ....    AND      r0,r1,#0xf
        0x08002ddc:    f7fffdde    ....    BL       USBPD_PHY_4B5BEncode ; 0x800299c
        0x08002de0:    aa01        ..      ADD      r2,sp,#4
        0x08002de2:    f8020016    ....    STRB     r0,[r2,r6,LSL #1]
        0x08002de6:    f1050110    ....    ADD      r1,r5,#0x10
        0x08002dea:    5d89        .]      LDRB     r1,[r1,r6]
        0x08002dec:    0908        ..      LSRS     r0,r1,#4
        0x08002dee:    f7fffdd5    ....    BL       USBPD_PHY_4B5BEncode ; 0x800299c
        0x08002df2:    0071        q.      LSLS     r1,r6,#1
        0x08002df4:    1c49        I.      ADDS     r1,r1,#1
        0x08002df6:    aa01        ..      ADD      r2,sp,#4
        0x08002df8:    5450        PT      STRB     r0,[r2,r1]
        0x08002dfa:    1c76        v.      ADDS     r6,r6,#1
        0x08002dfc:    68e8        .h      LDR      r0,[r5,#0xc]
        0x08002dfe:    42b0        .B      CMP      r0,r6
        0x08002e00:    d8e7        ..      BHI      0x8002dd2 ; USBPD_PHY_EncodeMessage + 146
        0x08002e02:    2600        .&      MOVS     r6,#0
        0x08002e04:    e009        ..      B        0x8002e1a ; USBPD_PHY_EncodeMessage + 218
        0x08002e06:    eb060386    ....    ADD      r3,r6,r6,LSL #2
        0x08002e0a:    f1040254    ..T.    ADD      r2,r4,#0x54
        0x08002e0e:    1899        ..      ADDS     r1,r3,r2
        0x08002e10:    aa01        ..      ADD      r2,sp,#4
        0x08002e12:    5d90        .]      LDRB     r0,[r2,r6]
        0x08002e14:    f7fffe9c    ....    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002e18:    1c76        v.      ADDS     r6,r6,#1
        0x08002e1a:    68e8        .h      LDR      r0,[r5,#0xc]
        0x08002e1c:    ebb60f40    ..@.    CMP      r6,r0,LSL #1
        0x08002e20:    d3f1        ..      BCC      0x8002e06 ; USBPD_PHY_EncodeMessage + 198
        0x08002e22:    68e8        .h      LDR      r0,[r5,#0xc]
        0x08002e24:    eb000080    ....    ADD      r0,r0,r0,LSL #2
        0x08002e28:    4920         I      LDR      r1,[pc,#128] ; [0x8002eac] = 0x200001a8
        0x08002e2a:    6809        .h      LDR      r1,[r1,#0]
        0x08002e2c:    eb010040    ..@.    ADD      r0,r1,r0,LSL #1
        0x08002e30:    491e        .I      LDR      r1,[pc,#120] ; [0x8002eac] = 0x200001a8
        0x08002e32:    6008        .`      STR      r0,[r1,#0]
        0x08002e34:    2600        .&      MOVS     r6,#0
        0x08002e36:    e016        ..      B        0x8002e66 ; USBPD_PHY_EncodeMessage + 294
        0x08002e38:    00b2        ..      LSLS     r2,r6,#2
        0x08002e3a:    6b29        )k      LDR      r1,[r5,#0x30]
        0x08002e3c:    40d1        .@      LSRS     r1,r1,r2
        0x08002e3e:    f001000f    ....    AND      r0,r1,#0xf
        0x08002e42:    f7fffdab    ....    BL       USBPD_PHY_4B5BEncode ; 0x800299c
        0x08002e46:    a910        ..      ADD      r1,sp,#0x40
        0x08002e48:    5588        .U      STRB     r0,[r1,r6]
        0x08002e4a:    68ea        .h      LDR      r2,[r5,#0xc]
        0x08002e4c:    eb020382    ....    ADD      r3,r2,r2,LSL #2
        0x08002e50:    4a17        .J      LDR      r2,[pc,#92] ; [0x8002eb0] = 0x20000eac
        0x08002e52:    eb020243    ..C.    ADD      r2,r2,r3,LSL #1
        0x08002e56:    eb060386    ....    ADD      r3,r6,r6,LSL #2
        0x08002e5a:    18d1        ..      ADDS     r1,r2,r3
        0x08002e5c:    aa10        ..      ADD      r2,sp,#0x40
        0x08002e5e:    5d90        .]      LDRB     r0,[r2,r6]
        0x08002e60:    f7fffe76    ..v.    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002e64:    1c76        v.      ADDS     r6,r6,#1
        0x08002e66:    2e08        ..      CMP      r6,#8
        0x08002e68:    d3e6        ..      BCC      0x8002e38 ; USBPD_PHY_EncodeMessage + 248
        0x08002e6a:    4810        .H      LDR      r0,[pc,#64] ; [0x8002eac] = 0x200001a8
        0x08002e6c:    6800        .h      LDR      r0,[r0,#0]
        0x08002e6e:    3028        (0      ADDS     r0,r0,#0x28
        0x08002e70:    490e        .I      LDR      r1,[pc,#56] ; [0x8002eac] = 0x200001a8
        0x08002e72:    6008        .`      STR      r0,[r1,#0]
        0x08002e74:    4608        .F      MOV      r0,r1
        0x08002e76:    6800        .h      LDR      r0,[r0,#0]
        0x08002e78:    1821        !.      ADDS     r1,r4,r0
        0x08002e7a:    200d        .       MOVS     r0,#0xd
        0x08002e7c:    f7fffe68    ..h.    BL       USBPD_PHY_Cov5BValueTo5BCode ; 0x8002b50
        0x08002e80:    480a        .H      LDR      r0,[pc,#40] ; [0x8002eac] = 0x200001a8
        0x08002e82:    6800        .h      LDR      r0,[r0,#0]
        0x08002e84:    1d40        @.      ADDS     r0,r0,#5
        0x08002e86:    4909        .I      LDR      r1,[pc,#36] ; [0x8002eac] = 0x200001a8
        0x08002e88:    6008        .`      STR      r0,[r1,#0]
        0x08002e8a:    bf00        ..      NOP      
        0x08002e8c:    2000        .       MOVS     r0,#0
        0x08002e8e:    4907        .I      LDR      r1,[pc,#28] ; [0x8002eac] = 0x200001a8
        0x08002e90:    6809        .h      LDR      r1,[r1,#0]
        0x08002e92:    5460        `T      STRB     r0,[r4,r1]
        0x08002e94:    2100        .!      MOVS     r1,#0
        0x08002e96:    4805        .H      LDR      r0,[pc,#20] ; [0x8002eac] = 0x200001a8
        0x08002e98:    6800        .h      LDR      r0,[r0,#0]
        0x08002e9a:    1c40        @.      ADDS     r0,r0,#1
        0x08002e9c:    5421        !T      STRB     r1,[r4,r0]
        0x08002e9e:    4803        .H      LDR      r0,[pc,#12] ; [0x8002eac] = 0x200001a8
        0x08002ea0:    6800        .h      LDR      r0,[r0,#0]
        0x08002ea2:    1c80        ..      ADDS     r0,r0,#2
        0x08002ea4:    4901        .I      LDR      r1,[pc,#4] ; [0x8002eac] = 0x200001a8
        0x08002ea6:    6008        .`      STR      r0,[r1,#0]
        0x08002ea8:    b012        ..      ADD      sp,sp,#0x48
        0x08002eaa:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08002eac:    200001a8    ...     DCD    536871336
        0x08002eb0:    20000eac    ...     DCD    536874668
    $t
    i.USBPD_PHY_GapClassify
    USBPD_PHY_GapClassify
        0x08002eb4:    4601        .F      MOV      r1,r0
        0x08002eb6:    29c8        .)      CMP      r1,#0xc8
        0x08002eb8:    d201        ..      BCS      0x8002ebe ; USBPD_PHY_GapClassify + 10
        0x08002eba:    2000        .       MOVS     r0,#0
        0x08002ebc:    e018        ..      B        0x8002ef0 ; USBPD_PHY_GapClassify + 60
        0x08002ebe:    29c8        .)      CMP      r1,#0xc8
        0x08002ec0:    d304        ..      BCC      0x8002ecc ; USBPD_PHY_GapClassify + 24
        0x08002ec2:    f5b17f7a    ..z.    CMP      r1,#0x3e8
        0x08002ec6:    d201        ..      BCS      0x8002ecc ; USBPD_PHY_GapClassify + 24
        0x08002ec8:    2001        .       MOVS     r0,#1
        0x08002eca:    e011        ..      B        0x8002ef0 ; USBPD_PHY_GapClassify + 60
        0x08002ecc:    f5b17f7a    ..z.    CMP      r1,#0x3e8
        0x08002ed0:    d304        ..      BCC      0x8002edc ; USBPD_PHY_GapClassify + 40
        0x08002ed2:    f5b16f16    ...o    CMP      r1,#0x960
        0x08002ed6:    d201        ..      BCS      0x8002edc ; USBPD_PHY_GapClassify + 40
        0x08002ed8:    2002        .       MOVS     r0,#2
        0x08002eda:    e009        ..      B        0x8002ef0 ; USBPD_PHY_GapClassify + 60
        0x08002edc:    f5b16f16    ...o    CMP      r1,#0x960
        0x08002ee0:    d305        ..      BCC      0x8002eee ; USBPD_PHY_GapClassify + 58
        0x08002ee2:    f2417270    A.pr    MOV      r2,#0x1770
        0x08002ee6:    4291        .B      CMP      r1,r2
        0x08002ee8:    d201        ..      BCS      0x8002eee ; USBPD_PHY_GapClassify + 58
        0x08002eea:    2003        .       MOVS     r0,#3
        0x08002eec:    e000        ..      B        0x8002ef0 ; USBPD_PHY_GapClassify + 60
        0x08002eee:    2004        .       MOVS     r0,#4
        0x08002ef0:    4770        pG      BX       lr
        0x08002ef2:    0000        ..      MOVS     r0,r0
    i.USBPD_PHY_PreambleDetect
    USBPD_PHY_PreambleDetect
        0x08002ef4:    b530        0.      PUSH     {r4,r5,lr}
        0x08002ef6:    4602        .F      MOV      r2,r0
        0x08002ef8:    2300        .#      MOVS     r3,#0
        0x08002efa:    7810        .x      LDRB     r0,[r2,#0]
        0x08002efc:    2801        .(      CMP      r0,#1
        0x08002efe:    d103        ..      BNE      0x8002f08 ; USBPD_PHY_PreambleDetect + 20
        0x08002f00:    2301        .#      MOVS     r3,#1
        0x08002f02:    2002        .       MOVS     r0,#2
        0x08002f04:    4c10        .L      LDR      r4,[pc,#64] ; [0x8002f48] = 0x20000020
        0x08002f06:    6020         `      STR      r0,[r4,#0]
        0x08002f08:    4618        .F      MOV      r0,r3
        0x08002f0a:    e00e        ..      B        0x8002f2a ; USBPD_PHY_PreambleDetect + 54
        0x08002f0c:    5c14        .\      LDRB     r4,[r2,r0]
        0x08002f0e:    b954        T.      CBNZ     r4,0x8002f26 ; USBPD_PHY_PreambleDetect + 50
        0x08002f10:    1c44        D.      ADDS     r4,r0,#1
        0x08002f12:    5d14        .]      LDRB     r4,[r2,r4]
        0x08002f14:    2c01        .,      CMP      r4,#1
        0x08002f16:    d106        ..      BNE      0x8002f26 ; USBPD_PHY_PreambleDetect + 50
        0x08002f18:    1c40        @.      ADDS     r0,r0,#1
        0x08002f1a:    4c0b        .L      LDR      r4,[pc,#44] ; [0x8002f48] = 0x20000020
        0x08002f1c:    6824        $h      LDR      r4,[r4,#0]
        0x08002f1e:    1ca4        ..      ADDS     r4,r4,#2
        0x08002f20:    4d09        .M      LDR      r5,[pc,#36] ; [0x8002f48] = 0x20000020
        0x08002f22:    602c        ,`      STR      r4,[r5,#0]
        0x08002f24:    e000        ..      B        0x8002f28 ; USBPD_PHY_PreambleDetect + 52
        0x08002f26:    e002        ..      B        0x8002f2e ; USBPD_PHY_PreambleDetect + 58
        0x08002f28:    1c40        @.      ADDS     r0,r0,#1
        0x08002f2a:    4288        .B      CMP      r0,r1
        0x08002f2c:    d3ee        ..      BCC      0x8002f0c ; USBPD_PHY_PreambleDetect + 24
        0x08002f2e:    bf00        ..      NOP      
        0x08002f30:    4805        .H      LDR      r0,[pc,#20] ; [0x8002f48] = 0x20000020
        0x08002f32:    6800        .h      LDR      r0,[r0,#0]
        0x08002f34:    2820         (      CMP      r0,#0x20
        0x08002f36:    d803        ..      BHI      0x8002f40 ; USBPD_PHY_PreambleDetect + 76
        0x08002f38:    4803        .H      LDR      r0,[pc,#12] ; [0x8002f48] = 0x20000020
        0x08002f3a:    6800        .h      LDR      r0,[r0,#0]
        0x08002f3c:    2842        B(      CMP      r0,#0x42
        0x08002f3e:    d201        ..      BCS      0x8002f44 ; USBPD_PHY_PreambleDetect + 80
        0x08002f40:    2000        .       MOVS     r0,#0
        0x08002f42:    bd30        0.      POP      {r4,r5,pc}
        0x08002f44:    2002        .       MOVS     r0,#2
        0x08002f46:    e7fc        ..      B        0x8002f42 ; USBPD_PHY_PreambleDetect + 78
    $d
        0x08002f48:    20000020     ..     DCD    536870944
    $t
    i.USBPD_PHY_Reset
    USBPD_PHY_Reset
        0x08002f4c:    2000        .       MOVS     r0,#0
        0x08002f4e:    4904        .I      LDR      r1,[pc,#16] ; [0x8002f60] = 0x20000010
        0x08002f50:    6008        .`      STR      r0,[r1,#0]
        0x08002f52:    4904        .I      LDR      r1,[pc,#16] ; [0x8002f64] = 0x20000018
        0x08002f54:    7008        .p      STRB     r0,[r1,#0]
        0x08002f56:    4904        .I      LDR      r1,[pc,#16] ; [0x8002f68] = 0x2000001c
        0x08002f58:    6008        .`      STR      r0,[r1,#0]
        0x08002f5a:    4904        .I      LDR      r1,[pc,#16] ; [0x8002f6c] = 0x20000020
        0x08002f5c:    6008        .`      STR      r0,[r1,#0]
        0x08002f5e:    4770        pG      BX       lr
    $d
        0x08002f60:    20000010    ...     DCD    536870928
        0x08002f64:    20000018    ...     DCD    536870936
        0x08002f68:    2000001c    ...     DCD    536870940
        0x08002f6c:    20000020     ..     DCD    536870944
    $t
    i.USBPD_PHY_SOPDetect
    USBPD_PHY_SOPDetect
        0x08002f70:    b538        8.      PUSH     {r3-r5,lr}
        0x08002f72:    4604        .F      MOV      r4,r0
        0x08002f74:    4620         F      MOV      r0,r4
        0x08002f76:    f7fffddb    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002f7a:    f88d0000    ....    STRB     r0,[sp,#0]
        0x08002f7e:    1d60        `.      ADDS     r0,r4,#5
        0x08002f80:    f7fffdd6    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002f84:    f88d0001    ....    STRB     r0,[sp,#1]
        0x08002f88:    f104000a    ....    ADD      r0,r4,#0xa
        0x08002f8c:    f7fffdd0    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002f90:    f88d0002    ....    STRB     r0,[sp,#2]
        0x08002f94:    f104000f    ....    ADD      r0,r4,#0xf
        0x08002f98:    f7fffdca    ....    BL       USBPD_PHY_Cov5BCodeTo5BValue ; 0x8002b30
        0x08002f9c:    f88d0003    ....    STRB     r0,[sp,#3]
        0x08002fa0:    f89d0000    ....    LDRB     r0,[sp,#0]
        0x08002fa4:    2818        .(      CMP      r0,#0x18
        0x08002fa6:    d10f        ..      BNE      0x8002fc8 ; USBPD_PHY_SOPDetect + 88
        0x08002fa8:    f89d0001    ....    LDRB     r0,[sp,#1]
        0x08002fac:    2818        .(      CMP      r0,#0x18
        0x08002fae:    d10b        ..      BNE      0x8002fc8 ; USBPD_PHY_SOPDetect + 88
        0x08002fb0:    f89d0002    ....    LDRB     r0,[sp,#2]
        0x08002fb4:    2818        .(      CMP      r0,#0x18
        0x08002fb6:    d107        ..      BNE      0x8002fc8 ; USBPD_PHY_SOPDetect + 88
        0x08002fb8:    f89d0003    ....    LDRB     r0,[sp,#3]
        0x08002fbc:    2811        .(      CMP      r0,#0x11
        0x08002fbe:    d103        ..      BNE      0x8002fc8 ; USBPD_PHY_SOPDetect + 88
        0x08002fc0:    2000        .       MOVS     r0,#0
        0x08002fc2:    490d        .I      LDR      r1,[pc,#52] ; [0x8002ff8] = 0x20000024
        0x08002fc4:    7008        .p      STRB     r0,[r1,#0]
        0x08002fc6:    bd38        8.      POP      {r3-r5,pc}
        0x08002fc8:    f89d0000    ....    LDRB     r0,[sp,#0]
        0x08002fcc:    2807        .(      CMP      r0,#7
        0x08002fce:    d110        ..      BNE      0x8002ff2 ; USBPD_PHY_SOPDetect + 130
        0x08002fd0:    f89d0001    ....    LDRB     r0,[sp,#1]
        0x08002fd4:    2807        .(      CMP      r0,#7
        0x08002fd6:    d10c        ..      BNE      0x8002ff2 ; USBPD_PHY_SOPDetect + 130
        0x08002fd8:    f89d0002    ....    LDRB     r0,[sp,#2]
        0x08002fdc:    2807        .(      CMP      r0,#7
        0x08002fde:    d108        ..      BNE      0x8002ff2 ; USBPD_PHY_SOPDetect + 130
        0x08002fe0:    f89d0003    ....    LDRB     r0,[sp,#3]
        0x08002fe4:    2819        .(      CMP      r0,#0x19
        0x08002fe6:    d104        ..      BNE      0x8002ff2 ; USBPD_PHY_SOPDetect + 130
        0x08002fe8:    2005        .       MOVS     r0,#5
        0x08002fea:    4903        .I      LDR      r1,[pc,#12] ; [0x8002ff8] = 0x20000024
        0x08002fec:    7008        .p      STRB     r0,[r1,#0]
        0x08002fee:    2000        .       MOVS     r0,#0
        0x08002ff0:    e7e9        ..      B        0x8002fc6 ; USBPD_PHY_SOPDetect + 86
        0x08002ff2:    2002        .       MOVS     r0,#2
        0x08002ff4:    e7e7        ..      B        0x8002fc6 ; USBPD_PHY_SOPDetect + 86
    $d
        0x08002ff6:    0000        ..      DCW    0
        0x08002ff8:    20000024    $..     DCD    536870948
    $t
    i.USBPD_PHY_SendBit
    USBPD_PHY_SendBit
        0x08002ffc:    b570        p.      PUSH     {r4-r6,lr}
        0x08002ffe:    4605        .F      MOV      r5,r0
        0x08003000:    460e        .F      MOV      r6,r1
        0x08003002:    2400        .$      MOVS     r4,#0
        0x08003004:    e01e        ..      B        0x8003044 ; USBPD_PHY_SendBit + 72
        0x08003006:    5d28        (]      LDRB     r0,[r5,r4]
        0x08003008:    b190        ..      CBZ      r0,0x8003030 ; USBPD_PHY_SendBit + 52
        0x0800300a:    2101        .!      MOVS     r1,#1
        0x0800300c:    4813        .H      LDR      r0,[pc,#76] ; [0x800305c] = 0x48000800
        0x0800300e:    f7fefb07    ....    BL       LL_GPIO_TogglePin ; 0x8001620
        0x08003012:    2000        .       MOVS     r0,#0
        0x08003014:    e000        ..      B        0x8003018 ; USBPD_PHY_SendBit + 28
        0x08003016:    1c40        @.      ADDS     r0,r0,#1
        0x08003018:    280e        .(      CMP      r0,#0xe
        0x0800301a:    d3fc        ..      BCC      0x8003016 ; USBPD_PHY_SendBit + 26
        0x0800301c:    2101        .!      MOVS     r1,#1
        0x0800301e:    480f        .H      LDR      r0,[pc,#60] ; [0x800305c] = 0x48000800
        0x08003020:    f7fefafe    ....    BL       LL_GPIO_TogglePin ; 0x8001620
        0x08003024:    2000        .       MOVS     r0,#0
        0x08003026:    e000        ..      B        0x800302a ; USBPD_PHY_SendBit + 46
        0x08003028:    1c40        @.      ADDS     r0,r0,#1
        0x0800302a:    280c        .(      CMP      r0,#0xc
        0x0800302c:    d3fc        ..      BCC      0x8003028 ; USBPD_PHY_SendBit + 44
        0x0800302e:    e008        ..      B        0x8003042 ; USBPD_PHY_SendBit + 70
        0x08003030:    2101        .!      MOVS     r1,#1
        0x08003032:    480a        .H      LDR      r0,[pc,#40] ; [0x800305c] = 0x48000800
        0x08003034:    f7fefaf4    ....    BL       LL_GPIO_TogglePin ; 0x8001620
        0x08003038:    2000        .       MOVS     r0,#0
        0x0800303a:    e000        ..      B        0x800303e ; USBPD_PHY_SendBit + 66
        0x0800303c:    1c40        @.      ADDS     r0,r0,#1
        0x0800303e:    281e        .(      CMP      r0,#0x1e
        0x08003040:    d3fc        ..      BCC      0x800303c ; USBPD_PHY_SendBit + 64
        0x08003042:    1c64        d.      ADDS     r4,r4,#1
        0x08003044:    42b4        .B      CMP      r4,r6
        0x08003046:    d3de        ..      BCC      0x8003006 ; USBPD_PHY_SendBit + 10
        0x08003048:    2000        .       MOVS     r0,#0
        0x0800304a:    e000        ..      B        0x800304e ; USBPD_PHY_SendBit + 82
        0x0800304c:    1c40        @.      ADDS     r0,r0,#1
        0x0800304e:    2828        ((      CMP      r0,#0x28
        0x08003050:    d3fc        ..      BCC      0x800304c ; USBPD_PHY_SendBit + 80
        0x08003052:    2001        .       MOVS     r0,#1
        0x08003054:    4901        .I      LDR      r1,[pc,#4] ; [0x800305c] = 0x48000800
        0x08003056:    6188        .a      STR      r0,[r1,#0x18]
        0x08003058:    bf00        ..      NOP      
        0x0800305a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x0800305c:    48000800    ...H    DCD    1207961600
    $t
    i.USBPD_PHY_SetMessage
    USBPD_PHY_SetMessage
        0x08003060:    b570        p.      PUSH     {r4-r6,lr}
        0x08003062:    4605        .F      MOV      r5,r0
        0x08003064:    460c        .F      MOV      r4,r1
        0x08003066:    88a8        ..      LDRH     r0,[r5,#4]
        0x08003068:    f3c03602    ...6    UBFX     r6,r0,#12,#3
        0x0800306c:    7828        (x      LDRB     r0,[r5,#0]
        0x0800306e:    b110        ..      CBZ      r0,0x8003076 ; USBPD_PHY_SetMessage + 22
        0x08003070:    2805        .(      CMP      r0,#5
        0x08003072:    d157        W.      BNE      0x8003124 ; USBPD_PHY_SetMessage + 196
        0x08003074:    e04f        O.      B        0x8003116 ; USBPD_PHY_SetMessage + 182
        0x08003076:    eb060086    ....    ADD      r0,r6,r6,LSL #2
        0x0800307a:    2197        .!      MOVS     r1,#0x97
        0x0800307c:    eb0100c0    ....    ADD      r0,r1,r0,LSL #3
        0x08003080:    6020         `      STR      r0,[r4,#0]
        0x08003082:    2040        @       MOVS     r0,#0x40
        0x08003084:    6060        ``      STR      r0,[r4,#4]
        0x08003086:    2000        .       MOVS     r0,#0
        0x08003088:    7220         r      STRB     r0,[r4,#8]
        0x0800308a:    2002        .       MOVS     r0,#2
        0x0800308c:    eb000086    ....    ADD      r0,r0,r6,LSL #2
        0x08003090:    60e0        .`      STR      r0,[r4,#0xc]
        0x08003092:    7928        (y      LDRB     r0,[r5,#4]
        0x08003094:    7420         t      STRB     r0,[r4,#0x10]
        0x08003096:    88a8        ..      LDRH     r0,[r5,#4]
        0x08003098:    0a01        ..      LSRS     r1,r0,#8
        0x0800309a:    7461        at      STRB     r1,[r4,#0x11]
        0x0800309c:    2000        .       MOVS     r0,#0
        0x0800309e:    e02e        ..      B        0x80030fe ; USBPD_PHY_SetMessage + 158
        0x080030a0:    f1050108    ....    ADD      r1,r5,#8
        0x080030a4:    f8112020    ..      LDRB     r2,[r1,r0,LSL #2]
        0x080030a8:    2102        .!      MOVS     r1,#2
        0x080030aa:    eb010380    ....    ADD      r3,r1,r0,LSL #2
        0x080030ae:    f1040110    ....    ADD      r1,r4,#0x10
        0x080030b2:    54ca        .T      STRB     r2,[r1,r3]
        0x080030b4:    f1050108    ....    ADD      r1,r5,#8
        0x080030b8:    f8311020    1. .    LDRH     r1,[r1,r0,LSL #2]
        0x080030bc:    f3c12307    ...#    UBFX     r3,r1,#8,#8
        0x080030c0:    2102        .!      MOVS     r1,#2
        0x080030c2:    eb010180    ....    ADD      r1,r1,r0,LSL #2
        0x080030c6:    1c49        I.      ADDS     r1,r1,#1
        0x080030c8:    f1040210    ....    ADD      r2,r4,#0x10
        0x080030cc:    5453        ST      STRB     r3,[r2,r1]
        0x080030ce:    f1050108    ....    ADD      r1,r5,#8
        0x080030d2:    f8511020    Q. .    LDR      r1,[r1,r0,LSL #2]
        0x080030d6:    f3c14307    ...C    UBFX     r3,r1,#16,#8
        0x080030da:    2102        .!      MOVS     r1,#2
        0x080030dc:    eb010180    ....    ADD      r1,r1,r0,LSL #2
        0x080030e0:    1c89        ..      ADDS     r1,r1,#2
        0x080030e2:    5453        ST      STRB     r3,[r2,r1]
        0x080030e4:    f1050108    ....    ADD      r1,r5,#8
        0x080030e8:    f8511020    Q. .    LDR      r1,[r1,r0,LSL #2]
        0x080030ec:    0e09        ..      LSRS     r1,r1,#24
        0x080030ee:    2202        ."      MOVS     r2,#2
        0x080030f0:    eb020280    ....    ADD      r2,r2,r0,LSL #2
        0x080030f4:    1cd2        ..      ADDS     r2,r2,#3
        0x080030f6:    f1040310    ....    ADD      r3,r4,#0x10
        0x080030fa:    5499        .T      STRB     r1,[r3,r2]
        0x080030fc:    1c40        @.      ADDS     r0,r0,#1
        0x080030fe:    42b0        .B      CMP      r0,r6
        0x08003100:    d3ce        ..      BCC      0x80030a0 ; USBPD_PHY_SetMessage + 64
        0x08003102:    f1040010    ....    ADD      r0,r4,#0x10
        0x08003106:    68e1        .h      LDR      r1,[r4,#0xc]
        0x08003108:    f7fffd00    ....    BL       USBPD_PHY_CRC32Generate ; 0x8002b0c
        0x0800310c:    6320         c      STR      r0,[r4,#0x30]
        0x0800310e:    2001        .       MOVS     r0,#1
        0x08003110:    f8840034    ..4.    STRB     r0,[r4,#0x34]
        0x08003114:    e007        ..      B        0x8003126 ; USBPD_PHY_SetMessage + 198
        0x08003116:    2056        V       MOVS     r0,#0x56
        0x08003118:    6020         `      STR      r0,[r4,#0]
        0x0800311a:    2040        @       MOVS     r0,#0x40
        0x0800311c:    6060        ``      STR      r0,[r4,#4]
        0x0800311e:    2005        .       MOVS     r0,#5
        0x08003120:    7220         r      STRB     r0,[r4,#8]
        0x08003122:    e000        ..      B        0x8003126 ; USBPD_PHY_SetMessage + 198
        0x08003124:    bf00        ..      NOP      
        0x08003126:    bf00        ..      NOP      
        0x08003128:    bd70        p.      POP      {r4-r6,pc}
        0x0800312a:    0000        ..      MOVS     r0,r0
    i.USBPD_ProtocolLayerReset
    USBPD_ProtocolLayerReset
        0x0800312c:    2000        .       MOVS     r0,#0
        0x0800312e:    4906        .I      LDR      r1,[pc,#24] ; [0x8003148] = 0x200001c4
        0x08003130:    7008        .p      STRB     r0,[r1,#0]
        0x08003132:    4906        .I      LDR      r1,[pc,#24] ; [0x800314c] = 0x200001c8
        0x08003134:    7008        .p      STRB     r0,[r1,#0]
        0x08003136:    4906        .I      LDR      r1,[pc,#24] ; [0x8003150] = 0x200001c9
        0x08003138:    7008        .p      STRB     r0,[r1,#0]
        0x0800313a:    4906        .I      LDR      r1,[pc,#24] ; [0x8003154] = 0x200001ca
        0x0800313c:    7008        .p      STRB     r0,[r1,#0]
        0x0800313e:    2001        .       MOVS     r0,#1
        0x08003140:    4905        .I      LDR      r1,[pc,#20] ; [0x8003158] = 0x200001cb
        0x08003142:    7008        .p      STRB     r0,[r1,#0]
        0x08003144:    2000        .       MOVS     r0,#0
        0x08003146:    4770        pG      BX       lr
    $d
        0x08003148:    200001c4    ...     DCD    536871364
        0x0800314c:    200001c8    ...     DCD    536871368
        0x08003150:    200001c9    ...     DCD    536871369
        0x08003154:    200001ca    ...     DCD    536871370
        0x08003158:    200001cb    ...     DCD    536871371
    $t
    i.USBPD_Send_ControlMessage
    USBPD_Send_ControlMessage
        0x0800315c:    b510        ..      PUSH     {r4,lr}
        0x0800315e:    4604        .F      MOV      r4,r0
        0x08003160:    2c01        .,      CMP      r4,#1
        0x08003162:    d104        ..      BNE      0x800316e ; USBPD_Send_ControlMessage + 18
        0x08003164:    480d        .H      LDR      r0,[pc,#52] ; [0x800319c] = 0x200001c5
        0x08003166:    7800        .x      LDRB     r0,[r0,#0]
        0x08003168:    490d        .I      LDR      r1,[pc,#52] ; [0x80031a0] = 0x200001c4
        0x0800316a:    7008        .p      STRB     r0,[r1,#0]
        0x0800316c:    e001        ..      B        0x8003172 ; USBPD_Send_ControlMessage + 22
        0x0800316e:    f7fffc05    ....    BL       USBPD_IncreaseTransMsgID ; 0x800297c
        0x08003172:    4a0c        .J      LDR      r2,[pc,#48] ; [0x80031a4] = 0x200010e0
        0x08003174:    480a        .H      LDR      r0,[pc,#40] ; [0x80031a0] = 0x200001c4
        0x08003176:    7801        .x      LDRB     r1,[r0,#0]
        0x08003178:    4620         F      MOV      r0,r4
        0x0800317a:    f000f885    ....    BL       USBPD_SetMessage_Control ; 0x8003288
        0x0800317e:    490a        .I      LDR      r1,[pc,#40] ; [0x80031a8] = 0x20001084
        0x08003180:    4808        .H      LDR      r0,[pc,#32] ; [0x80031a4] = 0x200010e0
        0x08003182:    f7ffff6d    ..m.    BL       USBPD_PHY_SetMessage ; 0x8003060
        0x08003186:    4909        .I      LDR      r1,[pc,#36] ; [0x80031ac] = 0x20000e58
        0x08003188:    4807        .H      LDR      r0,[pc,#28] ; [0x80031a8] = 0x20001084
        0x0800318a:    f7fffdd9    ....    BL       USBPD_PHY_EncodeMessage ; 0x8002d40
        0x0800318e:    4808        .H      LDR      r0,[pc,#32] ; [0x80031b0] = 0x200001a8
        0x08003190:    6801        .h      LDR      r1,[r0,#0]
        0x08003192:    4806        .H      LDR      r0,[pc,#24] ; [0x80031ac] = 0x20000e58
        0x08003194:    f7ffff32    ..2.    BL       USBPD_PHY_SendBit ; 0x8002ffc
        0x08003198:    2000        .       MOVS     r0,#0
        0x0800319a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800319c:    200001c5    ...     DCD    536871365
        0x080031a0:    200001c4    ...     DCD    536871364
        0x080031a4:    200010e0    ...     DCD    536875232
        0x080031a8:    20001084    ...     DCD    536875140
        0x080031ac:    20000e58    X..     DCD    536874584
        0x080031b0:    200001a8    ...     DCD    536871336
    $t
    i.USBPD_Send_HardReset
    USBPD_Send_HardReset
        0x080031b4:    b510        ..      PUSH     {r4,lr}
        0x080031b6:    4809        .H      LDR      r0,[pc,#36] ; [0x80031dc] = 0x200010e0
        0x080031b8:    f000f89a    ....    BL       USBPD_SetMessage_HardReset ; 0x80032f0
        0x080031bc:    4908        .I      LDR      r1,[pc,#32] ; [0x80031e0] = 0x20001084
        0x080031be:    4807        .H      LDR      r0,[pc,#28] ; [0x80031dc] = 0x200010e0
        0x080031c0:    f7ffff4e    ..N.    BL       USBPD_PHY_SetMessage ; 0x8003060
        0x080031c4:    4907        .I      LDR      r1,[pc,#28] ; [0x80031e4] = 0x20000e58
        0x080031c6:    4806        .H      LDR      r0,[pc,#24] ; [0x80031e0] = 0x20001084
        0x080031c8:    f7fffdba    ....    BL       USBPD_PHY_EncodeMessage ; 0x8002d40
        0x080031cc:    4806        .H      LDR      r0,[pc,#24] ; [0x80031e8] = 0x200001a8
        0x080031ce:    6801        .h      LDR      r1,[r0,#0]
        0x080031d0:    4804        .H      LDR      r0,[pc,#16] ; [0x80031e4] = 0x20000e58
        0x080031d2:    f7ffff13    ....    BL       USBPD_PHY_SendBit ; 0x8002ffc
        0x080031d6:    2000        .       MOVS     r0,#0
        0x080031d8:    bd10        ..      POP      {r4,pc}
    $d
        0x080031da:    0000        ..      DCW    0
        0x080031dc:    200010e0    ...     DCD    536875232
        0x080031e0:    20001084    ...     DCD    536875140
        0x080031e4:    20000e58    X..     DCD    536874584
        0x080031e8:    200001a8    ...     DCD    536871336
    $t
    i.USBPD_Send_Request
    USBPD_Send_Request
        0x080031ec:    b501        ..      PUSH     {r0,lr}
        0x080031ee:    b082        ..      SUB      sp,sp,#8
        0x080031f0:    f7fffbc4    ....    BL       USBPD_IncreaseTransMsgID ; 0x800297c
        0x080031f4:    480b        .H      LDR      r0,[pc,#44] ; [0x8003224] = 0x200010e0
        0x080031f6:    2301        .#      MOVS     r3,#1
        0x080031f8:    aa02        ..      ADD      r2,sp,#8
        0x080031fa:    9000        ..      STR      r0,[sp,#0]
        0x080031fc:    480a        .H      LDR      r0,[pc,#40] ; [0x8003228] = 0x200001c4
        0x080031fe:    7801        .x      LDRB     r1,[r0,#0]
        0x08003200:    2002        .       MOVS     r0,#2
        0x08003202:    f000f852    ..R.    BL       USBPD_SetMessage_Data ; 0x80032aa
        0x08003206:    4909        .I      LDR      r1,[pc,#36] ; [0x800322c] = 0x20001084
        0x08003208:    4806        .H      LDR      r0,[pc,#24] ; [0x8003224] = 0x200010e0
        0x0800320a:    f7ffff29    ..).    BL       USBPD_PHY_SetMessage ; 0x8003060
        0x0800320e:    4908        .I      LDR      r1,[pc,#32] ; [0x8003230] = 0x20000e58
        0x08003210:    4806        .H      LDR      r0,[pc,#24] ; [0x800322c] = 0x20001084
        0x08003212:    f7fffd95    ....    BL       USBPD_PHY_EncodeMessage ; 0x8002d40
        0x08003216:    4807        .H      LDR      r0,[pc,#28] ; [0x8003234] = 0x200001a8
        0x08003218:    6801        .h      LDR      r1,[r0,#0]
        0x0800321a:    4805        .H      LDR      r0,[pc,#20] ; [0x8003230] = 0x20000e58
        0x0800321c:    f7fffeee    ....    BL       USBPD_PHY_SendBit ; 0x8002ffc
        0x08003220:    2000        .       MOVS     r0,#0
        0x08003222:    bd0e        ..      POP      {r1-r3,pc}
    $d
        0x08003224:    200010e0    ...     DCD    536875232
        0x08003228:    200001c4    ...     DCD    536871364
        0x0800322c:    20001084    ...     DCD    536875140
        0x08003230:    20000e58    X..     DCD    536874584
        0x08003234:    200001a8    ...     DCD    536871336
    $t
    i.USBPD_Send_SinkCap
    USBPD_Send_SinkCap
        0x08003238:    b538        8.      PUSH     {r3-r5,lr}
        0x0800323a:    4604        .F      MOV      r4,r0
        0x0800323c:    460d        .F      MOV      r5,r1
        0x0800323e:    f7fffb9d    ....    BL       USBPD_IncreaseTransMsgID ; 0x800297c
        0x08003242:    480c        .H      LDR      r0,[pc,#48] ; [0x8003274] = 0x200010e0
        0x08003244:    b2eb        ..      UXTB     r3,r5
        0x08003246:    4622        "F      MOV      r2,r4
        0x08003248:    9000        ..      STR      r0,[sp,#0]
        0x0800324a:    480b        .H      LDR      r0,[pc,#44] ; [0x8003278] = 0x200001c4
        0x0800324c:    7801        .x      LDRB     r1,[r0,#0]
        0x0800324e:    2004        .       MOVS     r0,#4
        0x08003250:    f000f82b    ..+.    BL       USBPD_SetMessage_Data ; 0x80032aa
        0x08003254:    4909        .I      LDR      r1,[pc,#36] ; [0x800327c] = 0x20001084
        0x08003256:    4807        .H      LDR      r0,[pc,#28] ; [0x8003274] = 0x200010e0
        0x08003258:    f7ffff02    ....    BL       USBPD_PHY_SetMessage ; 0x8003060
        0x0800325c:    4908        .I      LDR      r1,[pc,#32] ; [0x8003280] = 0x20000e58
        0x0800325e:    4807        .H      LDR      r0,[pc,#28] ; [0x800327c] = 0x20001084
        0x08003260:    f7fffd6e    ..n.    BL       USBPD_PHY_EncodeMessage ; 0x8002d40
        0x08003264:    4807        .H      LDR      r0,[pc,#28] ; [0x8003284] = 0x200001a8
        0x08003266:    6801        .h      LDR      r1,[r0,#0]
        0x08003268:    4805        .H      LDR      r0,[pc,#20] ; [0x8003280] = 0x20000e58
        0x0800326a:    f7fffec7    ....    BL       USBPD_PHY_SendBit ; 0x8002ffc
        0x0800326e:    2000        .       MOVS     r0,#0
        0x08003270:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x08003272:    0000        ..      DCW    0
        0x08003274:    200010e0    ...     DCD    536875232
        0x08003278:    200001c4    ...     DCD    536871364
        0x0800327c:    20001084    ...     DCD    536875140
        0x08003280:    20000e58    X..     DCD    536874584
        0x08003284:    200001a8    ...     DCD    536871336
    $t
    i.USBPD_SetMessage_Control
    USBPD_SetMessage_Control
        0x08003288:    2300        .#      MOVS     r3,#0
        0x0800328a:    7013        .p      STRB     r3,[r2,#0]
        0x0800328c:    8093        ..      STRH     r3,[r2,#4]
        0x0800328e:    6853        Sh      LDR      r3,[r2,#4]
        0x08003290:    f3600304    `...    BFI      r3,r0,#0,#5
        0x08003294:    6053        S`      STR      r3,[r2,#4]
        0x08003296:    6853        Sh      LDR      r3,[r2,#4]
        0x08003298:    f02303c0    #...    BIC      r3,r3,#0xc0
        0x0800329c:    3340        @3      ADDS     r3,r3,#0x40
        0x0800329e:    6053        S`      STR      r3,[r2,#4]
        0x080032a0:    6853        Sh      LDR      r3,[r2,#4]
        0x080032a2:    f361234b    a.K#    BFI      r3,r1,#9,#3
        0x080032a6:    6053        S`      STR      r3,[r2,#4]
        0x080032a8:    4770        pG      BX       lr
    i.USBPD_SetMessage_Data
    USBPD_SetMessage_Data
        0x080032aa:    b5f0        ..      PUSH     {r4-r7,lr}
        0x080032ac:    4605        .F      MOV      r5,r0
        0x080032ae:    9c05        ..      LDR      r4,[sp,#0x14]
        0x080032b0:    2000        .       MOVS     r0,#0
        0x080032b2:    7020         p      STRB     r0,[r4,#0]
        0x080032b4:    80a0        ..      STRH     r0,[r4,#4]
        0x080032b6:    6860        `h      LDR      r0,[r4,#4]
        0x080032b8:    f3650004    e...    BFI      r0,r5,#0,#5
        0x080032bc:    6060        ``      STR      r0,[r4,#4]
        0x080032be:    6860        `h      LDR      r0,[r4,#4]
        0x080032c0:    f02000c0     ...    BIC      r0,r0,#0xc0
        0x080032c4:    3040        @0      ADDS     r0,r0,#0x40
        0x080032c6:    6060        ``      STR      r0,[r4,#4]
        0x080032c8:    6860        `h      LDR      r0,[r4,#4]
        0x080032ca:    f361204b    a.K     BFI      r0,r1,#9,#3
        0x080032ce:    6060        ``      STR      r0,[r4,#4]
        0x080032d0:    6860        `h      LDR      r0,[r4,#4]
        0x080032d2:    f363300e    c..0    BFI      r0,r3,#12,#3
        0x080032d6:    6060        ``      STR      r0,[r4,#4]
        0x080032d8:    2000        .       MOVS     r0,#0
        0x080032da:    e006        ..      B        0x80032ea ; USBPD_SetMessage_Data + 64
        0x080032dc:    f8527020    R. p    LDR      r7,[r2,r0,LSL #2]
        0x080032e0:    f1040608    ....    ADD      r6,r4,#8
        0x080032e4:    f8467020    F. p    STR      r7,[r6,r0,LSL #2]
        0x080032e8:    1c40        @.      ADDS     r0,r0,#1
        0x080032ea:    4298        .B      CMP      r0,r3
        0x080032ec:    d3f6        ..      BCC      0x80032dc ; USBPD_SetMessage_Data + 50
        0x080032ee:    bdf0        ..      POP      {r4-r7,pc}
    i.USBPD_SetMessage_HardReset
    USBPD_SetMessage_HardReset
        0x080032f0:    2105        .!      MOVS     r1,#5
        0x080032f2:    7001        .p      STRB     r1,[r0,#0]
        0x080032f4:    4770        pG      BX       lr
    i.USBPD_StateDiscovery_Action
    USBPD_StateDiscovery_Action
        0x080032f6:    b510        ..      PUSH     {r4,lr}
        0x080032f8:    4604        .F      MOV      r4,r0
        0x080032fa:    f7fdf939    ..9.    BL       GetInstantVBUSVoltage ; 0x8000570
        0x080032fe:    f5b06f7a    ..zo    CMP      r0,#0xfa0
        0x08003302:    dd05        ..      BLE      0x8003310 ; USBPD_StateDiscovery_Action + 26
        0x08003304:    2001        .       MOVS     r0,#1
        0x08003306:    7020         p      STRB     r0,[r4,#0]
        0x08003308:    f7fffac2    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x0800330c:    2001        .       MOVS     r0,#1
        0x0800330e:    bd10        ..      POP      {r4,pc}
        0x08003310:    2000        .       MOVS     r0,#0
        0x08003312:    e7fc        ..      B        0x800330e ; USBPD_StateDiscovery_Action + 24
    i.USBPD_StateDiscovery_Entry
    USBPD_StateDiscovery_Entry
        0x08003314:    4770        pG      BX       lr
    i.USBPD_StateDiscovery_Exit
    USBPD_StateDiscovery_Exit
        0x08003316:    4770        pG      BX       lr
    i.USBPD_StateGetSrcCap_Aciton
    USBPD_StateGetSrcCap_Aciton
        0x08003318:    b510        ..      PUSH     {r4,lr}
        0x0800331a:    4604        .F      MOV      r4,r0
        0x0800331c:    f7fdfda8    ....    BL       IsTimer1Expired ; 0x8000e70
        0x08003320:    b1b8        ..      CBZ      r0,0x8003352 ; USBPD_StateGetSrcCap_Aciton + 58
        0x08003322:    4825        %H      LDR      r0,[pc,#148] ; [0x80033b8] = 0x20000004
        0x08003324:    6800        .h      LDR      r0,[r0,#0]
        0x08003326:    1c40        @.      ADDS     r0,r0,#1
        0x08003328:    4923        #I      LDR      r1,[pc,#140] ; [0x80033b8] = 0x20000004
        0x0800332a:    6008        .`      STR      r0,[r1,#0]
        0x0800332c:    4608        .F      MOV      r0,r1
        0x0800332e:    6800        .h      LDR      r0,[r0,#0]
        0x08003330:    2801        .(      CMP      r0,#1
        0x08003332:    d107        ..      BNE      0x8003344 ; USBPD_StateGetSrcCap_Aciton + 44
        0x08003334:    2013        .       MOVS     r0,#0x13
        0x08003336:    7020         p      STRB     r0,[r4,#0]
        0x08003338:    2007        .       MOVS     r0,#7
        0x0800333a:    f7ffff0f    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x0800333e:    f7fff841    ..A.    BL       RestartTimer1 ; 0x80023c4
        0x08003342:    e004        ..      B        0x800334e ; USBPD_StateGetSrcCap_Aciton + 54
        0x08003344:    2000        .       MOVS     r0,#0
        0x08003346:    491c        .I      LDR      r1,[pc,#112] ; [0x80033b8] = 0x20000004
        0x08003348:    6008        .`      STR      r0,[r1,#0]
        0x0800334a:    2014        .       MOVS     r0,#0x14
        0x0800334c:    7020         p      STRB     r0,[r4,#0]
        0x0800334e:    2001        .       MOVS     r0,#1
        0x08003350:    bd10        ..      POP      {r4,pc}
        0x08003352:    481a        .H      LDR      r0,[pc,#104] ; [0x80033bc] = 0x200001a4
        0x08003354:    7800        .x      LDRB     r0,[r0,#0]
        0x08003356:    b360        `.      CBZ      r0,0x80033b2 ; USBPD_StateGetSrcCap_Aciton + 154
        0x08003358:    2000        .       MOVS     r0,#0
        0x0800335a:    4918        .I      LDR      r1,[pc,#96] ; [0x80033bc] = 0x200001a4
        0x0800335c:    7008        .p      STRB     r0,[r1,#0]
        0x0800335e:    4818        .H      LDR      r0,[pc,#96] ; [0x80033c0] = 0x2000104c
        0x08003360:    f7fffc06    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003364:    bb08        ..      CBNZ     r0,0x80033aa ; USBPD_StateGetSrcCap_Aciton + 146
        0x08003366:    4917        .I      LDR      r1,[pc,#92] ; [0x80033c4] = 0x200010bc
        0x08003368:    4815        .H      LDR      r0,[pc,#84] ; [0x80033c0] = 0x2000104c
        0x0800336a:    f7fffaa1    ....    BL       USBPD_GetMessage ; 0x80028b0
        0x0800336e:    4815        .H      LDR      r0,[pc,#84] ; [0x80033c4] = 0x200010bc
        0x08003370:    f7fffad4    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003374:    4914        .I      LDR      r1,[pc,#80] ; [0x80033c8] = 0x20000000
        0x08003376:    6008        .`      STR      r0,[r1,#0]
        0x08003378:    4608        .F      MOV      r0,r1
        0x0800337a:    6800        .h      LDR      r0,[r0,#0]
        0x0800337c:    2801        .(      CMP      r0,#1
        0x0800337e:    d002        ..      BEQ      0x8003386 ; USBPD_StateGetSrcCap_Aciton + 110
        0x08003380:    2803        .(      CMP      r0,#3
        0x08003382:    d10e        ..      BNE      0x80033a2 ; USBPD_StateGetSrcCap_Aciton + 138
        0x08003384:    e002        ..      B        0x800338c ; USBPD_StateGetSrcCap_Aciton + 116
        0x08003386:    200f        .       MOVS     r0,#0xf
        0x08003388:    7020         p      STRB     r0,[r4,#0]
        0x0800338a:    e00d        ..      B        0x80033a8 ; USBPD_StateGetSrcCap_Aciton + 144
        0x0800338c:    480d        .H      LDR      r0,[pc,#52] ; [0x80033c4] = 0x200010bc
        0x0800338e:    8880        ..      LDRH     r0,[r0,#4]
        0x08003390:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003394:    490d        .I      LDR      r1,[pc,#52] ; [0x80033cc] = 0x200001c4
        0x08003396:    7809        .x      LDRB     r1,[r1,#0]
        0x08003398:    4288        .B      CMP      r0,r1
        0x0800339a:    d101        ..      BNE      0x80033a0 ; USBPD_StateGetSrcCap_Aciton + 136
        0x0800339c:    200b        .       MOVS     r0,#0xb
        0x0800339e:    7020         p      STRB     r0,[r4,#0]
        0x080033a0:    e002        ..      B        0x80033a8 ; USBPD_StateGetSrcCap_Aciton + 144
        0x080033a2:    2008        .       MOVS     r0,#8
        0x080033a4:    7020         p      STRB     r0,[r4,#0]
        0x080033a6:    bf00        ..      NOP      
        0x080033a8:    bf00        ..      NOP      
        0x080033aa:    f7fffa71    ..q.    BL       USBPD_EnableDecoder ; 0x8002890
        0x080033ae:    2001        .       MOVS     r0,#1
        0x080033b0:    e7ce        ..      B        0x8003350 ; USBPD_StateGetSrcCap_Aciton + 56
        0x080033b2:    2000        .       MOVS     r0,#0
        0x080033b4:    e7cc        ..      B        0x8003350 ; USBPD_StateGetSrcCap_Aciton + 56
    $d
        0x080033b6:    0000        ..      DCW    0
        0x080033b8:    20000004    ...     DCD    536870916
        0x080033bc:    200001a4    ...     DCD    536871332
        0x080033c0:    2000104c    L..     DCD    536875084
        0x080033c4:    200010bc    ...     DCD    536875196
        0x080033c8:    20000000    ...     DCD    536870912
        0x080033cc:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_StateGetSrcCap_Entry
    USBPD_StateGetSrcCap_Entry
        0x080033d0:    b570        p.      PUSH     {r4-r6,lr}
        0x080033d2:    4604        .F      MOV      r4,r0
        0x080033d4:    460d        .F      MOV      r5,r1
        0x080033d6:    2007        .       MOVS     r0,#7
        0x080033d8:    f7fffec0    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x080033dc:    2001        .       MOVS     r0,#1
        0x080033de:    f7fefffb    ....    BL       StartTimer1 ; 0x80023d8
        0x080033e2:    bd70        p.      POP      {r4-r6,pc}
    i.USBPD_StateGetSrcCap_Exit
    USBPD_StateGetSrcCap_Exit
        0x080033e4:    b510        ..      PUSH     {r4,lr}
        0x080033e6:    f7fff81b    ....    BL       StopAllTimers ; 0x8002420
        0x080033ea:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateGiveSinkCap_Aciton
    USBPD_StateGiveSinkCap_Aciton
        0x080033ec:    b510        ..      PUSH     {r4,lr}
        0x080033ee:    4604        .F      MOV      r4,r0
        0x080033f0:    f7fdfd3e    ..>.    BL       IsTimer1Expired ; 0x8000e70
        0x080033f4:    b1c0        ..      CBZ      r0,0x8003428 ; USBPD_StateGiveSinkCap_Aciton + 60
        0x080033f6:    4825        %H      LDR      r0,[pc,#148] ; [0x800348c] = 0x20000004
        0x080033f8:    6800        .h      LDR      r0,[r0,#0]
        0x080033fa:    1c40        @.      ADDS     r0,r0,#1
        0x080033fc:    4923        #I      LDR      r1,[pc,#140] ; [0x800348c] = 0x20000004
        0x080033fe:    6008        .`      STR      r0,[r1,#0]
        0x08003400:    4608        .F      MOV      r0,r1
        0x08003402:    6800        .h      LDR      r0,[r0,#0]
        0x08003404:    2801        .(      CMP      r0,#1
        0x08003406:    d108        ..      BNE      0x800341a ; USBPD_StateGiveSinkCap_Aciton + 46
        0x08003408:    2013        .       MOVS     r0,#0x13
        0x0800340a:    7020         p      STRB     r0,[r4,#0]
        0x0800340c:    2102        .!      MOVS     r1,#2
        0x0800340e:    4820         H      LDR      r0,[pc,#128] ; [0x8003490] = 0x20000008
        0x08003410:    f7ffff12    ....    BL       USBPD_Send_SinkCap ; 0x8003238
        0x08003414:    f7feffd6    ....    BL       RestartTimer1 ; 0x80023c4
        0x08003418:    e004        ..      B        0x8003424 ; USBPD_StateGiveSinkCap_Aciton + 56
        0x0800341a:    2000        .       MOVS     r0,#0
        0x0800341c:    491b        .I      LDR      r1,[pc,#108] ; [0x800348c] = 0x20000004
        0x0800341e:    6008        .`      STR      r0,[r1,#0]
        0x08003420:    2014        .       MOVS     r0,#0x14
        0x08003422:    7020         p      STRB     r0,[r4,#0]
        0x08003424:    2001        .       MOVS     r0,#1
        0x08003426:    bd10        ..      POP      {r4,pc}
        0x08003428:    481a        .H      LDR      r0,[pc,#104] ; [0x8003494] = 0x200001a4
        0x0800342a:    7800        .x      LDRB     r0,[r0,#0]
        0x0800342c:    b360        `.      CBZ      r0,0x8003488 ; USBPD_StateGiveSinkCap_Aciton + 156
        0x0800342e:    2000        .       MOVS     r0,#0
        0x08003430:    4918        .I      LDR      r1,[pc,#96] ; [0x8003494] = 0x200001a4
        0x08003432:    7008        .p      STRB     r0,[r1,#0]
        0x08003434:    4818        .H      LDR      r0,[pc,#96] ; [0x8003498] = 0x2000104c
        0x08003436:    f7fffb9b    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x0800343a:    bb08        ..      CBNZ     r0,0x8003480 ; USBPD_StateGiveSinkCap_Aciton + 148
        0x0800343c:    4917        .I      LDR      r1,[pc,#92] ; [0x800349c] = 0x200010bc
        0x0800343e:    4816        .H      LDR      r0,[pc,#88] ; [0x8003498] = 0x2000104c
        0x08003440:    f7fffa36    ..6.    BL       USBPD_GetMessage ; 0x80028b0
        0x08003444:    4815        .H      LDR      r0,[pc,#84] ; [0x800349c] = 0x200010bc
        0x08003446:    f7fffa69    ..i.    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x0800344a:    4915        .I      LDR      r1,[pc,#84] ; [0x80034a0] = 0x20000000
        0x0800344c:    6008        .`      STR      r0,[r1,#0]
        0x0800344e:    4608        .F      MOV      r0,r1
        0x08003450:    6800        .h      LDR      r0,[r0,#0]
        0x08003452:    2801        .(      CMP      r0,#1
        0x08003454:    d002        ..      BEQ      0x800345c ; USBPD_StateGiveSinkCap_Aciton + 112
        0x08003456:    2803        .(      CMP      r0,#3
        0x08003458:    d10e        ..      BNE      0x8003478 ; USBPD_StateGiveSinkCap_Aciton + 140
        0x0800345a:    e002        ..      B        0x8003462 ; USBPD_StateGiveSinkCap_Aciton + 118
        0x0800345c:    200f        .       MOVS     r0,#0xf
        0x0800345e:    7020         p      STRB     r0,[r4,#0]
        0x08003460:    e00d        ..      B        0x800347e ; USBPD_StateGiveSinkCap_Aciton + 146
        0x08003462:    480e        .H      LDR      r0,[pc,#56] ; [0x800349c] = 0x200010bc
        0x08003464:    8880        ..      LDRH     r0,[r0,#4]
        0x08003466:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x0800346a:    490e        .I      LDR      r1,[pc,#56] ; [0x80034a4] = 0x200001c4
        0x0800346c:    7809        .x      LDRB     r1,[r1,#0]
        0x0800346e:    4288        .B      CMP      r0,r1
        0x08003470:    d101        ..      BNE      0x8003476 ; USBPD_StateGiveSinkCap_Aciton + 138
        0x08003472:    200a        .       MOVS     r0,#0xa
        0x08003474:    7020         p      STRB     r0,[r4,#0]
        0x08003476:    e002        ..      B        0x800347e ; USBPD_StateGiveSinkCap_Aciton + 146
        0x08003478:    2008        .       MOVS     r0,#8
        0x0800347a:    7020         p      STRB     r0,[r4,#0]
        0x0800347c:    bf00        ..      NOP      
        0x0800347e:    bf00        ..      NOP      
        0x08003480:    f7fffa06    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003484:    2001        .       MOVS     r0,#1
        0x08003486:    e7ce        ..      B        0x8003426 ; USBPD_StateGiveSinkCap_Aciton + 58
        0x08003488:    2000        .       MOVS     r0,#0
        0x0800348a:    e7cc        ..      B        0x8003426 ; USBPD_StateGiveSinkCap_Aciton + 58
    $d
        0x0800348c:    20000004    ...     DCD    536870916
        0x08003490:    20000008    ...     DCD    536870920
        0x08003494:    200001a4    ...     DCD    536871332
        0x08003498:    2000104c    L..     DCD    536875084
        0x0800349c:    200010bc    ...     DCD    536875196
        0x080034a0:    20000000    ...     DCD    536870912
        0x080034a4:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_StateGiveSinkCap_Entry
    USBPD_StateGiveSinkCap_Entry
        0x080034a8:    b570        p.      PUSH     {r4-r6,lr}
        0x080034aa:    4604        .F      MOV      r4,r0
        0x080034ac:    460d        .F      MOV      r5,r1
        0x080034ae:    2102        .!      MOVS     r1,#2
        0x080034b0:    4803        .H      LDR      r0,[pc,#12] ; [0x80034c0] = 0x20000008
        0x080034b2:    f7fffec1    ....    BL       USBPD_Send_SinkCap ; 0x8003238
        0x080034b6:    2001        .       MOVS     r0,#1
        0x080034b8:    f7feff8e    ....    BL       StartTimer1 ; 0x80023d8
        0x080034bc:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080034be:    0000        ..      DCW    0
        0x080034c0:    20000008    ...     DCD    536870920
    $t
    i.USBPD_StateGiveSinkCap_Exit
    USBPD_StateGiveSinkCap_Exit
        0x080034c4:    b510        ..      PUSH     {r4,lr}
        0x080034c6:    f7feffab    ....    BL       StopAllTimers ; 0x8002420
        0x080034ca:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateHardReset_Aciton
    USBPD_StateHardReset_Aciton
        0x080034cc:    b510        ..      PUSH     {r4,lr}
        0x080034ce:    4604        .F      MOV      r4,r0
        0x080034d0:    f7fdfcce    ....    BL       IsTimer1Expired ; 0x8000e70
        0x080034d4:    b1a0        ..      CBZ      r0,0x8003500 ; USBPD_StateHardReset_Aciton + 52
        0x080034d6:    4824        $H      LDR      r0,[pc,#144] ; [0x8003568] = 0x20000004
        0x080034d8:    6800        .h      LDR      r0,[r0,#0]
        0x080034da:    1c40        @.      ADDS     r0,r0,#1
        0x080034dc:    4922        "I      LDR      r1,[pc,#136] ; [0x8003568] = 0x20000004
        0x080034de:    6008        .`      STR      r0,[r1,#0]
        0x080034e0:    4608        .F      MOV      r0,r1
        0x080034e2:    6800        .h      LDR      r0,[r0,#0]
        0x080034e4:    2801        .(      CMP      r0,#1
        0x080034e6:    d104        ..      BNE      0x80034f2 ; USBPD_StateHardReset_Aciton + 38
        0x080034e8:    2013        .       MOVS     r0,#0x13
        0x080034ea:    7020         p      STRB     r0,[r4,#0]
        0x080034ec:    f7feff6a    ..j.    BL       RestartTimer1 ; 0x80023c4
        0x080034f0:    e004        ..      B        0x80034fc ; USBPD_StateHardReset_Aciton + 48
        0x080034f2:    2000        .       MOVS     r0,#0
        0x080034f4:    491c        .I      LDR      r1,[pc,#112] ; [0x8003568] = 0x20000004
        0x080034f6:    6008        .`      STR      r0,[r1,#0]
        0x080034f8:    2014        .       MOVS     r0,#0x14
        0x080034fa:    7020         p      STRB     r0,[r4,#0]
        0x080034fc:    2001        .       MOVS     r0,#1
        0x080034fe:    bd10        ..      POP      {r4,pc}
        0x08003500:    481a        .H      LDR      r0,[pc,#104] ; [0x800356c] = 0x200001a4
        0x08003502:    7800        .x      LDRB     r0,[r0,#0]
        0x08003504:    b370        p.      CBZ      r0,0x8003564 ; USBPD_StateHardReset_Aciton + 152
        0x08003506:    2000        .       MOVS     r0,#0
        0x08003508:    4918        .I      LDR      r1,[pc,#96] ; [0x800356c] = 0x200001a4
        0x0800350a:    7008        .p      STRB     r0,[r1,#0]
        0x0800350c:    4818        .H      LDR      r0,[pc,#96] ; [0x8003570] = 0x2000104c
        0x0800350e:    f7fffb2f    ../.    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003512:    bb08        ..      CBNZ     r0,0x8003558 ; USBPD_StateHardReset_Aciton + 140
        0x08003514:    4917        .I      LDR      r1,[pc,#92] ; [0x8003574] = 0x200010bc
        0x08003516:    4816        .H      LDR      r0,[pc,#88] ; [0x8003570] = 0x2000104c
        0x08003518:    f7fff9ca    ....    BL       USBPD_GetMessage ; 0x80028b0
        0x0800351c:    4815        .H      LDR      r0,[pc,#84] ; [0x8003574] = 0x200010bc
        0x0800351e:    f7fff9fd    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003522:    4915        .I      LDR      r1,[pc,#84] ; [0x8003578] = 0x20000000
        0x08003524:    6008        .`      STR      r0,[r1,#0]
        0x08003526:    4608        .F      MOV      r0,r1
        0x08003528:    6800        .h      LDR      r0,[r0,#0]
        0x0800352a:    2801        .(      CMP      r0,#1
        0x0800352c:    d002        ..      BEQ      0x8003534 ; USBPD_StateHardReset_Aciton + 104
        0x0800352e:    2803        .(      CMP      r0,#3
        0x08003530:    d10e        ..      BNE      0x8003550 ; USBPD_StateHardReset_Aciton + 132
        0x08003532:    e002        ..      B        0x800353a ; USBPD_StateHardReset_Aciton + 110
        0x08003534:    200f        .       MOVS     r0,#0xf
        0x08003536:    7020         p      STRB     r0,[r4,#0]
        0x08003538:    e00d        ..      B        0x8003556 ; USBPD_StateHardReset_Aciton + 138
        0x0800353a:    480e        .H      LDR      r0,[pc,#56] ; [0x8003574] = 0x200010bc
        0x0800353c:    8880        ..      LDRH     r0,[r0,#4]
        0x0800353e:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003542:    490e        .I      LDR      r1,[pc,#56] ; [0x800357c] = 0x200001c4
        0x08003544:    7809        .x      LDRB     r1,[r1,#0]
        0x08003546:    4288        .B      CMP      r0,r1
        0x08003548:    d101        ..      BNE      0x800354e ; USBPD_StateHardReset_Aciton + 130
        0x0800354a:    200b        .       MOVS     r0,#0xb
        0x0800354c:    7020         p      STRB     r0,[r4,#0]
        0x0800354e:    e002        ..      B        0x8003556 ; USBPD_StateHardReset_Aciton + 138
        0x08003550:    2008        .       MOVS     r0,#8
        0x08003552:    7020         p      STRB     r0,[r4,#0]
        0x08003554:    bf00        ..      NOP      
        0x08003556:    bf00        ..      NOP      
        0x08003558:    f7feff6c    ..l.    BL       StopTimer1 ; 0x8002434
        0x0800355c:    f7fff998    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003560:    2001        .       MOVS     r0,#1
        0x08003562:    e7cc        ..      B        0x80034fe ; USBPD_StateHardReset_Aciton + 50
        0x08003564:    2000        .       MOVS     r0,#0
        0x08003566:    e7ca        ..      B        0x80034fe ; USBPD_StateHardReset_Aciton + 50
    $d
        0x08003568:    20000004    ...     DCD    536870916
        0x0800356c:    200001a4    ...     DCD    536871332
        0x08003570:    2000104c    L..     DCD    536875084
        0x08003574:    200010bc    ...     DCD    536875196
        0x08003578:    20000000    ...     DCD    536870912
        0x0800357c:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_StateHardReset_Entry
    USBPD_StateHardReset_Entry
        0x08003580:    b570        p.      PUSH     {r4-r6,lr}
        0x08003582:    4604        .F      MOV      r4,r0
        0x08003584:    460d        .F      MOV      r5,r1
        0x08003586:    4809        .H      LDR      r0,[pc,#36] ; [0x80035ac] = 0x200001c6
        0x08003588:    7800        .x      LDRB     r0,[r0,#0]
        0x0800358a:    2802        .(      CMP      r0,#2
        0x0800358c:    da0a        ..      BGE      0x80035a4 ; USBPD_StateHardReset_Entry + 36
        0x0800358e:    4807        .H      LDR      r0,[pc,#28] ; [0x80035ac] = 0x200001c6
        0x08003590:    7800        .x      LDRB     r0,[r0,#0]
        0x08003592:    1c40        @.      ADDS     r0,r0,#1
        0x08003594:    4905        .I      LDR      r1,[pc,#20] ; [0x80035ac] = 0x200001c6
        0x08003596:    7008        .p      STRB     r0,[r1,#0]
        0x08003598:    f7fffe0c    ....    BL       USBPD_Send_HardReset ; 0x80031b4
        0x0800359c:    2001        .       MOVS     r0,#1
        0x0800359e:    f7feff1b    ....    BL       StartTimer1 ; 0x80023d8
        0x080035a2:    e002        ..      B        0x80035aa ; USBPD_StateHardReset_Entry + 42
        0x080035a4:    2000        .       MOVS     r0,#0
        0x080035a6:    4902        .I      LDR      r1,[pc,#8] ; [0x80035b0] = 0x200001cb
        0x080035a8:    7008        .p      STRB     r0,[r1,#0]
        0x080035aa:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080035ac:    200001c6    ...     DCD    536871366
        0x080035b0:    200001cb    ...     DCD    536871371
    $t
    i.USBPD_StateHardReset_Exit
    USBPD_StateHardReset_Exit
        0x080035b4:    b510        ..      PUSH     {r4,lr}
        0x080035b6:    f7feff33    ..3.    BL       StopAllTimers ; 0x8002420
        0x080035ba:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateNotSupported_Aciton
    USBPD_StateNotSupported_Aciton
        0x080035bc:    b510        ..      PUSH     {r4,lr}
        0x080035be:    4604        .F      MOV      r4,r0
        0x080035c0:    f7fdfc56    ..V.    BL       IsTimer1Expired ; 0x8000e70
        0x080035c4:    b1a0        ..      CBZ      r0,0x80035f0 ; USBPD_StateNotSupported_Aciton + 52
        0x080035c6:    4824        $H      LDR      r0,[pc,#144] ; [0x8003658] = 0x20000004
        0x080035c8:    6800        .h      LDR      r0,[r0,#0]
        0x080035ca:    1c40        @.      ADDS     r0,r0,#1
        0x080035cc:    4922        "I      LDR      r1,[pc,#136] ; [0x8003658] = 0x20000004
        0x080035ce:    6008        .`      STR      r0,[r1,#0]
        0x080035d0:    4608        .F      MOV      r0,r1
        0x080035d2:    6800        .h      LDR      r0,[r0,#0]
        0x080035d4:    2801        .(      CMP      r0,#1
        0x080035d6:    d104        ..      BNE      0x80035e2 ; USBPD_StateNotSupported_Aciton + 38
        0x080035d8:    2013        .       MOVS     r0,#0x13
        0x080035da:    7020         p      STRB     r0,[r4,#0]
        0x080035dc:    f7fefef2    ....    BL       RestartTimer1 ; 0x80023c4
        0x080035e0:    e004        ..      B        0x80035ec ; USBPD_StateNotSupported_Aciton + 48
        0x080035e2:    2000        .       MOVS     r0,#0
        0x080035e4:    491c        .I      LDR      r1,[pc,#112] ; [0x8003658] = 0x20000004
        0x080035e6:    6008        .`      STR      r0,[r1,#0]
        0x080035e8:    2014        .       MOVS     r0,#0x14
        0x080035ea:    7020         p      STRB     r0,[r4,#0]
        0x080035ec:    2001        .       MOVS     r0,#1
        0x080035ee:    bd10        ..      POP      {r4,pc}
        0x080035f0:    481a        .H      LDR      r0,[pc,#104] ; [0x800365c] = 0x200001a4
        0x080035f2:    7800        .x      LDRB     r0,[r0,#0]
        0x080035f4:    b370        p.      CBZ      r0,0x8003654 ; USBPD_StateNotSupported_Aciton + 152
        0x080035f6:    2000        .       MOVS     r0,#0
        0x080035f8:    4918        .I      LDR      r1,[pc,#96] ; [0x800365c] = 0x200001a4
        0x080035fa:    7008        .p      STRB     r0,[r1,#0]
        0x080035fc:    4818        .H      LDR      r0,[pc,#96] ; [0x8003660] = 0x2000104c
        0x080035fe:    f7fffab7    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003602:    bb08        ..      CBNZ     r0,0x8003648 ; USBPD_StateNotSupported_Aciton + 140
        0x08003604:    4917        .I      LDR      r1,[pc,#92] ; [0x8003664] = 0x200010bc
        0x08003606:    4816        .H      LDR      r0,[pc,#88] ; [0x8003660] = 0x2000104c
        0x08003608:    f7fff952    ..R.    BL       USBPD_GetMessage ; 0x80028b0
        0x0800360c:    4815        .H      LDR      r0,[pc,#84] ; [0x8003664] = 0x200010bc
        0x0800360e:    f7fff985    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003612:    4915        .I      LDR      r1,[pc,#84] ; [0x8003668] = 0x20000000
        0x08003614:    6008        .`      STR      r0,[r1,#0]
        0x08003616:    4608        .F      MOV      r0,r1
        0x08003618:    6800        .h      LDR      r0,[r0,#0]
        0x0800361a:    2801        .(      CMP      r0,#1
        0x0800361c:    d002        ..      BEQ      0x8003624 ; USBPD_StateNotSupported_Aciton + 104
        0x0800361e:    2803        .(      CMP      r0,#3
        0x08003620:    d10e        ..      BNE      0x8003640 ; USBPD_StateNotSupported_Aciton + 132
        0x08003622:    e002        ..      B        0x800362a ; USBPD_StateNotSupported_Aciton + 110
        0x08003624:    200f        .       MOVS     r0,#0xf
        0x08003626:    7020         p      STRB     r0,[r4,#0]
        0x08003628:    e00d        ..      B        0x8003646 ; USBPD_StateNotSupported_Aciton + 138
        0x0800362a:    480e        .H      LDR      r0,[pc,#56] ; [0x8003664] = 0x200010bc
        0x0800362c:    8880        ..      LDRH     r0,[r0,#4]
        0x0800362e:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003632:    490e        .I      LDR      r1,[pc,#56] ; [0x800366c] = 0x200001c4
        0x08003634:    7809        .x      LDRB     r1,[r1,#0]
        0x08003636:    4288        .B      CMP      r0,r1
        0x08003638:    d101        ..      BNE      0x800363e ; USBPD_StateNotSupported_Aciton + 130
        0x0800363a:    2012        .       MOVS     r0,#0x12
        0x0800363c:    7020         p      STRB     r0,[r4,#0]
        0x0800363e:    e002        ..      B        0x8003646 ; USBPD_StateNotSupported_Aciton + 138
        0x08003640:    2008        .       MOVS     r0,#8
        0x08003642:    7020         p      STRB     r0,[r4,#0]
        0x08003644:    bf00        ..      NOP      
        0x08003646:    bf00        ..      NOP      
        0x08003648:    f7fefef4    ....    BL       StopTimer1 ; 0x8002434
        0x0800364c:    f7fff920    .. .    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003650:    2001        .       MOVS     r0,#1
        0x08003652:    e7cc        ..      B        0x80035ee ; USBPD_StateNotSupported_Aciton + 50
        0x08003654:    2000        .       MOVS     r0,#0
        0x08003656:    e7ca        ..      B        0x80035ee ; USBPD_StateNotSupported_Aciton + 50
    $d
        0x08003658:    20000004    ...     DCD    536870916
        0x0800365c:    200001a4    ...     DCD    536871332
        0x08003660:    2000104c    L..     DCD    536875084
        0x08003664:    200010bc    ...     DCD    536875196
        0x08003668:    20000000    ...     DCD    536870912
        0x0800366c:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_StateNotSupported_Entry
    USBPD_StateNotSupported_Entry
        0x08003670:    b570        p.      PUSH     {r4-r6,lr}
        0x08003672:    4604        .F      MOV      r4,r0
        0x08003674:    460d        .F      MOV      r5,r1
        0x08003676:    2010        .       MOVS     r0,#0x10
        0x08003678:    f7fffd70    ..p.    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x0800367c:    2001        .       MOVS     r0,#1
        0x0800367e:    f7fefeab    ....    BL       StartTimer1 ; 0x80023d8
        0x08003682:    bd70        p.      POP      {r4-r6,pc}
    i.USBPD_StateNotSupported_Exit
    USBPD_StateNotSupported_Exit
        0x08003684:    4770        pG      BX       lr
        0x08003686:    0000        ..      MOVS     r0,r0
    i.USBPD_StateReady_Aciton
    USBPD_StateReady_Aciton
        0x08003688:    b510        ..      PUSH     {r4,lr}
        0x0800368a:    4604        .F      MOV      r4,r0
        0x0800368c:    f7fdfbf0    ....    BL       IsTimer1Expired ; 0x8000e70
        0x08003690:    b118        ..      CBZ      r0,0x800369a ; USBPD_StateReady_Aciton + 18
        0x08003692:    2013        .       MOVS     r0,#0x13
        0x08003694:    7020         p      STRB     r0,[r4,#0]
        0x08003696:    2001        .       MOVS     r0,#1
        0x08003698:    bd10        ..      POP      {r4,pc}
        0x0800369a:    4824        $H      LDR      r0,[pc,#144] ; [0x800372c] = 0x200001ca
        0x0800369c:    7800        .x      LDRB     r0,[r0,#0]
        0x0800369e:    b118        ..      CBZ      r0,0x80036a8 ; USBPD_StateReady_Aciton + 32
        0x080036a0:    200c        .       MOVS     r0,#0xc
        0x080036a2:    7020         p      STRB     r0,[r4,#0]
        0x080036a4:    2001        .       MOVS     r0,#1
        0x080036a6:    e7f7        ..      B        0x8003698 ; USBPD_StateReady_Aciton + 16
        0x080036a8:    4821        !H      LDR      r0,[pc,#132] ; [0x8003730] = 0x200001a4
        0x080036aa:    7800        .x      LDRB     r0,[r0,#0]
        0x080036ac:    2800        .(      CMP      r0,#0
        0x080036ae:    d03b        ;.      BEQ      0x8003728 ; USBPD_StateReady_Aciton + 160
        0x080036b0:    2000        .       MOVS     r0,#0
        0x080036b2:    491f        .I      LDR      r1,[pc,#124] ; [0x8003730] = 0x200001a4
        0x080036b4:    7008        .p      STRB     r0,[r1,#0]
        0x080036b6:    481f        .H      LDR      r0,[pc,#124] ; [0x8003734] = 0x2000104c
        0x080036b8:    f7fffa5a    ..Z.    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x080036bc:    bb80        ..      CBNZ     r0,0x8003720 ; USBPD_StateReady_Aciton + 152
        0x080036be:    491e        .I      LDR      r1,[pc,#120] ; [0x8003738] = 0x200010bc
        0x080036c0:    481c        .H      LDR      r0,[pc,#112] ; [0x8003734] = 0x2000104c
        0x080036c2:    f7fff8f5    ....    BL       USBPD_GetMessage ; 0x80028b0
        0x080036c6:    481c        .H      LDR      r0,[pc,#112] ; [0x8003738] = 0x200010bc
        0x080036c8:    f7fff928    ..(.    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x080036cc:    491b        .I      LDR      r1,[pc,#108] ; [0x800373c] = 0x20000000
        0x080036ce:    6008        .`      STR      r0,[r1,#0]
        0x080036d0:    4608        .F      MOV      r0,r1
        0x080036d2:    6800        .h      LDR      r0,[r0,#0]
        0x080036d4:    2801        .(      CMP      r0,#1
        0x080036d6:    d004        ..      BEQ      0x80036e2 ; USBPD_StateReady_Aciton + 90
        0x080036d8:    2804        .(      CMP      r0,#4
        0x080036da:    d005        ..      BEQ      0x80036e8 ; USBPD_StateReady_Aciton + 96
        0x080036dc:    2809        .(      CMP      r0,#9
        0x080036de:    d11b        ..      BNE      0x8003718 ; USBPD_StateReady_Aciton + 144
        0x080036e0:    e00e        ..      B        0x8003700 ; USBPD_StateReady_Aciton + 120
        0x080036e2:    200f        .       MOVS     r0,#0xf
        0x080036e4:    7020         p      STRB     r0,[r4,#0]
        0x080036e6:    e01a        ..      B        0x800371e ; USBPD_StateReady_Aciton + 150
        0x080036e8:    4813        .H      LDR      r0,[pc,#76] ; [0x8003738] = 0x200010bc
        0x080036ea:    8880        ..      LDRH     r0,[r0,#4]
        0x080036ec:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x080036f0:    4913        .I      LDR      r1,[pc,#76] ; [0x8003740] = 0x200001c5
        0x080036f2:    7008        .p      STRB     r0,[r1,#0]
        0x080036f4:    2001        .       MOVS     r0,#1
        0x080036f6:    f7fffd31    ..1.    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x080036fa:    2009        .       MOVS     r0,#9
        0x080036fc:    7020         p      STRB     r0,[r4,#0]
        0x080036fe:    e00e        ..      B        0x800371e ; USBPD_StateReady_Aciton + 150
        0x08003700:    480d        .H      LDR      r0,[pc,#52] ; [0x8003738] = 0x200010bc
        0x08003702:    8880        ..      LDRH     r0,[r0,#4]
        0x08003704:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003708:    490d        .I      LDR      r1,[pc,#52] ; [0x8003740] = 0x200001c5
        0x0800370a:    7008        .p      STRB     r0,[r1,#0]
        0x0800370c:    2001        .       MOVS     r0,#1
        0x0800370e:    f7fffd25    ..%.    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x08003712:    2002        .       MOVS     r0,#2
        0x08003714:    7020         p      STRB     r0,[r4,#0]
        0x08003716:    e002        ..      B        0x800371e ; USBPD_StateReady_Aciton + 150
        0x08003718:    2012        .       MOVS     r0,#0x12
        0x0800371a:    7020         p      STRB     r0,[r4,#0]
        0x0800371c:    bf00        ..      NOP      
        0x0800371e:    bf00        ..      NOP      
        0x08003720:    f7fff8b6    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003724:    2001        .       MOVS     r0,#1
        0x08003726:    e7b7        ..      B        0x8003698 ; USBPD_StateReady_Aciton + 16
        0x08003728:    2000        .       MOVS     r0,#0
        0x0800372a:    e7b5        ..      B        0x8003698 ; USBPD_StateReady_Aciton + 16
    $d
        0x0800372c:    200001ca    ...     DCD    536871370
        0x08003730:    200001a4    ...     DCD    536871332
        0x08003734:    2000104c    L..     DCD    536875084
        0x08003738:    200010bc    ...     DCD    536875196
        0x0800373c:    20000000    ...     DCD    536870912
        0x08003740:    200001c5    ...     DCD    536871365
    $t
    i.USBPD_StateReady_Entry
    USBPD_StateReady_Entry
        0x08003744:    b570        p.      PUSH     {r4-r6,lr}
        0x08003746:    4604        .F      MOV      r4,r0
        0x08003748:    460d        .F      MOV      r5,r1
        0x0800374a:    4803        .H      LDR      r0,[pc,#12] ; [0x8003758] = 0x200001c9
        0x0800374c:    7800        .x      LDRB     r0,[r0,#0]
        0x0800374e:    b110        ..      CBZ      r0,0x8003756 ; USBPD_StateReady_Entry + 18
        0x08003750:    2064        d       MOVS     r0,#0x64
        0x08003752:    f7fefe41    ..A.    BL       StartTimer1 ; 0x80023d8
        0x08003756:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08003758:    200001c9    ...     DCD    536871369
    $t
    i.USBPD_StateReady_Exit
    USBPD_StateReady_Exit
        0x0800375c:    b510        ..      PUSH     {r4,lr}
        0x0800375e:    f7fefe5f    .._.    BL       StopAllTimers ; 0x8002420
        0x08003762:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateSelectCap_Aciton
    USBPD_StateSelectCap_Aciton
        0x08003764:    b510        ..      PUSH     {r4,lr}
        0x08003766:    4604        .F      MOV      r4,r0
        0x08003768:    f7fdfb82    ....    BL       IsTimer1Expired ; 0x8000e70
        0x0800376c:    b1c0        ..      CBZ      r0,0x80037a0 ; USBPD_StateSelectCap_Aciton + 60
        0x0800376e:    4849        IH      LDR      r0,[pc,#292] ; [0x8003894] = 0x20000004
        0x08003770:    6800        .h      LDR      r0,[r0,#0]
        0x08003772:    1c40        @.      ADDS     r0,r0,#1
        0x08003774:    4947        GI      LDR      r1,[pc,#284] ; [0x8003894] = 0x20000004
        0x08003776:    6008        .`      STR      r0,[r1,#0]
        0x08003778:    4608        .F      MOV      r0,r1
        0x0800377a:    6800        .h      LDR      r0,[r0,#0]
        0x0800377c:    2801        .(      CMP      r0,#1
        0x0800377e:    d108        ..      BNE      0x8003792 ; USBPD_StateSelectCap_Aciton + 46
        0x08003780:    2013        .       MOVS     r0,#0x13
        0x08003782:    7020         p      STRB     r0,[r4,#0]
        0x08003784:    4944        DI      LDR      r1,[pc,#272] ; [0x8003898] = 0x200001c0
        0x08003786:    6808        .h      LDR      r0,[r1,#0]
        0x08003788:    f7fffd30    ..0.    BL       USBPD_Send_Request ; 0x80031ec
        0x0800378c:    f7fefe1a    ....    BL       RestartTimer1 ; 0x80023c4
        0x08003790:    e004        ..      B        0x800379c ; USBPD_StateSelectCap_Aciton + 56
        0x08003792:    2000        .       MOVS     r0,#0
        0x08003794:    493f        ?I      LDR      r1,[pc,#252] ; [0x8003894] = 0x20000004
        0x08003796:    6008        .`      STR      r0,[r1,#0]
        0x08003798:    2014        .       MOVS     r0,#0x14
        0x0800379a:    7020         p      STRB     r0,[r4,#0]
        0x0800379c:    2001        .       MOVS     r0,#1
        0x0800379e:    bd10        ..      POP      {r4,pc}
        0x080037a0:    f7fdfb7e    ..~.    BL       IsTimer2Expired ; 0x8000ea0
        0x080037a4:    b118        ..      CBZ      r0,0x80037ae ; USBPD_StateSelectCap_Aciton + 74
        0x080037a6:    2015        .       MOVS     r0,#0x15
        0x080037a8:    7020         p      STRB     r0,[r4,#0]
        0x080037aa:    2001        .       MOVS     r0,#1
        0x080037ac:    e7f7        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x080037ae:    483b        ;H      LDR      r0,[pc,#236] ; [0x800389c] = 0x200001a4
        0x080037b0:    7800        .x      LDRB     r0,[r0,#0]
        0x080037b2:    2800        .(      CMP      r0,#0
        0x080037b4:    d06c        l.      BEQ      0x8003890 ; USBPD_StateSelectCap_Aciton + 300
        0x080037b6:    2000        .       MOVS     r0,#0
        0x080037b8:    4938        8I      LDR      r1,[pc,#224] ; [0x800389c] = 0x200001a4
        0x080037ba:    7008        .p      STRB     r0,[r1,#0]
        0x080037bc:    4838        8H      LDR      r0,[pc,#224] ; [0x80038a0] = 0x2000104c
        0x080037be:    f7fff9d7    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x080037c2:    2800        .(      CMP      r0,#0
        0x080037c4:    d164        d.      BNE      0x8003890 ; USBPD_StateSelectCap_Aciton + 300
        0x080037c6:    4937        7I      LDR      r1,[pc,#220] ; [0x80038a4] = 0x200001c9
        0x080037c8:    7008        .p      STRB     r0,[r1,#0]
        0x080037ca:    4937        7I      LDR      r1,[pc,#220] ; [0x80038a8] = 0x200010bc
        0x080037cc:    4834        4H      LDR      r0,[pc,#208] ; [0x80038a0] = 0x2000104c
        0x080037ce:    f7fff86f    ..o.    BL       USBPD_GetMessage ; 0x80028b0
        0x080037d2:    4835        5H      LDR      r0,[pc,#212] ; [0x80038a8] = 0x200010bc
        0x080037d4:    f7fff8a2    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x080037d8:    4934        4I      LDR      r1,[pc,#208] ; [0x80038ac] = 0x20000000
        0x080037da:    6008        .`      STR      r0,[r1,#0]
        0x080037dc:    4608        .F      MOV      r0,r1
        0x080037de:    6800        .h      LDR      r0,[r0,#0]
        0x080037e0:    2808        .(      CMP      r0,#8
        0x080037e2:    d24e        N.      BCS      0x8003882 ; USBPD_StateSelectCap_Aciton + 286
        0x080037e4:    e8dff000    ....    TBB      [pc,r0]
    $d
        0x080037e8:    0a4d044d    M.M.    DCD    172819533
        0x080037ec:    38261a4d    M.&8    DCD    942021197
    $t
        0x080037f0:    200f        .       MOVS     r0,#0xf
        0x080037f2:    7020         p      STRB     r0,[r4,#0]
        0x080037f4:    f7fff84c    ..L.    BL       USBPD_EnableDecoder ; 0x8002890
        0x080037f8:    2001        .       MOVS     r0,#1
        0x080037fa:    e7d0        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x080037fc:    482a        *H      LDR      r0,[pc,#168] ; [0x80038a8] = 0x200010bc
        0x080037fe:    8880        ..      LDRH     r0,[r0,#4]
        0x08003800:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003804:    492a        *I      LDR      r1,[pc,#168] ; [0x80038b0] = 0x200001c4
        0x08003806:    7809        .x      LDRB     r1,[r1,#0]
        0x08003808:    4288        .B      CMP      r0,r1
        0x0800380a:    d106        ..      BNE      0x800381a ; USBPD_StateSelectCap_Aciton + 182
        0x0800380c:    f7fefe12    ....    BL       StopTimer1 ; 0x8002434
        0x08003810:    201b        .       MOVS     r0,#0x1b
        0x08003812:    f7fefdf3    ....    BL       StartTimer2 ; 0x80023fc
        0x08003816:    f7fff83b    ..;.    BL       USBPD_EnableDecoder ; 0x8002890
        0x0800381a:    e038        8.      B        0x800388e ; USBPD_StateSelectCap_Aciton + 298
        0x0800381c:    4822        "H      LDR      r0,[pc,#136] ; [0x80038a8] = 0x200010bc
        0x0800381e:    8880        ..      LDRH     r0,[r0,#4]
        0x08003820:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003824:    4923        #I      LDR      r1,[pc,#140] ; [0x80038b4] = 0x200001c5
        0x08003826:    7008        .p      STRB     r0,[r1,#0]
        0x08003828:    2003        .       MOVS     r0,#3
        0x0800382a:    7020         p      STRB     r0,[r4,#0]
        0x0800382c:    f7fff830    ..0.    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003830:    2001        .       MOVS     r0,#1
        0x08003832:    e7b4        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x08003834:    481c        .H      LDR      r0,[pc,#112] ; [0x80038a8] = 0x200010bc
        0x08003836:    8880        ..      LDRH     r0,[r0,#4]
        0x08003838:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x0800383c:    491d        .I      LDR      r1,[pc,#116] ; [0x80038b4] = 0x200001c5
        0x0800383e:    7008        .p      STRB     r0,[r1,#0]
        0x08003840:    481d        .H      LDR      r0,[pc,#116] ; [0x80038b8] = 0x200001c8
        0x08003842:    7800        .x      LDRB     r0,[r0,#0]
        0x08003844:    b110        ..      CBZ      r0,0x800384c ; USBPD_StateSelectCap_Aciton + 232
        0x08003846:    2004        .       MOVS     r0,#4
        0x08003848:    7020         p      STRB     r0,[r4,#0]
        0x0800384a:    e001        ..      B        0x8003850 ; USBPD_StateSelectCap_Aciton + 236
        0x0800384c:    2005        .       MOVS     r0,#5
        0x0800384e:    7020         p      STRB     r0,[r4,#0]
        0x08003850:    f7fff81e    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003854:    2001        .       MOVS     r0,#1
        0x08003856:    e7a2        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x08003858:    4813        .H      LDR      r0,[pc,#76] ; [0x80038a8] = 0x200010bc
        0x0800385a:    8880        ..      LDRH     r0,[r0,#4]
        0x0800385c:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003860:    4914        .I      LDR      r1,[pc,#80] ; [0x80038b4] = 0x200001c5
        0x08003862:    7008        .p      STRB     r0,[r1,#0]
        0x08003864:    4814        .H      LDR      r0,[pc,#80] ; [0x80038b8] = 0x200001c8
        0x08003866:    7800        .x      LDRB     r0,[r0,#0]
        0x08003868:    b128        (.      CBZ      r0,0x8003876 ; USBPD_StateSelectCap_Aciton + 274
        0x0800386a:    2004        .       MOVS     r0,#4
        0x0800386c:    7020         p      STRB     r0,[r4,#0]
        0x0800386e:    2001        .       MOVS     r0,#1
        0x08003870:    490c        .I      LDR      r1,[pc,#48] ; [0x80038a4] = 0x200001c9
        0x08003872:    7008        .p      STRB     r0,[r1,#0]
        0x08003874:    e001        ..      B        0x800387a ; USBPD_StateSelectCap_Aciton + 278
        0x08003876:    2005        .       MOVS     r0,#5
        0x08003878:    7020         p      STRB     r0,[r4,#0]
        0x0800387a:    f7fff809    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x0800387e:    2001        .       MOVS     r0,#1
        0x08003880:    e78d        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x08003882:    2008        .       MOVS     r0,#8
        0x08003884:    7020         p      STRB     r0,[r4,#0]
        0x08003886:    f7fff803    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x0800388a:    2001        .       MOVS     r0,#1
        0x0800388c:    e787        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
        0x0800388e:    bf00        ..      NOP      
        0x08003890:    2000        .       MOVS     r0,#0
        0x08003892:    e784        ..      B        0x800379e ; USBPD_StateSelectCap_Aciton + 58
    $d
        0x08003894:    20000004    ...     DCD    536870916
        0x08003898:    200001c0    ...     DCD    536871360
        0x0800389c:    200001a4    ...     DCD    536871332
        0x080038a0:    2000104c    L..     DCD    536875084
        0x080038a4:    200001c9    ...     DCD    536871369
        0x080038a8:    200010bc    ...     DCD    536875196
        0x080038ac:    20000000    ...     DCD    536870912
        0x080038b0:    200001c4    ...     DCD    536871364
        0x080038b4:    200001c5    ...     DCD    536871365
        0x080038b8:    200001c8    ...     DCD    536871368
    $t
    i.USBPD_StateSelectCap_Entry
    USBPD_StateSelectCap_Entry
        0x080038bc:    b570        p.      PUSH     {r4-r6,lr}
        0x080038be:    b086        ..      SUB      sp,sp,#0x18
        0x080038c0:    4605        .F      MOV      r5,r0
        0x080038c2:    460e        .F      MOV      r6,r1
        0x080038c4:    2000        .       MOVS     r0,#0
        0x080038c6:    490a        .I      LDR      r1,[pc,#40] ; [0x80038f0] = 0x200001c6
        0x080038c8:    7008        .p      STRB     r0,[r1,#0]
        0x080038ca:    a801        ..      ADD      r0,sp,#4
        0x080038cc:    f7fcfd2e    ....    BL       DPM_FindVoltageIndex ; 0x800032c
        0x080038d0:    4604        .F      MOV      r4,r0
        0x080038d2:    b2e0        ..      UXTB     r0,r4
        0x080038d4:    4a07        .J      LDR      r2,[pc,#28] ; [0x80038f4] = 0x200001c0
        0x080038d6:    a901        ..      ADD      r1,sp,#4
        0x080038d8:    f7fcfd76    ..v.    BL       DPM_SNK_BuildRDOfromSelectedFixedPDO ; 0x80003c8
        0x080038dc:    4905        .I      LDR      r1,[pc,#20] ; [0x80038f4] = 0x200001c0
        0x080038de:    6808        .h      LDR      r0,[r1,#0]
        0x080038e0:    f7fffc84    ....    BL       USBPD_Send_Request ; 0x80031ec
        0x080038e4:    2001        .       MOVS     r0,#1
        0x080038e6:    f7fefd77    ..w.    BL       StartTimer1 ; 0x80023d8
        0x080038ea:    b006        ..      ADD      sp,sp,#0x18
        0x080038ec:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080038ee:    0000        ..      DCW    0
        0x080038f0:    200001c6    ...     DCD    536871366
        0x080038f4:    200001c0    ...     DCD    536871360
    $t
    i.USBPD_StateSelectCap_Exit
    USBPD_StateSelectCap_Exit
        0x080038f8:    b510        ..      PUSH     {r4,lr}
        0x080038fa:    f7fefd91    ....    BL       StopAllTimers ; 0x8002420
        0x080038fe:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateSoftReset_Aciton
    USBPD_StateSoftReset_Aciton
        0x08003900:    b510        ..      PUSH     {r4,lr}
        0x08003902:    4604        .F      MOV      r4,r0
        0x08003904:    f7fdfab4    ....    BL       IsTimer1Expired ; 0x8000e70
        0x08003908:    b1a0        ..      CBZ      r0,0x8003934 ; USBPD_StateSoftReset_Aciton + 52
        0x0800390a:    4824        $H      LDR      r0,[pc,#144] ; [0x800399c] = 0x20000004
        0x0800390c:    6800        .h      LDR      r0,[r0,#0]
        0x0800390e:    1c40        @.      ADDS     r0,r0,#1
        0x08003910:    4922        "I      LDR      r1,[pc,#136] ; [0x800399c] = 0x20000004
        0x08003912:    6008        .`      STR      r0,[r1,#0]
        0x08003914:    4608        .F      MOV      r0,r1
        0x08003916:    6800        .h      LDR      r0,[r0,#0]
        0x08003918:    2801        .(      CMP      r0,#1
        0x0800391a:    d104        ..      BNE      0x8003926 ; USBPD_StateSoftReset_Aciton + 38
        0x0800391c:    2013        .       MOVS     r0,#0x13
        0x0800391e:    7020         p      STRB     r0,[r4,#0]
        0x08003920:    f7fefd50    ..P.    BL       RestartTimer1 ; 0x80023c4
        0x08003924:    e004        ..      B        0x8003930 ; USBPD_StateSoftReset_Aciton + 48
        0x08003926:    2000        .       MOVS     r0,#0
        0x08003928:    491c        .I      LDR      r1,[pc,#112] ; [0x800399c] = 0x20000004
        0x0800392a:    6008        .`      STR      r0,[r1,#0]
        0x0800392c:    2014        .       MOVS     r0,#0x14
        0x0800392e:    7020         p      STRB     r0,[r4,#0]
        0x08003930:    2001        .       MOVS     r0,#1
        0x08003932:    bd10        ..      POP      {r4,pc}
        0x08003934:    481a        .H      LDR      r0,[pc,#104] ; [0x80039a0] = 0x200001a4
        0x08003936:    7800        .x      LDRB     r0,[r0,#0]
        0x08003938:    b370        p.      CBZ      r0,0x8003998 ; USBPD_StateSoftReset_Aciton + 152
        0x0800393a:    2000        .       MOVS     r0,#0
        0x0800393c:    4918        .I      LDR      r1,[pc,#96] ; [0x80039a0] = 0x200001a4
        0x0800393e:    7008        .p      STRB     r0,[r1,#0]
        0x08003940:    4818        .H      LDR      r0,[pc,#96] ; [0x80039a4] = 0x2000104c
        0x08003942:    f7fff915    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003946:    bb08        ..      CBNZ     r0,0x800398c ; USBPD_StateSoftReset_Aciton + 140
        0x08003948:    4917        .I      LDR      r1,[pc,#92] ; [0x80039a8] = 0x200010bc
        0x0800394a:    4816        .H      LDR      r0,[pc,#88] ; [0x80039a4] = 0x2000104c
        0x0800394c:    f7feffb0    ....    BL       USBPD_GetMessage ; 0x80028b0
        0x08003950:    4815        .H      LDR      r0,[pc,#84] ; [0x80039a8] = 0x200010bc
        0x08003952:    f7feffe3    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003956:    4915        .I      LDR      r1,[pc,#84] ; [0x80039ac] = 0x20000000
        0x08003958:    6008        .`      STR      r0,[r1,#0]
        0x0800395a:    4608        .F      MOV      r0,r1
        0x0800395c:    6800        .h      LDR      r0,[r0,#0]
        0x0800395e:    2801        .(      CMP      r0,#1
        0x08003960:    d002        ..      BEQ      0x8003968 ; USBPD_StateSoftReset_Aciton + 104
        0x08003962:    2803        .(      CMP      r0,#3
        0x08003964:    d10e        ..      BNE      0x8003984 ; USBPD_StateSoftReset_Aciton + 132
        0x08003966:    e002        ..      B        0x800396e ; USBPD_StateSoftReset_Aciton + 110
        0x08003968:    200f        .       MOVS     r0,#0xf
        0x0800396a:    7020         p      STRB     r0,[r4,#0]
        0x0800396c:    e00d        ..      B        0x800398a ; USBPD_StateSoftReset_Aciton + 138
        0x0800396e:    480e        .H      LDR      r0,[pc,#56] ; [0x80039a8] = 0x200010bc
        0x08003970:    8880        ..      LDRH     r0,[r0,#4]
        0x08003972:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003976:    490e        .I      LDR      r1,[pc,#56] ; [0x80039b0] = 0x200001c4
        0x08003978:    7809        .x      LDRB     r1,[r1,#0]
        0x0800397a:    4288        .B      CMP      r0,r1
        0x0800397c:    d101        ..      BNE      0x8003982 ; USBPD_StateSoftReset_Aciton + 130
        0x0800397e:    200b        .       MOVS     r0,#0xb
        0x08003980:    7020         p      STRB     r0,[r4,#0]
        0x08003982:    e002        ..      B        0x800398a ; USBPD_StateSoftReset_Aciton + 138
        0x08003984:    2008        .       MOVS     r0,#8
        0x08003986:    7020         p      STRB     r0,[r4,#0]
        0x08003988:    bf00        ..      NOP      
        0x0800398a:    bf00        ..      NOP      
        0x0800398c:    f7fefd52    ..R.    BL       StopTimer1 ; 0x8002434
        0x08003990:    f7feff7e    ..~.    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003994:    2001        .       MOVS     r0,#1
        0x08003996:    e7cc        ..      B        0x8003932 ; USBPD_StateSoftReset_Aciton + 50
        0x08003998:    2000        .       MOVS     r0,#0
        0x0800399a:    e7ca        ..      B        0x8003932 ; USBPD_StateSoftReset_Aciton + 50
    $d
        0x0800399c:    20000004    ...     DCD    536870916
        0x080039a0:    200001a4    ...     DCD    536871332
        0x080039a4:    2000104c    L..     DCD    536875084
        0x080039a8:    200010bc    ...     DCD    536875196
        0x080039ac:    20000000    ...     DCD    536870912
        0x080039b0:    200001c4    ...     DCD    536871364
    $t
    i.USBPD_StateSoftReset_Entry
    USBPD_StateSoftReset_Entry
        0x080039b4:    b570        p.      PUSH     {r4-r6,lr}
        0x080039b6:    4604        .F      MOV      r4,r0
        0x080039b8:    460d        .F      MOV      r5,r1
        0x080039ba:    4808        .H      LDR      r0,[pc,#32] ; [0x80039dc] = 0x200001c7
        0x080039bc:    7800        .x      LDRB     r0,[r0,#0]
        0x080039be:    2802        .(      CMP      r0,#2
        0x080039c0:    da0a        ..      BGE      0x80039d8 ; USBPD_StateSoftReset_Entry + 36
        0x080039c2:    4806        .H      LDR      r0,[pc,#24] ; [0x80039dc] = 0x200001c7
        0x080039c4:    7800        .x      LDRB     r0,[r0,#0]
        0x080039c6:    1c40        @.      ADDS     r0,r0,#1
        0x080039c8:    4904        .I      LDR      r1,[pc,#16] ; [0x80039dc] = 0x200001c7
        0x080039ca:    7008        .p      STRB     r0,[r1,#0]
        0x080039cc:    200d        .       MOVS     r0,#0xd
        0x080039ce:    f7fffbc5    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x080039d2:    2001        .       MOVS     r0,#1
        0x080039d4:    f7fefd00    ....    BL       StartTimer1 ; 0x80023d8
        0x080039d8:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x080039da:    0000        ..      DCW    0
        0x080039dc:    200001c7    ...     DCD    536871367
    $t
    i.USBPD_StateSoftReset_Exit
    USBPD_StateSoftReset_Exit
        0x080039e0:    b510        ..      PUSH     {r4,lr}
        0x080039e2:    f7fefd1d    ....    BL       StopAllTimers ; 0x8002420
        0x080039e6:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateStartup_Aciton
    USBPD_StateStartup_Aciton
        0x080039e8:    b510        ..      PUSH     {r4,lr}
        0x080039ea:    4604        .F      MOV      r4,r0
        0x080039ec:    f7fffb9e    ....    BL       USBPD_ProtocolLayerReset ; 0x800312c
        0x080039f0:    b928        (.      CBNZ     r0,0x80039fe ; USBPD_StateStartup_Aciton + 22
        0x080039f2:    2000        .       MOVS     r0,#0
        0x080039f4:    7020         p      STRB     r0,[r4,#0]
        0x080039f6:    f7feff3b    ..;.    BL       USBPD_DisableDecoder ; 0x8002870
        0x080039fa:    2001        .       MOVS     r0,#1
        0x080039fc:    bd10        ..      POP      {r4,pc}
        0x080039fe:    2000        .       MOVS     r0,#0
        0x08003a00:    e7fc        ..      B        0x80039fc ; USBPD_StateStartup_Aciton + 20
        0x08003a02:    0000        ..      MOVS     r0,r0
    i.USBPD_StateStartup_Entry
    USBPD_StateStartup_Entry
        0x08003a04:    2200        ."      MOVS     r2,#0
        0x08003a06:    4b01        .K      LDR      r3,[pc,#4] ; [0x8003a0c] = 0x200001c7
        0x08003a08:    701a        .p      STRB     r2,[r3,#0]
        0x08003a0a:    4770        pG      BX       lr
    $d
        0x08003a0c:    200001c7    ...     DCD    536871367
    $t
    i.USBPD_StateStartup_Exit
    USBPD_StateStartup_Exit
        0x08003a10:    b510        ..      PUSH     {r4,lr}
        0x08003a12:    f7fefd05    ....    BL       StopAllTimers ; 0x8002420
        0x08003a16:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateTransDefault_Aciton
    USBPD_StateTransDefault_Aciton
        0x08003a18:    4601        .F      MOV      r1,r0
        0x08003a1a:    2010        .       MOVS     r0,#0x10
        0x08003a1c:    7008        .p      STRB     r0,[r1,#0]
        0x08003a1e:    2001        .       MOVS     r0,#1
        0x08003a20:    4770        pG      BX       lr
    i.USBPD_StateTransDefault_Entry
    USBPD_StateTransDefault_Entry
        0x08003a22:    4770        pG      BX       lr
    i.USBPD_StateTransDefault_Exit
    USBPD_StateTransDefault_Exit
        0x08003a24:    4770        pG      BX       lr
        0x08003a26:    0000        ..      MOVS     r0,r0
    i.USBPD_StateTransSink_Aciton
    USBPD_StateTransSink_Aciton
        0x08003a28:    b510        ..      PUSH     {r4,lr}
        0x08003a2a:    4604        .F      MOV      r4,r0
        0x08003a2c:    f7fdfa20    .. .    BL       IsTimer1Expired ; 0x8000e70
        0x08003a30:    b118        ..      CBZ      r0,0x8003a3a ; USBPD_StateTransSink_Aciton + 18
        0x08003a32:    2015        .       MOVS     r0,#0x15
        0x08003a34:    7020         p      STRB     r0,[r4,#0]
        0x08003a36:    2001        .       MOVS     r0,#1
        0x08003a38:    bd10        ..      POP      {r4,pc}
        0x08003a3a:    4819        .H      LDR      r0,[pc,#100] ; [0x8003aa0] = 0x200001a4
        0x08003a3c:    7800        .x      LDRB     r0,[r0,#0]
        0x08003a3e:    b360        `.      CBZ      r0,0x8003a9a ; USBPD_StateTransSink_Aciton + 114
        0x08003a40:    2000        .       MOVS     r0,#0
        0x08003a42:    4917        .I      LDR      r1,[pc,#92] ; [0x8003aa0] = 0x200001a4
        0x08003a44:    7008        .p      STRB     r0,[r1,#0]
        0x08003a46:    4817        .H      LDR      r0,[pc,#92] ; [0x8003aa4] = 0x2000104c
        0x08003a48:    f7fff892    ....    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003a4c:    bb08        ..      CBNZ     r0,0x8003a92 ; USBPD_StateTransSink_Aciton + 106
        0x08003a4e:    4916        .I      LDR      r1,[pc,#88] ; [0x8003aa8] = 0x200010bc
        0x08003a50:    4814        .H      LDR      r0,[pc,#80] ; [0x8003aa4] = 0x2000104c
        0x08003a52:    f7feff2d    ..-.    BL       USBPD_GetMessage ; 0x80028b0
        0x08003a56:    4814        .H      LDR      r0,[pc,#80] ; [0x8003aa8] = 0x200010bc
        0x08003a58:    f7feff60    ..`.    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003a5c:    4913        .I      LDR      r1,[pc,#76] ; [0x8003aac] = 0x20000000
        0x08003a5e:    6008        .`      STR      r0,[r1,#0]
        0x08003a60:    4608        .F      MOV      r0,r1
        0x08003a62:    6800        .h      LDR      r0,[r0,#0]
        0x08003a64:    2801        .(      CMP      r0,#1
        0x08003a66:    d102        ..      BNE      0x8003a6e ; USBPD_StateTransSink_Aciton + 70
        0x08003a68:    200f        .       MOVS     r0,#0xf
        0x08003a6a:    7020         p      STRB     r0,[r4,#0]
        0x08003a6c:    e011        ..      B        0x8003a92 ; USBPD_StateTransSink_Aciton + 106
        0x08003a6e:    480f        .H      LDR      r0,[pc,#60] ; [0x8003aac] = 0x20000000
        0x08003a70:    6800        .h      LDR      r0,[r0,#0]
        0x08003a72:    2808        .(      CMP      r0,#8
        0x08003a74:    d10b        ..      BNE      0x8003a8e ; USBPD_StateTransSink_Aciton + 102
        0x08003a76:    480c        .H      LDR      r0,[pc,#48] ; [0x8003aa8] = 0x200010bc
        0x08003a78:    8880        ..      LDRH     r0,[r0,#4]
        0x08003a7a:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003a7e:    490c        .I      LDR      r1,[pc,#48] ; [0x8003ab0] = 0x200001c5
        0x08003a80:    7008        .p      STRB     r0,[r1,#0]
        0x08003a82:    2001        .       MOVS     r0,#1
        0x08003a84:    f7fffb6a    ..j.    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x08003a88:    2007        .       MOVS     r0,#7
        0x08003a8a:    7020         p      STRB     r0,[r4,#0]
        0x08003a8c:    e001        ..      B        0x8003a92 ; USBPD_StateTransSink_Aciton + 106
        0x08003a8e:    2008        .       MOVS     r0,#8
        0x08003a90:    7020         p      STRB     r0,[r4,#0]
        0x08003a92:    f7fefefd    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003a96:    2001        .       MOVS     r0,#1
        0x08003a98:    e7ce        ..      B        0x8003a38 ; USBPD_StateTransSink_Aciton + 16
        0x08003a9a:    2000        .       MOVS     r0,#0
        0x08003a9c:    e7cc        ..      B        0x8003a38 ; USBPD_StateTransSink_Aciton + 16
    $d
        0x08003a9e:    0000        ..      DCW    0
        0x08003aa0:    200001a4    ...     DCD    536871332
        0x08003aa4:    2000104c    L..     DCD    536875084
        0x08003aa8:    200010bc    ...     DCD    536875196
        0x08003aac:    20000000    ...     DCD    536870912
        0x08003ab0:    200001c5    ...     DCD    536871365
    $t
    i.USBPD_StateTransSink_Entry
    USBPD_StateTransSink_Entry
        0x08003ab4:    b570        p.      PUSH     {r4-r6,lr}
        0x08003ab6:    4604        .F      MOV      r4,r0
        0x08003ab8:    460d        .F      MOV      r5,r1
        0x08003aba:    f44f70fa    O..p    MOV      r0,#0x1f4
        0x08003abe:    f7fefc8b    ....    BL       StartTimer1 ; 0x80023d8
        0x08003ac2:    bd70        p.      POP      {r4-r6,pc}
    i.USBPD_StateTransSink_Exit
    USBPD_StateTransSink_Exit
        0x08003ac4:    b510        ..      PUSH     {r4,lr}
        0x08003ac6:    f7fefcab    ....    BL       StopAllTimers ; 0x8002420
        0x08003aca:    bd10        ..      POP      {r4,pc}
    i.USBPD_StateWaitCap_Aciton
    USBPD_StateWaitCap_Aciton
        0x08003acc:    b510        ..      PUSH     {r4,lr}
        0x08003ace:    4604        .F      MOV      r4,r0
        0x08003ad0:    f7fdf9ce    ....    BL       IsTimer1Expired ; 0x8000e70
        0x08003ad4:    b118        ..      CBZ      r0,0x8003ade ; USBPD_StateWaitCap_Aciton + 18
        0x08003ad6:    2015        .       MOVS     r0,#0x15
        0x08003ad8:    7020         p      STRB     r0,[r4,#0]
        0x08003ada:    2001        .       MOVS     r0,#1
        0x08003adc:    bd10        ..      POP      {r4,pc}
        0x08003ade:    4819        .H      LDR      r0,[pc,#100] ; [0x8003b44] = 0x200001a4
        0x08003ae0:    7800        .x      LDRB     r0,[r0,#0]
        0x08003ae2:    b360        `.      CBZ      r0,0x8003b3e ; USBPD_StateWaitCap_Aciton + 114
        0x08003ae4:    2000        .       MOVS     r0,#0
        0x08003ae6:    4917        .I      LDR      r1,[pc,#92] ; [0x8003b44] = 0x200001a4
        0x08003ae8:    7008        .p      STRB     r0,[r1,#0]
        0x08003aea:    4817        .H      LDR      r0,[pc,#92] ; [0x8003b48] = 0x2000104c
        0x08003aec:    f7fff840    ..@.    BL       USBPD_PHY_DecodeMessage ; 0x8002b70
        0x08003af0:    bb08        ..      CBNZ     r0,0x8003b36 ; USBPD_StateWaitCap_Aciton + 106
        0x08003af2:    4916        .I      LDR      r1,[pc,#88] ; [0x8003b4c] = 0x200010bc
        0x08003af4:    4814        .H      LDR      r0,[pc,#80] ; [0x8003b48] = 0x2000104c
        0x08003af6:    f7fefedb    ....    BL       USBPD_GetMessage ; 0x80028b0
        0x08003afa:    4814        .H      LDR      r0,[pc,#80] ; [0x8003b4c] = 0x200010bc
        0x08003afc:    f7feff0e    ....    BL       USBPD_GetReceivedMsgType ; 0x800291c
        0x08003b00:    4913        .I      LDR      r1,[pc,#76] ; [0x8003b50] = 0x20000000
        0x08003b02:    6008        .`      STR      r0,[r1,#0]
        0x08003b04:    4608        .F      MOV      r0,r1
        0x08003b06:    6800        .h      LDR      r0,[r0,#0]
        0x08003b08:    2801        .(      CMP      r0,#1
        0x08003b0a:    d102        ..      BNE      0x8003b12 ; USBPD_StateWaitCap_Aciton + 70
        0x08003b0c:    200f        .       MOVS     r0,#0xf
        0x08003b0e:    7020         p      STRB     r0,[r4,#0]
        0x08003b10:    e011        ..      B        0x8003b36 ; USBPD_StateWaitCap_Aciton + 106
        0x08003b12:    480f        .H      LDR      r0,[pc,#60] ; [0x8003b50] = 0x20000000
        0x08003b14:    6800        .h      LDR      r0,[r0,#0]
        0x08003b16:    2809        .(      CMP      r0,#9
        0x08003b18:    d10b        ..      BNE      0x8003b32 ; USBPD_StateWaitCap_Aciton + 102
        0x08003b1a:    480c        .H      LDR      r0,[pc,#48] ; [0x8003b4c] = 0x200010bc
        0x08003b1c:    8880        ..      LDRH     r0,[r0,#4]
        0x08003b1e:    f3c02042    ..B     UBFX     r0,r0,#9,#3
        0x08003b22:    490c        .I      LDR      r1,[pc,#48] ; [0x8003b54] = 0x200001c5
        0x08003b24:    7008        .p      STRB     r0,[r1,#0]
        0x08003b26:    2001        .       MOVS     r0,#1
        0x08003b28:    f7fffb18    ....    BL       USBPD_Send_ControlMessage ; 0x800315c
        0x08003b2c:    2002        .       MOVS     r0,#2
        0x08003b2e:    7020         p      STRB     r0,[r4,#0]
        0x08003b30:    e001        ..      B        0x8003b36 ; USBPD_StateWaitCap_Aciton + 106
        0x08003b32:    2008        .       MOVS     r0,#8
        0x08003b34:    7020         p      STRB     r0,[r4,#0]
        0x08003b36:    f7fefeab    ....    BL       USBPD_EnableDecoder ; 0x8002890
        0x08003b3a:    2001        .       MOVS     r0,#1
        0x08003b3c:    e7ce        ..      B        0x8003adc ; USBPD_StateWaitCap_Aciton + 16
        0x08003b3e:    2000        .       MOVS     r0,#0
        0x08003b40:    e7cc        ..      B        0x8003adc ; USBPD_StateWaitCap_Aciton + 16
    $d
        0x08003b42:    0000        ..      DCW    0
        0x08003b44:    200001a4    ...     DCD    536871332
        0x08003b48:    2000104c    L..     DCD    536875084
        0x08003b4c:    200010bc    ...     DCD    536875196
        0x08003b50:    20000000    ...     DCD    536870912
        0x08003b54:    200001c5    ...     DCD    536871365
    $t
    i.USBPD_StateWaitCap_Entry
    USBPD_StateWaitCap_Entry
        0x08003b58:    b570        p.      PUSH     {r4-r6,lr}
        0x08003b5a:    4604        .F      MOV      r4,r0
        0x08003b5c:    460d        .F      MOV      r5,r1
        0x08003b5e:    f44f70fa    O..p    MOV      r0,#0x1f4
        0x08003b62:    f7fefc39    ..9.    BL       StartTimer1 ; 0x80023d8
        0x08003b66:    bd70        p.      POP      {r4-r6,pc}
    i.USBPD_StateWaitCap_Exit
    USBPD_StateWaitCap_Exit
        0x08003b68:    b510        ..      PUSH     {r4,lr}
        0x08003b6a:    f7fefc59    ..Y.    BL       StopAllTimers ; 0x8002420
        0x08003b6e:    bd10        ..      POP      {r4,pc}
    i.UsageFault_Handler
    UsageFault_Handler
        0x08003b70:    bf00        ..      NOP      
        0x08003b72:    e7fe        ..      B        0x8003b72 ; UsageFault_Handler + 2
    i.__scatterload_copy
    __scatterload_copy
        0x08003b74:    e002        ..      B        0x8003b7c ; __scatterload_copy + 8
        0x08003b76:    c808        ..      LDM      r0!,{r3}
        0x08003b78:    1f12        ..      SUBS     r2,r2,#4
        0x08003b7a:    c108        ..      STM      r1!,{r3}
        0x08003b7c:    2a00        .*      CMP      r2,#0
        0x08003b7e:    d1fa        ..      BNE      0x8003b76 ; __scatterload_copy + 2
        0x08003b80:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x08003b82:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x08003b84:    2000        .       MOVS     r0,#0
        0x08003b86:    e001        ..      B        0x8003b8c ; __scatterload_zeroinit + 8
        0x08003b88:    c101        ..      STM      r1!,{r0}
        0x08003b8a:    1f12        ..      SUBS     r2,r2,#4
        0x08003b8c:    2a00        .*      CMP      r2,#0
        0x08003b8e:    d1fb        ..      BNE      0x8003b88 ; __scatterload_zeroinit + 4
        0x08003b90:    4770        pG      BX       lr
        0x08003b92:    0000        ..      MOVS     r0,r0
    i.main
    main
        0x08003b94:    b508        ..      PUSH     {r3,lr}
        0x08003b96:    2001        .       MOVS     r0,#1
        0x08003b98:    493f        ?I      LDR      r1,[pc,#252] ; [0x8003c98] = 0x200001cb
        0x08003b9a:    7008        .p      STRB     r0,[r1,#0]
        0x08003b9c:    f7fcfe3a    ..:.    BL       HAL_Init ; 0x8000814
        0x08003ba0:    f7fefc54    ..T.    BL       SystemClock_Config ; 0x800244c
        0x08003ba4:    f7fef932    ..2.    BL       MX_GPIO_Init ; 0x8001e0c
        0x08003ba8:    f7fef844    ..D.    BL       MX_COMP1_Init ; 0x8001c34
        0x08003bac:    f7fef8f0    ....    BL       MX_DAC_Init ; 0x8001d90
        0x08003bb0:    f7fdff3e    ..>.    BL       MX_ADC2_Init ; 0x8001a30
        0x08003bb4:    f7fdffba    ....    BL       MX_ADC3_Init ; 0x8001b2c
        0x08003bb8:    f7fef87a    ..z.    BL       MX_COMP2_Init ; 0x8001cb0
        0x08003bbc:    f7fefa1e    ....    BL       MX_TIM3_Init ; 0x8001ffc
        0x08003bc0:    f7fef8bc    ....    BL       MX_CRC_Init ; 0x8001d3c
        0x08003bc4:    f7fefada    ....    BL       MX_TIM4_Init ; 0x800217c
        0x08003bc8:    f44f7100    O..q    MOV      r1,#0x200
        0x08003bcc:    4833        3H      LDR      r0,[pc,#204] ; [0x8003c9c] = 0x48000800
        0x08003bce:    f7fdfce9    ....    BL       LL_GPIO_SetOutputPin ; 0x80015a4
        0x08003bd2:    2101        .!      MOVS     r1,#1
        0x08003bd4:    4831        1H      LDR      r0,[pc,#196] ; [0x8003c9c] = 0x48000800
        0x08003bd6:    f7fdfce5    ....    BL       LL_GPIO_SetOutputPin ; 0x80015a4
        0x08003bda:    2103        .!      MOVS     r1,#3
        0x08003bdc:    200a        .       MOVS     r0,#0xa
        0x08003bde:    f7fcfc79    ..y.    BL       GetAverageValue ; 0x80004d4
        0x08003be2:    492f        /I      LDR      r1,[pc,#188] ; [0x8003ca0] = 0x20000218
        0x08003be4:    6008        .`      STR      r0,[r1,#0]
        0x08003be6:    f7fefbdf    ....    BL       ResetQuickChargeFlag ; 0x80023a8
        0x08003bea:    f7fefb27    ..'.    BL       QuickChargeDetection ; 0x800223c
        0x08003bee:    2000        .       MOVS     r0,#0
        0x08003bf0:    492c        ,I      LDR      r1,[pc,#176] ; [0x8003ca4] = 0x20000215
        0x08003bf2:    7008        .p      STRB     r0,[r1,#0]
        0x08003bf4:    492c        ,I      LDR      r1,[pc,#176] ; [0x8003ca8] = 0x20000216
        0x08003bf6:    7008        .p      STRB     r0,[r1,#0]
        0x08003bf8:    f89d1001    ....    LDRB     r1,[sp,#1]
        0x08003bfc:    f89d0000    ....    LDRB     r0,[sp,#0]
        0x08003c00:    4b2a        *K      LDR      r3,[pc,#168] ; [0x8003cac] = 0x200000dc
        0x08003c02:    4f29        )O      LDR      r7,[pc,#164] ; [0x8003ca8] = 0x20000216
        0x08003c04:    783f        ?x      LDRB     r7,[r7,#0]
        0x08003c06:    eb031307    ....    ADD      r3,r3,r7,LSL #4
        0x08003c0a:    681a        .h      LDR      r2,[r3,#0]
        0x08003c0c:    4790        .G      BLX      r2
        0x08003c0e:    e041        A.      B        0x8003c94 ; main + 256
        0x08003c10:    4821        !H      LDR      r0,[pc,#132] ; [0x8003c98] = 0x200001cb
        0x08003c12:    7800        .x      LDRB     r0,[r0,#0]
        0x08003c14:    2800        .(      CMP      r0,#0
        0x08003c16:    d03d        =.      BEQ      0x8003c94 ; main + 256
        0x08003c18:    4669        iF      MOV      r1,sp
        0x08003c1a:    4823        #H      LDR      r0,[pc,#140] ; [0x8003ca8] = 0x20000216
        0x08003c1c:    7800        .x      LDRB     r0,[r0,#0]
        0x08003c1e:    f7fcfc6f    ..o.    BL       GetEvent ; 0x8000500
        0x08003c22:    b378        x.      CBZ      r0,0x8003c84 ; main + 240
        0x08003c24:    4820         H      LDR      r0,[pc,#128] ; [0x8003ca8] = 0x20000216
        0x08003c26:    7800        .x      LDRB     r0,[r0,#0]
        0x08003c28:    280c        .(      CMP      r0,#0xc
        0x08003c2a:    da33        3.      BGE      0x8003c94 ; main + 256
        0x08003c2c:    f89d0000    ....    LDRB     r0,[sp,#0]
        0x08003c30:    2816        .(      CMP      r0,#0x16
        0x08003c32:    da2f        /.      BGE      0x8003c94 ; main + 256
        0x08003c34:    481d        .H      LDR      r0,[pc,#116] ; [0x8003cac] = 0x200000dc
        0x08003c36:    491c        .I      LDR      r1,[pc,#112] ; [0x8003ca8] = 0x20000216
        0x08003c38:    7809        .x      LDRB     r1,[r1,#0]
        0x08003c3a:    eb001001    ....    ADD      r0,r0,r1,LSL #4
        0x08003c3e:    68c4        .h      LDR      r4,[r0,#0xc]
        0x08003c40:    2500        .%      MOVS     r5,#0
        0x08003c42:    e022        ".      B        0x8003c8a ; main + 246
        0x08003c44:    f8140015    ....    LDRB     r0,[r4,r5,LSL #1]
        0x08003c48:    f89d1000    ....    LDRB     r1,[sp,#0]
        0x08003c4c:    4288        .B      CMP      r0,r1
        0x08003c4e:    d11a        ..      BNE      0x8003c86 ; main + 242
        0x08003c50:    eb040045    ..E.    ADD      r0,r4,r5,LSL #1
        0x08003c54:    7846        Fx      LDRB     r6,[r0,#1]
        0x08003c56:    4915        .I      LDR      r1,[pc,#84] ; [0x8003cac] = 0x200000dc
        0x08003c58:    4a13        .J      LDR      r2,[pc,#76] ; [0x8003ca8] = 0x20000216
        0x08003c5a:    7812        .x      LDRB     r2,[r2,#0]
        0x08003c5c:    eb011102    ....    ADD      r1,r1,r2,LSL #4
        0x08003c60:    6848        Hh      LDR      r0,[r1,#4]
        0x08003c62:    4780        .G      BLX      r0
        0x08003c64:    f89d1001    ....    LDRB     r1,[sp,#1]
        0x08003c68:    f89d0000    ....    LDRB     r0,[sp,#0]
        0x08003c6c:    4b0f        .K      LDR      r3,[pc,#60] ; [0x8003cac] = 0x200000dc
        0x08003c6e:    eb031306    ....    ADD      r3,r3,r6,LSL #4
        0x08003c72:    681a        .h      LDR      r2,[r3,#0]
        0x08003c74:    4790        .G      BLX      r2
        0x08003c76:    480c        .H      LDR      r0,[pc,#48] ; [0x8003ca8] = 0x20000216
        0x08003c78:    7800        .x      LDRB     r0,[r0,#0]
        0x08003c7a:    490a        .I      LDR      r1,[pc,#40] ; [0x8003ca4] = 0x20000215
        0x08003c7c:    7008        .p      STRB     r0,[r1,#0]
        0x08003c7e:    480a        .H      LDR      r0,[pc,#40] ; [0x8003ca8] = 0x20000216
        0x08003c80:    7006        .p      STRB     r6,[r0,#0]
        0x08003c82:    e006        ..      B        0x8003c92 ; main + 254
        0x08003c84:    e006        ..      B        0x8003c94 ; main + 256
        0x08003c86:    1c68        h.      ADDS     r0,r5,#1
        0x08003c88:    b2c5        ..      UXTB     r5,r0
        0x08003c8a:    f8140015    ....    LDRB     r0,[r4,r5,LSL #1]
        0x08003c8e:    2817        .(      CMP      r0,#0x17
        0x08003c90:    d1d8        ..      BNE      0x8003c44 ; main + 176
        0x08003c92:    bf00        ..      NOP      
        0x08003c94:    e7bc        ..      B        0x8003c10 ; main + 124
    $d
        0x08003c96:    0000        ..      DCW    0
        0x08003c98:    200001cb    ...     DCD    536871371
        0x08003c9c:    48000800    ...H    DCD    1207961600
        0x08003ca0:    20000218    ...     DCD    536871448
        0x08003ca4:    20000215    ...     DCD    536871445
        0x08003ca8:    20000216    ...     DCD    536871446
        0x08003cac:    200000dc    ...     DCD    536871132
    $d.realdata
    .constdata
    CHANNEL_OFFSET_TAB
        0x08003cb0:    44301c08    ..0D    DCD    1144003592
        0x08003cb4:    6c58        Xl      DCW    27736
        0x08003cb6:    80          .       DCB    128
    OFFSET_TAB_CCMRx
        0x08003cb7:    00          .       DCB    0
        0x08003cb8:    04000000    ....    DCD    67108864
        0x08003cbc:    3c3c0404    ..<<    DCD    1010566148
    SHIFT_TAB_OCxx
        0x08003cc0:    00080000    ....    DCD    524288
        0x08003cc4:    00080000    ....    DCD    524288
        0x08003cc8:    08          .       DCB    8
    SHIFT_TAB_ICxx
        0x08003cc9:    000008      ...     DCB    0,0,8
        0x08003ccc:    08000000    ....    DCD    134217728
        0x08003cd0:    0000        ..      DCW    0
    SHIFT_TAB_CCxP
        0x08003cd2:    0200        ..      DCW    512
        0x08003cd4:    0a080604    ....    DCD    168297988
        0x08003cd8:    100c        ..      DCW    4108
        0x08003cda:    14          .       DCB    20
    SHIFT_TAB_OISx
        0x08003cdb:    00          .       DCB    0
        0x08003cdc:    04030201    ....    DCD    67305985
        0x08003ce0:    0a080605    ....    DCD    168297989
    Region$$Table$$Base
        0x08003ce4:    08003d04    .=..    DCD    134233348
        0x08003ce8:    20000000    ...     DCD    536870912
        0x08003cec:    00000230    0...    DCD    560
        0x08003cf0:    08000230    0...    DCD    134218288
        0x08003cf4:    08003e4c    L>..    DCD    134233676
        0x08003cf8:    20000230    0..     DCD    536871472
        0x08003cfc:    00001310    ....    DCD    4880
        0x08003d00:    08003b84    .;..    DCD    134232964
    Region$$Table$$Limit

** Section #2 'RW_IRAM1' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 328 bytes (alignment 4)
    Address: 0x20000000


** Section #3 'RW_IRAM1' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4880 bytes (alignment 8)
    Address: 0x20000230


** Section #4 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1476 bytes


** Section #5 '.debug_frame' (SHT_PROGBITS)
    Size   : 5660 bytes


** Section #6 '.debug_info' (SHT_PROGBITS)
    Size   : 272716 bytes


** Section #7 '.debug_line' (SHT_PROGBITS)
    Size   : 38528 bytes


** Section #8 '.debug_loc' (SHT_PROGBITS)
    Size   : 15440 bytes


** Section #9 '.debug_macinfo' (SHT_PROGBITS)
    Size   : 1407280 bytes


** Section #10 '.debug_pubnames' (SHT_PROGBITS)
    Size   : 6631 bytes


** Section #11 '.symtab' (SHT_SYMTAB)
    Size   : 14464 bytes (alignment 4)
    String table #12 '.strtab'
    Last local symbol no. 624


** Section #12 '.strtab' (SHT_STRTAB)
    Size   : 15148 bytes


** Section #13 '.note' (SHT_NOTE)
    Size   : 28 bytes (alignment 4)


** Section #14 '.comment' (SHT_PROGBITS)
    Size   : 55096 bytes


** Section #15 '.shstrtab' (SHT_STRTAB)
    Size   : 164 bytes



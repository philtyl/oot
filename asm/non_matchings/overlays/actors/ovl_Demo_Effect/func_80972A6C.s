.late_rodata
glabel D_80976D00
    .float 0.01

glabel D_80976D04
    .float 0.01

.text
glabel func_80972A6C
/* 01B1C 80972A6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B20 80972A70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B24 80972A74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01B28 80972A78 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 01B2C 80972A7C 50400018 */  beql    $v0, $zero, .L80972AE0     
/* 01B30 80972A80 908F0185 */  lbu     $t7, 0x0185($a0)           ## 00000185
/* 01B34 80972A84 908E0185 */  lbu     $t6, 0x0185($a0)           ## 00000185
/* 01B38 80972A88 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01B3C 80972A8C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 01B40 80972A90 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 01B44 80972A94 3C018097 */  lui     $at, %hi(D_80976D00)       ## $at = 80970000
/* 01B48 80972A98 C4306D00 */  lwc1    $f16, %lo(D_80976D00)($at) 
/* 01B4C 80972A9C 46803220 */  cvt.s.w $f8, $f6                   
/* 01B50 80972AA0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01B54 80972AA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01B58 80972AA8 46082281 */  sub.s   $f10, $f4, $f8             
/* 01B5C 80972AAC C4480050 */  lwc1    $f8, 0x0050($v0)           ## 00000050
/* 01B60 80972AB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01B64 80972AB4 46105482 */  mul.s   $f18, $f10, $f16           
/* 01B68 80972AB8 00000000 */  nop
/* 01B6C 80972ABC 46069102 */  mul.s   $f4, $f18, $f6             
/* 01B70 80972AC0 00000000 */  nop
/* 01B74 80972AC4 46082282 */  mul.s   $f10, $f4, $f8             
/* 01B78 80972AC8 44055000 */  mfc1    $a1, $f10                  
/* 01B7C 80972ACC 0C00B58B */  jal     Actor_SetScale
              
/* 01B80 80972AD0 00000000 */  nop
/* 01B84 80972AD4 1000000F */  beq     $zero, $zero, .L80972B14   
/* 01B88 80972AD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01B8C 80972ADC 908F0185 */  lbu     $t7, 0x0185($a0)           ## 00000185
.L80972AE0:
/* 01B90 80972AE0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01B94 80972AE4 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 01B98 80972AE8 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 01B9C 80972AEC 3C018097 */  lui     $at, %hi(D_80976D04)       ## $at = 80970000
/* 01BA0 80972AF0 C4286D04 */  lwc1    $f8, %lo(D_80976D04)($at)  
/* 01BA4 80972AF4 468091A0 */  cvt.s.w $f6, $f18                  
/* 01BA8 80972AF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BAC 80972AFC 46068101 */  sub.s   $f4, $f16, $f6             
/* 01BB0 80972B00 46082282 */  mul.s   $f10, $f4, $f8             
/* 01BB4 80972B04 44055000 */  mfc1    $a1, $f10                  
/* 01BB8 80972B08 0C00B58B */  jal     Actor_SetScale
              
/* 01BBC 80972B0C 00000000 */  nop
/* 01BC0 80972B10 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80972B14:
/* 01BC4 80972B14 90820185 */  lbu     $v0, 0x0185($a0)           ## 00000185
/* 01BC8 80972B18 3C088097 */  lui     $t0, %hi(func_80972A04)    ## $t0 = 80970000
/* 01BCC 80972B1C 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 01BD0 80972B20 10400004 */  beq     $v0, $zero, .L80972B34     
/* 01BD4 80972B24 25082A04 */  addiu   $t0, $t0, %lo(func_80972A04) ## $t0 = 80972A04
/* 01BD8 80972B28 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01BDC 80972B2C 10000003 */  beq     $zero, $zero, .L80972B3C   
/* 01BE0 80972B30 A0980185 */  sb      $t8, 0x0185($a0)           ## 00000185
.L80972B34:
/* 01BE4 80972B34 A0990185 */  sb      $t9, 0x0185($a0)           ## 00000185
/* 01BE8 80972B38 AC88019C */  sw      $t0, 0x019C($a0)           ## 0000019C
.L80972B3C:
/* 01BEC 80972B3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01BF0 80972B40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01BF4 80972B44 03E00008 */  jr      $ra                        
/* 01BF8 80972B48 00000000 */  nop

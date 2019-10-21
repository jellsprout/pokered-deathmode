; wOptions:
TEXT_SPEED_MASK EQU %00000011
BATTLE_SHIFT EQU 2
BATTLE_SHOW_ANIMATIONS EQU 3
HOLD_TO_MASH EQU 4

TEXT_INSTANT EQU %00
TEXT_FAST    EQU %01
TEXT_MEDIUM  EQU %10
TEXT_SLOW    EQU %11

; wPermanentOptions:
SPINNERS_MASK EQU %00000011
MAX_RANGE EQU 2
EXP_MASK EQU %00011000
EXP_SHIFT EQU 3
BETTER_MARTS EQU 5
NERF_PEWTER_GYM EQU 6
ALL_MOVES_SHAKE EQU 7

EXP_NORMAL     EQU %00
EXP_BLACKWHITE EQU %01
EXP_NONE       EQU %10

SPINNERHELL_NORMAL_SPEED EQU %1111
SPINNERHELL_WHY_SPEED EQU %11

; wPermanentOptions2:
SHORT_DELAYS EQU 0
GOOD_EARLY_WILDS EQU 1
BACKWARDS_BOAT EQU 2

; wPermanentOptions3:
STARTIN_MASK EQU %00001111 ; there are only 5 atm, but leaving space for up to 16

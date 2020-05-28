PermaOptions4String::
	db "#DEX AREA BEEP<LNBRK>"
	db "        :<LNBRK>"
	db "KEEP WARDEN CANDY<LNBRK>"
	db "        :<LNBRK>"
	db "BOAT<LNBRK>"
	db "        :<LNBRK>"
	db "POKéMON PICS<LNBRK>"
	db "        :@"

PermaOptions4Pointers::
	dw Options_DexAreaBeep
	dw Options_KeepWardenCandy
	dw Options_Boat
	dw Options_PokemonPics
	dw Options_PermaOptionsPage
	
Options_DexAreaBeep::
	ld hl, wPermanentOptions4
	ld b, DEX_AREA_BEEP
	ld c, 3
	jp Options_OnOff
	
Options_KeepWardenCandy::
	ld hl, wPermanentOptions4
	ld b, KEEP_WARDEN_CANDY
	ld c, 5
	jp Options_OnOff
	
Options_Boat::
	ld hl, wPermanentOptions2
	ld b, BACKWARDS_BOAT
	ld c, 7
	ld de, .NormalMeme
	jp Options_TrueFalse
.NormalMeme
	dw .Off
	dw .On
.Off
	db "NORMAL@"
.On
	db "MEME  @"

Options_PokemonPics:
	ld hl, .Data
	jp Options_Multichoice
	
.Data:
	multichoiceoptiondata wPermanentOptions4, PICSET_SHIFT, PICSET_SIZE, 9, NUM_OPTIONS, .Strings
.Strings:
	dw .Normal
	dw .Green
	dw .Yellow
.Strings_End:
	
.Normal
	db "NORMAL@"
.Green
	db "GREEN @"
.Yellow
	db "YELLOW@"
IF DEF(_VANILLAWILDS)
WILD_DATA_SIZE EQU $14
ELSE
WILD_DATA_SIZE EQU $0E
ENDC

LoadWildData:
	ld hl, WildDataPointers
	ld a, [wCurMap]

	; get wild data for current map
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a       ; hl now points to wild data for current map
	ld a, [hli]
	ld [wGrassRate], a
	and a
	jr z, .NoGrassData ; if no grass data, skip to surfing data
	push hl
	ld de, wGrassMons ; otherwise, load grass data
	ld bc, WILD_DATA_SIZE
	call CopyData
	pop hl
	ld bc, WILD_DATA_SIZE
	add hl, bc
.NoGrassData
	ld a, [hli]
	ld [wWaterRate], a
	and a
	ret z        ; if no water data, we're done
	ld de, wWaterMons  ; otherwise, load surfing data
	ld bc, WILD_DATA_SIZE
	jp CopyData

INCLUDE "data/wild_mons_vanilla.asm"

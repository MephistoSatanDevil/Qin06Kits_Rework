
BEGIN ~c4QBBOOT~

IF ~  Global("wishjames","LOCALS",0)
~ THEN BEGIN 0 // from: 
  SAY @104
  IF ~~ THEN REPLY @105 DO ~SetGlobal("wishjames","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY @109 DO ~SetGlobal("wishjames","LOCALS",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @110
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @106
  IF ~  CheckStatGT(LastTalkedToBy,9,WIS)
~ THEN REPLY @107 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @108
  IF ~~ THEN DO ~GiveItemCreate("c4QBBOOT",LastTalkedToBy,0,0,0)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

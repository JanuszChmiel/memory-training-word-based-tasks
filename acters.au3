; Trening pameti znami herci

#Include <GUIListBox.au3>
#Include "lbc.au3"
$hForm = _lbcCreate("Tréning paměti")
_lbcTest("Prosím napište do následujících políček křestní jména herců. Při správné odpovědi se celé jméno herce zobrazí v seznamu. V opačném případě se vypíše chybová správa.", "Úvodem:")

$a = _lbcCtrlCreateInput("&Bárová:")
$b = _lbcCtrlCreateInput("&Burian:")
$c = _lbcCtrlCreateInput("&Plachta:")

$vIdBasket = _lbcCtrlCreateList("&Správné odpovědi:")

_lbcStartVGroup()
$vIdAdd = _lbcCtrlCreateButton("&Další", -1, -1, -1, -1, -1, $BS_DEFPUSHBUTTON)
$vIdDelete = _lbcCtrlCreateButton("&Vymaž")
_lbcBandHCenter()

_lbcCtrlSetState($a, $GUI_Focus)

_lbcShow()

While 1
$Msg = GUIGetMsg()
Switch $Msg

Case $a
$sFruit = GUICtrlRead($a)
If $sFruit <> "Lída" Then
_lbcTest("Omyl! Lída Bárová")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($a, "")
EndIf
Case $b
$sFruit = GUICtrlRead($b)
If $sFruit <> "Vlasta" Then
_lbcTest("Omyl! Vlasta Burian")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($a, "")
EndIf

; process Delete button
; delete current fruit from basket and reset listbox pointer
Case $vIdDelete
$iCount = _GUICtrlListBox_GetCount($vIdBasket)
If $iCount == 0 Then
_lbcTest("No fruit to delete!", "Alert")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket)
;_lbcTest($i, "index")
_GUICtrlListBox_DeleteString($vIdBasket, $i)
$iCount = _GUICtrlListBox_GetCount($vIdBasket)
If $i >= $iCount Then $i = $iCount - 1
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
EndIf

; process click of Close icon or press of Escape key
Case $GUI_Event_Close
_lbcTest("Quitting program!", "Alert")
ExitLoop
EndSwitch
WEnd

; delete form and exit program
_lbcDelete()
Exit

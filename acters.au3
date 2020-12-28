; Trening pameti znami herci
; seznam Ceskych filmovych hercu ziskan na adrese https://cs.wikipedia.org/wiki/Kategorie:%C4%8Ce%C5%A1t%C3%AD_filmov%C3%AD_herci
#Include <GUIListBox.au3>
#Include "lbc.au3"
$hForm = _lbcCreate("Tréning paměti")
_lbcTest("Prosím napište do následujících políček křestní jména herců. Při správné odpovědi se křestní jméno herce zobrazí v seznamu. A po úspěšném vyplnění políčka se jeho obsah po přechodu na další pole smaže. V opačném případě se vypíše chybová správa.", "Úvodem:")
_lbcStartVGroup()
$a = _lbcCtrlCreateInput("&Abrhám:")
$b = _lbcCtrlCreateInput("&Adamczyk:")
$c = _lbcCtrlCreateInput("&Auerswald:")
$c = _lbcCtrlCreateInput("&Augusta:")

$vIdBasket = _lbcCtrlCreateList("&Správné odpovědi:")
_lbcStartVGroup()
$vIdAdd = _lbcCtrlCreateButton("&Konec", -1, -1, -1, -1, -1, $BS_DEFPUSHBUTTON)
$vIdDelete = _lbcCtrlCreateButton("&Vymaž")
_lbcBandHCenter()
_lbcCtrlSetState($a, $GUI_Focus)
_lbcShow()
While 1
$Msg = GUIGetMsg()
Switch $Msg
Case $a
$sFruit = GUICtrlRead($a)
If $sFruit <> "Josef" Then
_lbcTest("Omyl! Josef Abrhám","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($a, "")
EndIf
Case $b
$sFruit = GUICtrlRead($b)
If $sFruit <> "Marek" Then
_lbcTest("Omyl! Marek Adamczyk","Chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($b, "")
EndIf
Case $c
$sFruit = GUICtrlRead($c)
If $sFruit <> "Jiří" Then
_lbcTest("Omyl! Jiří Adamíra","Chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($c, "")
EndIf


Case $vIdDelete
$iCount = _GUICtrlListBox_GetCount($vIdBasket)
If $iCount == 0 Then
_lbcTest("Neodpověděli Jste ani jednu správnou odpověď, není co smazat!", "Varování")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket)
;_lbcTest($i, "index")
_GUICtrlListBox_DeleteString($vIdBasket, $i)
$iCount = _GUICtrlListBox_GetCount($vIdBasket)
If $i >= $iCount Then $i = $iCount - 1
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
EndIf
Case $vIdAdd
ExitLoop
EndSwitch
WEnd
_lbcDelete()
Exit


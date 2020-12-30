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
$d = _lbcCtrlCreateInput("&Babka:")
$e = _lbcCtrlCreateInput("&Balek-Brodský:")
$f = _lbcCtrlCreateInput("&Bambas:")
$g = _lbcCtrlCreateInput("&Bareš:")
$h= _lbcCtrlCreateInput("Bartoš&:")
$ch = _lbcCtrlCreateInput("&Bartoška:")
$i=_lbcCtrlCreateInput("&Bednář:")
$j = _lbcCtrlCreateInput("&Bedrna:")
$k = _lbcCtrlCreateInput("&Bek:")
$l = _lbcCtrlCreateInput("&Beneš:")
$m = _lbcCtrlCreateInput("&Berman:")
$n = _lbcCtrlCreateInput("&Beyvl:")
$o= _lbcCtrlCreateInput("&Bidlas:")
$p = _lbcCtrlCreateInput("&Bílík:")
$q = _lbcCtrlCreateInput("&Bláha:")
$r = _lbcCtrlCreateInput("&Blažek:")
$s = _lbcCtrlCreateInput("&Bobek:")
$t = _lbcCtrlCreateInput("&Boháč:")
$u = _lbcCtrlCreateInput("&Bolek:")
$v = _lbcCtrlCreateInput("&Brabec:")
$w = _lbcCtrlCreateInput("&Bret:")
$x = _lbcCtrlCreateInput("&Brodský:")
$y = _lbcCtrlCreateInput("&Brousek mladší:")
$z = _lbcCtrlCreateInput("&Brousek starší:")
$a1 = _lbcCtrlCreateInput("&Brož:")
$b1 = _lbcCtrlCreateInput("&Brzobohatý:")
$c1 = _lbcCtrlCreateInput("&Budař:")
$d1 = _lbcCtrlCreateInput("&Burian:")
$e1 = _lbcCtrlCreateInput("&Burian:")

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
Case $d
$sFruit = GUICtrlRead($d)
If $sFruit <> "Václav" Then
_lbcTest("Omyl! Václav Babka","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($d, "")
EndIf
Case $e
$sFruit = GUICtrlRead($e)
If $sFruit <> "Filip" Then
_lbcTest("Omyl! Filip Balek-Brodský","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($e, "")
EndIf
Case $f
$sFruit = GUICtrlRead($f)
If $sFruit <> "Daniel" Then
_lbcTest("Omyl! Daniel Bambas","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($f, "")
EndIf
Case $g
$sFruit = GUICtrlRead($g)
If $sFruit <> "Igor" Then
_lbcTest("Igor Bareš","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($g, "")
EndIf
Case $h
$sFruit = GUICtrlRead($h)
If $sFruit <> "Jan" Then
_lbcTest("Jan Bartoš","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($ch, "")
EndIf
Case $i
$sFruit = GUICtrlRead($i)
If $sFruit <> "Jiří" Then
_lbcTest("Omyl! Jiří Bartoška","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($i, "")
EndIf
Case $j
$sFruit = GUICtrlRead($j)
If $sFruit <> "Jiří" Then
_lbcTest("Omyl! Jiří Bednář","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($j, "")
EndIf
Case $k
$sFruit = GUICtrlRead($k)
If $sFruit <> "Vlastimil" Then
_lbcTest("Omyl! Vlastimil Bedrna","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($k, "")
EndIf
Case $l
$sFruit = GUICtrlRead($l)
If $sFruit <> "Josef" Then
_lbcTest("Omyl! Josef Bek","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($l, "")
EndIf
Case $m
$sFruit = GUICtrlRead($m)
If $sFruit <> "Svatopluk" Then
_lbcTest("Omyl! Svatopluk Beneš","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($a, "")
EndIf
Case $n
$sFruit = GUICtrlRead($n)
If $sFruit <> "Karel" Then
_lbcTest("Omyl! Karel Berman","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($n, "")
EndIf
Case $o
$sFruit = GUICtrlRead($o)
If $sFruit <> "Josef" Then
_lbcTest("Omyl! Josef Beyvl","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($o, "")
EndIf
Case $p
$sFruit = GUICtrlRead($p)
If $sFruit <> "Jan" Then
_lbcTest("Omyl! Jan Bidlas","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($p, "")
EndIf
Case $q
$sFruit = GUICtrlRead($q)
If $sFruit <> "Aleš" Then
_lbcTest("Omyl! Aleš Bílík","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($q, "")
EndIf
Case $r
$sFruit = GUICtrlRead($r)
If $sFruit <> "Josef" Then
_lbcTest("Omyl! Josef Bláha","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($r, "")
EndIf
Case $s
$sFruit = GUICtrlRead($s)
If $sFruit <> "Filip" Then
_lbcTest("Omyl! Filip Blažek","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($s, "")
EndIf
Case $t
$sFruit = GUICtrlRead($t)
If $sFruit <> "Pavel" Then
_lbcTest("Omyl! Pavel Bobek","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($t, "")
EndIf
Case $u
$sFruit = GUICtrlRead($u)
If $sFruit <> "Ladislav" Then
_lbcTest("Omyl! Ladislav Boháč","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($u, "")
EndIf
Case $v
$sFruit = GUICtrlRead($v)
If $sFruit <> "Emil" Then
_lbcTest("Omyl! Emil Bolek","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($v, "")
EndIf
Case $w
$sFruit = GUICtrlRead($w)
If $sFruit <> "Vladimír" Then
_lbcTest("Omyl! Vladimír Brabec","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($w, "")
EndIf
Case $x
$sFruit = GUICtrlRead($x)
If $sFruit <> "Ondřej" Then
_lbcTest("Omyl! Ondřej Brett","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($x, "")
EndIf
Case $y
$sFruit = GUICtrlRead($y)
If $sFruit <> "Vlastimil" Then
_lbcTest("Omyl! Vlastimil Brodský","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($y, "")
EndIf
Case $z
$sFruit = GUICtrlRead($z)
If $sFruit <> "Otakar" Then
_lbcTest("Omyl! Otakar Brousek mladší","chyba")
Else
$i = _GUICtrlListBox_GetCurSel($vIdBasket) + 1
_GUICtrlListBox_InsertString($vIdBasket, $sFruit, $i)
_GUICtrlListBox_SetCurSel($vIdBasket, $i)
GUICtrlSetData($z, "")
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


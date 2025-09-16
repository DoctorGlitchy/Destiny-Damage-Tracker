#NoEnv
#SingleInstance, Force
SetBatchLines, -1
SetWinDelay, -1


; =======================
; CONFIGURATION
; =======================
; Define the coordinates for different resolutions
; Format: x | y | width | height
defaultHealthbar := "858|1302|845|3"
res1080pHealthbar := "644|977|634|1"
ultrawideHealthbar := "1298|1302|845|3"


; Choose which one to display (change this variable)
healthbar_location := res1080pHealthbar


; Parse coordinates
StringSplit, coords, healthbar_location, |


x := coords1
y := coords2
w := coords3
h := coords4
 

; =======================
; CREATE RECTANGLE OVERLAY
; =======================
Gui, Rect: New
Gui, Rect: Color, 0xFF0000
Gui, Rect: +AlwaysOnTop +ToolWindow -Caption +E0x20
Gui, Rect: Show, x%x% y%y% w%w% h%h%, Healthbar Debug
Return


Esc::
Gui, Rect: Destroy
ExitApp

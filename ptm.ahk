; Include VA library
#Include VA.ahk

; === Customize these ===
hotkey := "F9"            ; Set your hotkey here
deviceName := "Microphone (Your Device Name)" ; Replace with your device name

; === Don't modify below unless needed ===
deviceID := VA_GetDeviceID(deviceName)
if (!deviceID) {
    MsgBox, 16, Error, Could not find device: %deviceName%
    ExitApp
}

Hotkey, %hotkey%, MuteOn, On
Hotkey, %hotkey% Up, MuteOff, On
return

MuteOn:
    VA_SetMute(1, deviceID)
return

MuteOff:
    VA_SetMute(0, deviceID)
return

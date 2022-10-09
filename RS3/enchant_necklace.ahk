1::

loop {

    ;Randomise clicking vs hotkey for enchant
    Random, toggle_flag, 8, 10

    ;Bank Screen Coordinates
    Random, bank_x, 1083, 1460
    Random, bank_y, 1079, 829

    ;Enchant spell coordinates
    Random, spell_x, 1239, 1267
    Random, spell_y, 1116, 1091
    ;Necklace coordinates (click spell)
    Random, neck_x1, 2391, 2417
    Random, neck_y1, 1309, 1286

    ;Necklace coordinates (toggle spell)
    Random, neck_x2, 2479, 2507
    Random, neck_y2, 1236, 1212

    ;Mouse Movement Speed 
	Random, mousemovement, 7, 25

    ;Sleep timing before restocking
    Random, restock_sleep, 1130, 2102

    ;Sleep between banking and spell/click
    Random, pre_spell_sleep, 2680, 3122

    ;Sleep after casting spell
    Random, spell_sleep, 33000, 49000

    ;Random key down/up sleep
    Random, keystroke, 89, 151





    ;Bank and restock
    Mousemove, bank_x, bank_y, mousemovement
    click
    Sleep restock_sleep
    Send, {F2}

    ;randomize between clicking or hotkeying the spell
    if (toggle_flag > 7){
        Mousemove, spell_x, spell_y, mousemovement
        click
        Mousemove, neck_x1, neck_y1, mousemovement
        click
        Sleep restock_sleep
        Send, {Space}
    }

    ;if not clicking, hotkey the spell
    ;Send, {q down}
    ;sleep keystroke
    ;Send, {q up}
    ;Sleep pre_spell_sleep
    ;Mousemove, neck_x2, neck_y2, mousemovement
    
    ;click
    Sleep spell_sleep
}

2::reload
3::exitapp
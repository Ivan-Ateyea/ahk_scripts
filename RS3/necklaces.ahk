1::

loop {

;----------------------------- Variables -----------------------------;

	;Furnace Window Coordinates
	Random, furnace_x, 1660, 1705
	Random, furnace_y, 775, 728

    ;Bank Screen Coordinates
    Random, bank_x, 920, 927
    Random, bank_y, 677, 646

	;Off-screen movement
	Random, off_x, -2390, -203
	Random, off_y, 9, 1365

    ;Random anti-ban mouse mouse movement
    Random, random_x1, 1437, 1925
    Random, random_y1, 1464, 344
    Random, random_x2, 1437, 1925
    Random, random_y2, 1464, 344


	;Mouse Movement Speed 
	Random, mousemovement, 7, 25

    ;Random mouse movement speed
    Random, rand_movement, 3, 13

    ;Sleep time between craft and banking (1000 = 1 second)
    Random, crafting_sleep_timer, 54000, 113000

    ;Sleep time between clicking furnace and starting to craft (includes walk time)
    Random, start_sleep_timer, 7800, 9250

    ;Sleep at bank during restocking (includes walk time)
    Random, restock_sleep_timer, 6660, 10051

    ;Misc short sleep perios
    Random, misc_sleep, 980, 1875


;----------------------------- Script Functions -----------------------------;

    ;Starting at the north tile of the bank, click on the furnace
	Mousemove, furnace_x, furnace_y, mousemovement
	click

    ;Random mouse movements in the mean time
    Mousemove, random_x1, random_y1, rand_movement

    ;Wait between 8 and 10 seconds, then start crafting necklaces
    sleep start_sleep_timer 
    Send, {Space}
 

;Removing for the time being as coordinates, when out of the active window, get wonky
    ;Move off screen, wait between 57 and 113 seconds
    ;Mousemove, off_x, off_y, mousemovement
	;click

    ;Click on the bank after finishing the inventory
    sleep crafting_sleep_timer
    Mousemove, bank_x, bank_y, mousemovement
    click

    ;Random mouse movements in the mean time
    Mousemove, random_x2, random_y2, rand_movement

    ;Pause quickly, then restock the inventory the inventory
    sleep restock_sleep_timer
    Send, {F1}

	

}

2::reload
3::exitapp
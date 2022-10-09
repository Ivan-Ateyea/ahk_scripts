1::
;Banking after 27 mines
loop {

	loop 27 {
		;Click every 4 ticks
		Random, click_Sleep, 2270, 2650

		;left gemstone
		Random, x1, 643, 743
		Random, y1, 725, 759

		;Mouse Movement
		Random, mousemovement, 7, 14

		Mousemove, x1, y1, mousemovement
		click
		sleep click_sleep

	}
	;Mine 27 times
	Random, x2, 1239, 1265
	Random, y2, 1093, 1117
	Random, x3, 1202, 1242
	Random, y3, 38, 41
	Random, mousemovement, 7, 25
	Random, deposit, 878, 1131

	MouseClick, Right, x2, y2, 1, mousemovement
	Sleep deposit
	MouseClick, Left, x2, (y2+y3), 1, mousemovement

}

2::reload
3::exitapp

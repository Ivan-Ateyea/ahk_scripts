1::

loop {

	;Seren Stones
	Random, x1, 785, 1129
	Random, y1, 63, 290
	;Off-screen movement
	Random, x2, -1517, -558
	Random, y2, -40, 781
	;Mouse Movement
	Random, mousemovement, 7, 25

	Mousemove, x1, y1, mousemovement
	click
	Mousemove, x2, y2, mousemovement
	Random, clickSpeed, 210000, 298000
	sleep %clickSpeed%

}

2::reload
3::exitapp

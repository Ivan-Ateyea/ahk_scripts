1::

loop {

	;Thieving Stall
	Random, x1, 88, 238
	Random, y1, 395, 480
	;Off-screen movement
	;Coin Pouch
	Random, x2, 777, 791
	Random, y2, 404, 427
	;Mouse Movement
	Random, mousemovement, 8, 10

	Mousemove, x1, y1, mousemovement
	click
	Mousemove, x2, y2
	sleep 1500
	click
	Random, clickSpeed, 300, 600
	sleep %clickSpeed%
	

}

2::reload
3::exitapp

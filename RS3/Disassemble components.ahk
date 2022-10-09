1::
	;1668, 1703
	;871, 897
	
	;1680, 1703
	;985, 1006
loop {
	
	random, x1, 1678, 1707
	random, y1, 903, 929
	
	random, x2, 1692, 1710
	random, y2, 1017, 1035
	
	random, mouseSpeed, 17, 31
	random, sleepTime, 67000, 98000
	
	MouseClickDrag, Left, x1, y1, x2, y2, mouseSpeed
	sleep %sleepTime%
	
}

2::reload
3::exitapp
#!/usr/local/bin/guile -s
!#

(define (f list)
	; (a) ;
	(if (null? list)
	; (b) ;
	'()
	; (c) ;
	(cons (+ 1 (car list)) (f (cdr list)))))

(display (f '(2 7 8 1 3 9)))

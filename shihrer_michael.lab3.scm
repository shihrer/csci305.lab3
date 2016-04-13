#!/usr/local/bin/guile -s
!#
; We named functions to avoid calling builtin functions.

(define (member1? l list)				; Define the member function
	(if (null? list) #f				; Return false if the argument is empty
		(if (equal? l (car list)) #t		; Return true if 
			(member1? l (cdr list)))))	; Call member1 function on

(write (member1? 'one '(1 2 3 4 5)))
(write (member1? 'd '(a b c d c b a)))

(define (set1? someList)
	(cond ((null? someList) #f)
		(else #t ))

)

(write (set1? '()))
(write (set1? '(a b c d c b a)))
;(write (set1? '(it was the best of times, it was the worst of times))

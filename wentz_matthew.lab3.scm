#!/usr/local/bin/guile -s
!#

(display "Hello World\n")

;;; member? funtion


;;;(define (member? e list)
;;;	(cond((null? y) #f)
;;;	((eqv? x (car y)) #t)
;;;		(else (member? x (cdr y)))))


(define (member? e list)
	(if (memq e list))
	#t
	#f)

(define (1 2 3 4))
(member? 3 '(1 2 3 4))

;;; union function

(define (union list1 list2)
	(cond ((null? list2) list1)
	((element? (car list2) list1)
	(union list1 (cdr list2)))
	(#t (union (cons (car list2) list1) (cdr list2 ))))
)



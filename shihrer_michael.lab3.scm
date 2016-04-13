#!/usr/local/bin/guile -s
!#

(define (member? e list)				; Define member? function to accept an argument e and check if it exists in list. 
	(if (null? list) #f				; Return false if the list is empty.  This means either no list was passed or the entire list was searched without finding a match.
		(if (equal? e (car list)) #t		; Return true if argument i is equal to first item of someList, this means a match was found.
			(member? e (cdr list)))))	; Call member? function recursively on the remaining items of someList (all but first item)

(define (set? list)					; Define set? function to accept a list
	(cond ((null? list) #t)				; Return true when list is null.  Means entire list has been checked or it's an empty list.
		((member? (car list)			; Check to see if first item of list is a member of the rest of the list.
			(cdr list)) #f)			; Return false if member? returns true.
		(else (set? (cdr list)))))		; Otherwise, recursively call set? on remaining list.


; Tests
(write (member? 'one '(1 2 3 4 5)))
(write (member? 'd '(a b c d c b a)))
(write (set? '()))
(write (set? '(a b c d c b a)))
(write (set? '(a)))
(write (set? '(it was the best of times, it was the worst of times)))
(write (set? '(this is a set)))

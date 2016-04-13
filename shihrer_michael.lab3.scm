#!/usr/local/bin/guile -s
!#

; Check to see if parameter e is in parameter list
(define (member? e list)				; Define member? function to accept an argument e and check if it exists in list. 
	(cond ((null? list) #f)				; Return false if the list is empty.  This means either no list was passed or the entire list was searched without finding a match.
	((equal? e (car list)) #t)			; Return true if argument i is equal to first item of someList, this means a match was found.
	(else (member? e (cdr list)))))			; Call member? function recursively on the remaining items of someList (all but first item)

; Check to see if parameter list is a well formed set
(define (set? list)					; Define set? function to accept a list
	(cond ((null? list) #t)				; Return true when list is null.  Means entire list has been checked or it's an empty list.
	((member? (car list) (cdr list)) #f)		; Check to see if first item of list is a member of the rest of the list.  Return false if member? returns true.
	(else (set? (cdr list)))))			; Otherwise, recursively call set? on remaining list.


; Tests
(newline) (write (member? 'one '(1 2 3 4 5)))		; #f
(newline) (write (member? 'd '(a b c d c b a)))		; #t
(newline) (write (member? 'a '(1 2 3)))			; #f
(newline) (write (member? 'f '(f k a j w)))		; #t
(newline) (write (member? 'one '(one two three)))	; #t
(newline) (write (member? '1 '(one two three)))		; #f
(newline) (write (set? '()))				; #t
(newline) (write (set? '(a b c d c b a)))		; #f
(newline) (write (set? '(a)))				; #t
(newline) (write (set? '(it was the best of times, 	; #f
			it was the worst of times)))
(newline) (write (set? '(this is a set)))		; #t

(newline)

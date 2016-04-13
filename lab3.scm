; Michael Shihrer & Matthew Wentz
; CSCI 305 Lab 3
; 12 Apr 16

; Warmup
(define (f list)
	; (a) ;
	(if (null? list)				; Check if list is empty
	; (b) ;
	'()						; Return empty list
	; (c) ;
	(cons (+ 1 (car list)) (f (cdr list)))))	; Else construct a new list adding 1 to the first item.

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

; union function combines the values of two lists
(define (union list1 list2)				; Define union to accept parameters list1 and list2
	(if(null? list1) list2				; If list1 is null, return list2
	(union (cdr list1)				; union remaining of list1 with
		(if(member? (car list1) list2)		; if first item of list1 is in list2
		list2					; list2
		(cons(car list1) list2)))))		; else build new list by adding first item of list1 with list 2

; intersect function compares two lists and returns
; only the elements that are present in both
(define (intersect list1 list2)				; Define intersect to accept parameters list1 and list2
  	(cond ((null? list1) '())((null? list2) '())	; Return empty list if list1 is null or list2 is null
	(else (append (intersect (cdr list1) list2)	; Otherwise append intersect of remaining list1 and list2
		  (if (member? (car list1) list2)	; If item of list1 is in list 2 
		    (list (car list1))'())))))

; Lab questions
	  (display "1.  ") (display (f '(2 7 8 1 3 9)))								; (3 8 9 2 4 10)
(newline) (display "2.  ") (display "It increments the items of a given list by 1")
(newline) (display "3.  ") (display "The line checks if list is empty/null")
(newline) (display "4.  ") (display "The line returns the empty list when list is empty")
(newline) (display "5.  ") (display "Recursively calls function f on remaining list after incrementing the first item of the list")
(newline) (display "6.  ") (display (member? 'one '(1 2 3 4 5)))						; #f
(newline) (display "7.  ") (display (member? 'd '(a b c d c b a)))						; #t
(newline) (display "8.  ") (display (set? '(a b c d c b a)))							; #f
(newline) (display "9.  ") (display (set? '(it was the best of times, it was the worst of times)))		; #f
(newline) (display "10. ") (display (union '(blue eggs and cheese) '(ham and sandwich)))			; (cheese eggs blue ham and sandwich)
(newline) (display "11. ") (display (intersect '(blue cheese and cherry) '(cheese and blue eggs)))		; (and cheese blue)
(newline) (display "12. ") (display "I like that Scheme is a functional language.  I've never used a functional language so it was interesting.  I like that recursion is such an important part of functional programming")
(newline) (display "13. ") (display "I dislike the syntax for Scheme.  It's hard to follow.  I think there's too many parentheses which caused me a few issues.")
(newline) (display "14. ") (display "We spent about 5 hours each on this lab.")
(newline) (display "15. ") (display "I did enjoy this lab.  It was interesting working on lists.  I don't know if I'll use Scheme again, I'm not sure if I'll choose it over another functional language like f#")

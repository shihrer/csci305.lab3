; element? function checks if an element exists in a list
(define (element? a lst)
  (and (not (null? lst))
       (or (eq? a (car lst))
	   (element? a (cdr lst)))))

; union function combines the values of two lists
(define (union list1 list2)
	(if(null? list1) list2
	(union (cdr list1)
		(if(element? (car list1) list2)
		list2
		(cons(car list1) list2)))))

(write (union '(blue eggs and cheese) '(cheese and blue eggs))) ; returns 
(newline)							; (cheese and blue eggs)
(write (union '(2 4) '(1 3 5))) ; returns (4 2 1 3 5)
(newline)

; intersect function compares two lists and returns
; only the elements that are present in both
(define (intersect list1 list2)
  (cond ((null? list1) '())((null? list2) '())
	(else
	  (append (intersect (cdr list1) list2)
		  (if (element? (car list1) list2)
		    (list (car list1))'())))))

(write (intersect '(1 2 3 4 5) '(2 4))) ; returns (4 2)
(newline)
(write (intersect '(blue moon) '(blue))) ; returns (blue)
(newline)





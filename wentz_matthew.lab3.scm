(define (element? a lst)
  (and (not (null? lst))
       (or (eq? a (car lst))
	   (element? a (cdr lst)))))
;;; union function

(define (union list1 list2)
	(if(null? list1) list2
	(union (cdr list1)
		(if(element? (car list1) list2)
		list2
		(cons(car list1) list2)))))

(write (union '(blue eggs and cheese) '(cheese and blue eggs)))
(newline)
(write (union '(2 4) '(1 3 5)))
(newline)

;;; intersection function

(define (intersect list1 list2)
  (cond ((null? list1) '())((null? list2) '())
	(else
	  (append (intersect (cdr list1) list2)
		  (if (element? (car list1) list2)
		    (list (car list1))'())))))

(write (intersect '(1 2 3 4 5) '(2 4)))
(newline)
(write (intersect '(blue moon) '(blue)))
(newline)





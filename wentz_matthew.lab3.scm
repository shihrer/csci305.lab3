(define (element? a lst)
  (and (not (null? lst))
       (or (eq? a (car lst))
	   (element? a (cdr lst)))))


(define (unionx list1 list2)
	(if(null? list1) list2
	(unionx (cdr list1)
		(if(element? (car list1) list2)
		list2
		(cons(car list1) list2)))))

(write (unionx '(blue eggs and cheese) '(cheese and blue eggs)))
(newline)
(write (unionx '(2 4) '(1 3 5)))
(newline)


(define (take k lst)
	(if (or (null? lst) (= k 0))
	'()
	(cons (car lst) 
	(take (- k 1) 
	       (cdr lst))
	       ))) ;takes the first k elements of a list
	       
(define (drop k lst)
	(cond ((null? lst) '())
	      ((not (= k 0)) (drop (- k 1) (cdr lst)))
	      (else (cons (car lst) (drop 0 (cdr lst)))))) ;takes the last k elements of a list
	
(define (merge x y)
	(cond ((null? x) y)
	      ((null? y) x)
	      ((< (car x)(car y)) 
		  (cons (car x)(merge (cdr x) y)))
	      (else (cons (car y)(merge x (cdr y)))))) ;merge two sorted lists in one
	      
(define (merge-sort lst)
	(if (or (null? lst) (null? (cdr lst))) lst
	(merge (merge-sort (take (div (length lst) 2) lst))
	       (merge-sort (drop (div (length lst) 2) lst)))))
	       
	       
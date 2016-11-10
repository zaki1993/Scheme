(define (find_last_list lst)
	(if (null? lst) 
	    '()
	    (if (= (length lst) 1)	
		(car lst)
		(find_last_list (cdr lst)))))

	
(define (find_nth_list lst k)
	(cond 
	      ((null? lst) '())
	      ((= k 0) (car lst))
	      ((= k (length lst)) (car lst))
	      ((> k (length lst)) (find_nth_list lst (- k (length lst))))
	      ((> k 0) (find_nth_list (cdr lst) (- k 1)))
	      ((< k 0) (find_nth_list lst (- (+ (length lst) 1) k)))
	))
	
(define (remove_last_list lst)
	(if (null? lst) 
	    '()
	    (if (= (length lst) 1)
		'()
		(cons (car lst) (remove_last_list (cdr lst))))))
		
(define (palindrome_list lst)
	(if (null? lst)
	    #t
	    (if (= (length lst) 1)
		#t
		(if (= (car lst) (car (reverse lst)))
		    (palindrome_list (remove_last_list (cdr lst)))
		    #f))))
		    
(define (append_object lst item)
	(cond ((and (null? lst) (not (null? item))) (list item))
	      ((null? item) lst)
	      (else (cons (car lst) (append_object (cdr lst) item)))))
	      
(define (length_list lst)
	(if (not(list? lst))
	    "Not list"
	    (if (null? lst)
		0
		(+ 1 (length (cdr lst))))))
		
(define (remove_repeated lst)
	(if (null? lst)
	    '()
	    (if (= (length_list lst) 1)
		'()
		(if (= (car lst) (cadr lst))
		    (remove_repeated (cdr lst))
		    (cdr lst)))))
		
(define (flatten lst)
	(if (null? lst)
	    '()
	    (if (list? (car lst))
		(flatten (append_object (car lst) (cdr lst)))
		(cons (car lst) (flatten (cdr lst))))))
		
(define (frequency_list lst elem)
	(if (null? lst)
	    0
	    (if (= elem (car lst))
		(+ 1 (frequency_list (cdr lst) elem))
		(frequency_list (cdr lst) elem))))


(define (encode_helper lst)
	(if (null? lst) 
	    '()
	    (if (= (length_list lst) 1)
		lst
		(if (= (car lst) (cadr lst))
		    (cons (car lst) (encode_helper (cdr lst)))
		    (list (car lst))))))
		    
(define (encode lst)
	(if (null? lst)
	    '()
	    (cons (list (length_list (encode_helper lst)) (car lst)) (encode (remove_repeated lst)))))
		


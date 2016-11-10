; reduce = fold 
; fold-left, fold-right

(define (div-all lst)
	( if (null? lst)
	1
	(/ (div-all (cdr lst)) (car lst) )))
	
 (define (fold-right start fn lst)
	 ( if (null? lst)
	 start
	 (fn (car lst) (fold-right start fn (cdr lst))))) ; reduce right = fold-right
	 
 (define (fold-left start fn lst)
	 ( if (null? lst)
	 start
	 (fn (fold-left start fn (cdr lst)) (car lst) ))) ; reduce left = fold-left
	 
 (define (to-sentence s)(fold-right " " (lambda (x y)(string-append (string-append x " ") y)) s))
 
 (define (find_min_x points)
	 (define xs (map car points))
	 (fold-right (car xs)
		     (lambda (a b)
			     (if (> a b) b a))
		      xs))
		      
 (define (find_min_y points)
       (define xs (map cadr points))
       (fold-right (car xs)
		   (lambda (a b)
			   (if (> a b) b a))
		    xs))
	      
 (define (pow x y)(if(> y 0) (* x (pow x (- y 1))) 1)) ;exponent function
  
	      
 (define (get_length point1 point2)
	 ( sqrt (+ (pow (- (car point2) (car point1)) 2) (pow (- (cadr point2) (cadr point1)) 2))))
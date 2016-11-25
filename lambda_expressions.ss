(define (endless x)
	(display x)
	(endless (+ x 1))) ;endless function
	
(define (foo)
	(+ 2 5))

(define boo
	(lambda ()
		(+ 2 5))) ;lambda function with no parameters
		
(define (mdelay lst)
	(lambda ()
	lst))

(define (mforce fn) (fn)) 

(define (stream-cons a b)
	(cons a (mdelay b))
)
(define (ones)
	(stream-cons 1 ones))
	
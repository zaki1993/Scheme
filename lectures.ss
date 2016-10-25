;Lecture 1

(lambda (a) (lambda (b) (+ (* 5 a) b)))

((lambda (a) (lambda (b) (+ (* 5 a) b ))) 7)

(((lambda (a) (lambda (b) (+ (* 5 a) b))) 7) 4)

(define (add x) (lambda (k) (+ x k)))
(define add1 (add 1))
(define add5 (add 5))

(define (agen n)(lambda (k) (set! n (+ n k)) n ))
(define f (agen 10))
(define g (agen 1000))

(define (fgen n)(cons 
		(lambda (k) (set! n (+ n k)) n)
		(lambda (k) (set! n (* n k)) n)))

(define fs (fgen 10))
(define add (car fs))
(define mul (cdr fs))
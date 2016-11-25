### Scheme functions refference

#### string-ref 
	(string-ref "Hello" 0) => 'H'
	
#### string-append
	(string-append "Hello" " world" "!") => "Hello world!"

#### eqv?
	(eqv? 'Pesho 'pesho) => #t
	(eqv? 'Pesho 'Gosho) => #f
	
#### string?
	(string? "Hello") => #t
	(string? 1234) => #f

#### null?
	(null? '()) => #t
	(null? '(1 2 3)) => #f

#### list
	(list 1 2 3) => (1 2 3)
	'(1 2 3) => (1 2 3)

#### list?
	(list? '()) => #t
	(list? 1) => #f

#### car
	(car '(1 2 3)) => 1
	
#### cdr
	(cdr '(1 2 3)) => (2 3)
	
#### cadr
	(cadr '(1 2 3) = (car (cdr '(1 2 3))) => 2
	
#### caar
	(caar '((1 2) 3)) = (car (car ('((1 2) 3)))) => 1
	
#### cdar
	(cdar '(1 (2 3)) = (cdr (car '((1 2) 3))) => 2
	
#### make-vector
	(define v (make-vector 5)) => #(0 0 0 0 0)
	
#### vector-ref
	(vector-ref v 2) => 0
	
#### vector-set!
	(vector-set v 2 9) => #(0 0 9 0 0)

#### cons
	(cons 1 '()) => (1)
	(cons 1 2) => (1.2)

#### set-car!
	(define pair (cons 1 #t)) => (1 . #t)
	(set-car! pair 2) => (2 . #t)
	
#### set-cdr!
	(define pair (cons 1 #t)) => (1 . #t)
	(set-cdr! pair #f) => (1 . #f)
	
#### list-ref
	(list-ref '(1 2 3) 0) => 1
	
#### list-tail
	(list-tail '(1 2 3) 1) => (2 3)
	
#### pair?
	(pair? '(1 2)) => #t
	(pair? '(1 . 2)) => #t



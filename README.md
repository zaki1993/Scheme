### Scheme functions refference

#### let
	(let ((x 3) (y 2)) (* x y)) => 6
	(define x 5)
	(let ((x 3) (y x)) (* x y)) => 5 Because we defined x as global variable.

#### let*
	(define x 5)
	(let ((x 3) (y x)) (* x y)) => 9
	
#### string-ref 
	(string-ref "Hello" 0) => 'H'
	
#### string-append
	(string-append "Hello" " world" "!") => "Hello world!"

#### qusiquote
	(quasiquote(1 (2 3 4) 5)) => (1 (2 3 4) 5)

#### ,
	(quasiquote(1 ,(list 2 3 4) 5)) => (1 (2 3 4) 5)
	
#### @
	(qusiquote(1 ,@(2 3 4) 5)) => (1 2 3 4 5)
	
#### case
	(case 4 ((1 2) ’A) ((3 4 5) ’B) (else ’C)) => B
	(case x ((1 2) ’A) ((3 x 5) ’B) (else ’C)) => C
	(case ’x ((1 x) ’A) ((3 4 5) ’B) (else ’C)) => A	
	
#### eqv?
	(eqv? 'Pesho 'pesho) => #t
	(eqv? 'Pesho 'Gosho) => #f
	
#### char?
	(define x \#a)
	(char? x) => #t
	(char? \#a) => \x23 is not bound. That is why we should bind it to a variable first.
	(char? 5) => #f
	
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

#### symbol?
	(symbol? 'something) => #t
	(symbol? '(1 2 3)) => #f
	
#### pair? 
	(pair? (cons 1 2)) => #t
	(pair? '(1 2)) => #t
	(pair? '(1.2)) => #t
	(pair? 5) =>#f
		
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
	
#### make-bytevector
	(define x (make-bytevector 5) => #vu8(0 0 0 0 0)
	
#### make-vector
	(define v (make-vector 5)) => #(0 0 0 0 0)
	
#### vector-ref
	(vector-ref v 2) => 0
	
#### vector-set!
	(vector-set! v 2 9) => #(0 0 9 0 0)
	(vector-set! v 0 "hello") => #("hello" 0 9 0 0)

#### cons
	(cons 1 '()) => (1)
	(cons 1 2) => (1 . 2)
	(cons 1 2 3) => Incorrect number of arguments error!

#### cons*
	(cons* 1 2 3) => (1 2 . 3)
	(cons* 1 2 3 '()) => (1 2 3)
	
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

#### ;
	;it's a comment


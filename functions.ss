(define (anti c) (if (= c 0) 0 (- 0 c))) ;Anti number function

(define (anti_list ls)(if (not (null? ls)) (cons (anti (car ls)) (anti_list (cdr ls))) '())) ;Anti list function

(define (sum_list ls)(if (null? ls) 0 (+ (car ls) (sum_list (cdr ls))))) ;Sum array function

(define (even_numbers N)(if (> N 0) (if(= (mod N 2) 0) (cons N (even_numbers (- N 2))) (even_numbers (- N 1))) '())) ;Even numbers in range

(define (is_even x) (if (= (mod x 2) 0) #t #f))

(define (is_odd x) (if (not(= (mod x 2) 0)) #t #f))

(define (odd_numbers N)(if (> N 0) (if(not(= (mod N 2) 0)) (cons N (odd_numbers (- N 2))) (odd_numbers (- N 1))) '())) ;Odd numbers in range

(define (is_prime_helper x k)(if (= x k) #t (if (= (mod x k) 0) #f (is_prime_helper x (+ k 1))))) ;prime function helper

(define (is_prime x)(cond ((< x 2) #f) ((= x 2) #t) (else (is_prime_helper x 2)))) ;returns if a number is prime

(define (prime_range M N)(if(< M (+ N 1)) (if(is_prime M) (cons M (prime_range (+ M 1) N)) (prime_range (+ M 1) N)) '())) ;prime numbers in range

(define (pow x y)(if(> y 0) (* x (pow x (- y 1))) 1)) ;exponent function

(define (division_remainder x y) (if(= y 0) #f (if(= (mod x y) 0) #t #f))) ;check if number is divisible by another number

(define (range_remainder_number num M N) (if (< M (+ N 1)) (if(division_remainder M num) (cons M (range_remainder_number num (+ M 1) N)) (range_remainder_number num (+ M 1) N)) '())) ;returns list with all the numbers divisible by a given number in a range

(define (convert_temperature degree from to)(if (string=? "C" from) (cond ((string=? "C" to) degree) ((string=? "F" to) (+ (* degree 1.8) 32)) ((string=? "K" to) (+ degree 273.15))) (if (string=? "F" from) (cond ((string=? "F" to) degree) ((string=? "C" to) (/ (- degree 32) 1.8)) ((string=? "K" to) (/ (+ 459.67 degree) 1.8))) (if (string=? "K" from) (cond ((string=? "K" to) degree) ((string=? "C" to) (- degree 273.15)) ((string=? "F" to) (- (* degree 1.8) 459.67))))))) ;converts teperature function

(define (abs_num x)(if (< x 0) (- 0 x) x)) ;returns absolute value of number

(define (sqr-list ls) (if(null? ls) '() (cons (pow (car ls) 2) (sqr-list (cdr ls)))))

(define matrix '( (1 2 3) (4 5 6) (7 8 9) )) ;define matrix

(define (first_col_matrix x)(if(null? x) '() (nmap car matrix))) ;using map function nmap = map

(define (nmap f ls) (if (null? ls) '() (cons (f (car ls)) (map f (cdr ls))))) ;define map function

(define (transpose_matrix x) (if(null? (car x)) '() (cons (nmap car x) (transpose_matrix (nmap cdr x))))) ;transposes a given matrix

(define (even_nums_list ls) (if(null? ls) '() (if(is_even (car ls)) (cons (car ls) (even_nums_list (cdr ls))) (even_nums_list (cdr ls)))))

(define (fact x) (if (<= x 1) 1 (* x (fact (- x 1))))) ;factorial function

(define (fibonacci x) (if (or (= x 1) (= x 2)) 1 (+ (fibonacci (- x 1)) (fibonacci (- x 2))))) ;fibonacci function

(define (max x y) (if (< x y) y x)) ;the bigger of two numbers

(define (min x y) (if (> x y) y x))	;the smaller of two numbers

(define (pairs_first_last xs)(if (null? xs) '() (cons (car xs) (pairs (reverse (cdr xs))))))

(define (find-max xs max)(cond ((null? xs) max)
                           ((and (< max (caar xs)) (> (caar xs) (cdar xs))) (find-max (cdr xs) (caar xs)))
                           ((and (< max (cdar xs)) (> (cdar xs) (caar xs))) (find-max (cdr xs) (cdar xs)))
                           (else (find-max (cdr xs) max))))
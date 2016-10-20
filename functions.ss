(define (anti c) (if (= c 0) 0 (- 0 c))) ;Anti number function
(define (anti_list ls)(if (not (null? ls)) (cons (anti (car ls)) (anti_list (cdr ls))) '())) ;Anti list function
(define (sum_list ls)(if (null? ls) 0 (+ (car ls) (sum_list (cdr ls))))) ;Sum array function
(define (even_numbers N)(if (> N 0) (if(= (mod N 2) 0) (cons N (even_numbers (- N 2))) (even_numbers (- N 1))) '())) ;Even numbers in range	
(define (odd_numbers N)(if (> N 0) (if(not(= (mod N 2) 0)) (cons N (odd_numbers (- N 2))) (odd_numbers (- N 1))) '())) ;Odd numbers in range
(define (is_prime_helper x k)(if (= x k) #t (if (= (mod x k) 0) #f (is_prime_helper x (+ k 1))))) ;prime function helper
(define (is_prime x)(cond ((< x 0) #f) ((= x 1) #t) ((= x 2) #t) (else (is_prime_helper x 2)))) ;returns if a number is prime
(define (pow x y)(if(> y 0) (* x (pow x (- y 1))) 1)) 
(define (prime_range M N)(if(< M (+ N 1)) (if(is_prime M) (cons M (prime_range (+ M 1) N)) (prime_range (+ M 1) N)) '()))
(define (division_remainder x y) (if(= y 0) #f (if(= (mod x y) 0) #t #f)))
(define (range_remainder_number num M N) (if (< M (+ N 1)) (if(division_remainder M num) (cons M (range_remainder_number num (+ M 1) N)) (range_remainder_number num (+ M 1) N)) '()))
(define (convert_temperature degree from to)(if (string=? "C" from) (cond ((string=? "C" to) degree) ((string=? "F" to) (+ (* degree 1.8) 32)) ((string=? "K" to) (+ degree 273.15))) (if (string=? "F" from) (cond ((string=? "F" to) degree) ((string=? "C" to) (/ (- degree 32) 1.8)) ((string=? "K" to) (/ (+ 459.67 degree) 1.8))) (if (string=? "K" from) (cond ((string=? "K" to) degree) ((string=? "C" to) (- degree 273.15)) ((string=? "F" to) (- (* degree 1.8) 459.67)))))))

(define (anti c) (if (= c 0) 0 (- 0 c))) ;Anti number function
(define (anti_list ls)(if (not (null? ls)) (cons (anti (car ls)) (anti_list (cdr ls))) '())) ;Anti list function
(define (sum_list ls)(if (null? ls) 0 (+ (car ls) (sum_list (cdr ls))))) ;Sum array function
(define (even_numbers N)(if (> N 0) (if(= (mod N 2) 0) (cons N (even_numbers (- N 2))) (even_numbers (- N 1))) '())) ;Even numbers in range	
(define (odd_numbers N)(if (> N 0) (if(not(= (mod N 2) 0)) (cons N (odd_numbers (- N 2))) (odd_numbers (- N 1))) '())) ;Odd numbers in range
#lang scheme

(define (sqrt x)
    (define (abs x)
        (if (< x 0)
            (- x)
            x))
    (define (sqrt_wrap x guess)
        (if (< (abs (- x (* guess guess))) 0.0001)
            guess
            (sqrt_wrap x (/ (+ guess (/ x guess)) 2))
        ))
    (sqrt_wrap x (/ x 2)))

(sqrt 16)

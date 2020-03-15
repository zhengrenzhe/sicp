#lang scheme

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (cbrt_wrap x guess)
    (if (< (abs (- x (* guess guess guess))) 0.0001)
        guess
        (cbrt_wrap x (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
    ))

(define (cbrt x)
    (cbrt_wrap x (/ x 3)))

(cbrt 3)
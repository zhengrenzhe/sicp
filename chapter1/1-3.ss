#lang scheme

(define (max a b c)
    (cond 
        ((and (< a b) (< a c)) (+ b c))
        ((and (< b a) (< b c)) (+ a c))
        ((and (< c a) (< c b)) (+ a b))
    ))

(max 1 2 3)
(max 1 3 2)
(max 2 1 3)
(max 2 3 1)
(max 3 1 2)
(max 3 2 1)

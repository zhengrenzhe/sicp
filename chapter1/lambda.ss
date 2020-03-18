#lang scheme

(define (call expr a b)
    (
        let (
            (res1 (expr a b))
            (res2 (expr a b))
            ) 
            (+ res1 res2)
    )
)

(call (lambda (a b) (+ a b)) 1 2)
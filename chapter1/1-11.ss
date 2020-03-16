#lang scheme

(define (calc n)
    (if (< n 3)
        n
        (+  (calc (- n 1))
            (* 2 (calc (- n 2)))
            (* 3 (calc (- n 3)))
        )
    )
)



(define (calc2 n)
    (define (q a b c d e f count max_count)
        (if (< count max_count)
            (q (+ a (* 2 b) (* 3 c)) a b  (+ d (* 2 e) (* 3 f)) d e (+ count 1) max_count)
            (+ (* 2 (+ a (* 2 b) (* 3 c))) (+ d (* 2 e) (* 3 f)))
    ))
    (cond ((< n 3) n)
          ((= n 3) 4)
          ((= n 4) 11)
          ((= n 5) 25)
          ((> n 5) (q 8 3 1 9 5 2 6 n))
    ))

(define value 32000)

; (calc value) 
(calc2 value)
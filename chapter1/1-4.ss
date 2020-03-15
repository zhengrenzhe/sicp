#lang scheme

(define (p) (p))

(define (test x y)
    (if (= x 0) 0 y))

(test 0 (p))

; 应用序先求值参数再展开，采用应用序的解释器会无限递归
; 正则序先展开再求值参数，输出0
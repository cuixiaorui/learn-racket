#lang racket

; = 
(define (is-equre-5? num)
    (= num 5))


; true
(is-equre-5? 5)
; false
(is-equre-5? 3)


; <
(define (is-less-than-5? num)
    (< num 5))


; false
(is-less-than-5? 5)
; true
(is-less-than-5? 4)


;and
(define (is-child? age)
    (and (> age 0) (< age 18)))

; true
(is-child? 7)
; false
(is-child? 25)

;or
(define (test-or? num)
  (or (= num 5) (= num 10)))

; true
(test-or? 5)
; true
(test-or? 10)
; false
(test-or? 11)

;not
(define (test-not? num)
    (not (= num 5))
)

; false
(test-not? 5)
; true
(test-not? 15)
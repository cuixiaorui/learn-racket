#lang racket
(define (is-adult age)
    (cond 
        [(< age 18) "小孩"]
        [(> age 18) "成人"]
        [else "花一样的年龄"]))


(is-adult 1)
(is-adult 18)
(is-adult 28)
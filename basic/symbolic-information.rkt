#lang racket
; 第五章节  符号信息 Symbolic Information
; 一个有趣的问题是 string 和 symbol 的区别是什么
; '杯子 这就是一个 symbol  它是不可以拆分的，是属于最小单元 atom
; 而如果是 '杯子' 这个就是 string，字符序列，它是可以被拆分的,因为它是复合数据
; 这个性质就是 stirng 和 symbol 的区别

; '开头的话就称为 symbol

; 对比两个 symbol 是否相等
; true
(symbol=? 'hello 'hello)

(symbol=? 'hello 'hello1)

(define x 'hello)
; true
(symbol=? 'hello x)


; 和人打招呼的函数
; 注意要对比的是 symbol 类型 也就是 ' 开头
(define (reply s)
    (cond 
        [(symbol=? 'goodmoring s) "hi"]
        [(symbol=? 'HowAreyou s) "Fine"]
        [(symbol=? 'goodafternoon s) "ineednap"]
        [(symbol=? 'goodevening s) "boyamitired"]
        [else "Idon't know"]))

; hi 
(reply 'goodmoring)

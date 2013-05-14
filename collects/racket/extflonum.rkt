#lang racket/base

(require '#%extfl
         '#%unsafe
         "private/vector-wraps.rkt"
         (for-syntax racket/base))

(provide (all-from-out '#%extfl)

         in-extflvector for/extflvector for*/extflvector
         extflvector-copy)

(define-vector-wraps "extflvector"
  extflvector? extflvector-length extflvector-ref extflvector-set! make-extflvector
  unsafe-extflvector-ref unsafe-extflvector-set! unsafe-extflvector-length
  in-extflvector*
  in-extflvector
  for/extflvector
  for*/extflvector
  extflvector-copy
  0.0T0)
(define (over-or-under num1 num2) 
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0)
    (else 1)
  )
)

(define (make-adder num) 
  (define (adder x)
    (+ num x)
  )
  adder
)

(define (composed f g) 
  (define (output x)
    (f (g x))
  ) 
  output  
)

(define (repeat f n)
  (lambda (x)
    (cond
      ((<= n 0) x)          
      ((= n 1) (f x))        
      (else (f ((repeat f (- n 1)) x))))) 
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
  (cond
    ((= a b) a)
    ((= a (max a b)) (if (zero? (modulo a b)) b (gcd b (modulo a b))))
    ((= b (max a b)) (if (zero? (modulo b a)) a (gcd a (modulo b a))))
  )
)

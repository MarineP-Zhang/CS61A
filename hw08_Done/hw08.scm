(define (ascending? s) 
    (cond
        ((null? s) #t)
        ((null? (cdr s)) #t)
        ((< (car s) (car (cdr s))) (and #t (ascending? (cdr s))))
        ((= (car s) (car (cdr s))) (and #t (ascending? (cdr s))))
        (else #f)
    )
)

(define (my-filter pred s) 
    (cond
        ((null? s) nil)
        ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
        (else (my-filter pred (cdr s)))
    )
)

(define (interleave lst1 lst2) 
    (cond
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))
    )
)

(define (no-repeats s) 
    (if (null? s) s
        (cons (car s) 
            (no-repeats (filter (lambda (x) (not (= (car s) x))) (cdr s))))  
    )
)

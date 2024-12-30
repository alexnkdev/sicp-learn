(define (f-recursive n)
    (cond
        ((< n 3) n)
        (else
            (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))))
        )
    )
)

(define (f-iterative n)
    (cond
        ((< n 3) n)
        (else
            (f-iterative-sub 2 1 (- n 1))
        )
    )
)

(define (f-iterative-sub prev prev-prev count)
    (if (= count 0)
        prev-prev
        (f-iterative-sub (+ (* 2 prev-prev) prev) prev (- count 1))
    )
)

(f-recursive 1)
(f-recursive 2)
(f-recursive 3)
(f-recursive 4)
(f-recursive 5)
(f-recursive 6)
(f-recursive 7)
(f-recursive 8)
(f-recursive 9)
(f-recursive 10)

(f-iterative 1)
(f-iterative 2)
(f-iterative 3)
(f-iterative 4)
(f-iterative 5)
(f-iterative 6)
(f-iterative 7)
(f-iterative 8)
(f-iterative 9)
(f-iterative 10)

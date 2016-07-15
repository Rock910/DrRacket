;; double-all: lon-> lon
;; purpose: to double every number in a list
;;(define(fn-for-lon lon)
;;(cond
;;[(empty? lon)...]
;;[else (..(first lon) (fn-for-lon(rest lon)))])))
(check-expect(double-all(list 1 2 3)) 2 4 6)


(define (double-all lon)
  (cond [(empty? lon) empty]
        [else
         (cons (* 2 (first lon))
               (double-all (rest lon)))]))
               
               

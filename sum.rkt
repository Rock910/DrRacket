;;lon-> num
;; to sum a list of numbers
;;INVENTORY:
;; (first a-lon) first number in a list of numbers
;;(first(rest a-lon) second number in a list of numbers
;; etc.
;; data definition for list of numbers: lon is either
;;a). empty, i.e. empty list or
;;b). (cons n lon) 
;; data deifnition will help determine the body of the function
(define (sum-num a-lon)
;; must account for the two cases in the data definition: so either empty or cons n lon
(cond
[(empty?) empty]
;; could have also said 0
[else (+ (first a-lon) sum-num(rest a-lon)))])
;;reasoning is as follows: the data definition is recursive, that is it refers back to the function, 
;; so we need to put the function there(next to rest a-lon)
(check-expect(list( 1 2 3 4) 10))
(check-expect(list( 1 2 3 4 5)15))

;; list of 3 numbers-> number
;; to compute the addition of three numbers in a list
;;INVENTORY
;; (first(a-list)) gives the first number of a list
;;(first(rest(a-list)) gives the second number in a list
;;(first(rest(rest a-list)) gives the third number in a list
;; we can use addition as a primitive to add these 3 numbers using the selectors from inventory
(define(add3list a-list)
(+ (first a-list) (first(rest a-list))(first(rest(rest a-list)))
(check-expect(list( 1 2 3) 6)
(check-expect(list ( 0 0 0) 0)

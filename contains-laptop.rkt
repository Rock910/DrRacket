;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname contains-laptop) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; data definition for list of symbols
;; a list of symbols is either
;; a empty list
;; (cons s los) where s is a symbol and los is a list of symbols
;;f-on-los: los-->???
;; purpose:
;(define(f-on-los a-los)
;;INVENTORY
;;(empty? a-los) true if a-los is empty
;;(cons? a-los) true if a-los is non empty
;;if(cons? a-los)
;;(first a-los) the first symbol of a-los
;;(rest a-los) the los with the rest of the symbols of a-los
;;(f-on-los(rest a-los)) the ?? for the los that is the rest
;(cond
 ; [(empty? a-los)..]
  ;[else..(first a-los)..(f-on-los(rest a-los))]))

;;create a function that determines if 'laptop is in the list
(define(contains-laptop? a-los)
  (cond
  [(empty? a-los)false]
  [else(cond
         [(symbol=?(first a-los)'laptop)true]
         [else
         (contains-laptop?(rest a-los))])]))
(check-expect(contains-laptop? (cons 'laptop empty))true)

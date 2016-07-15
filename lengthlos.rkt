;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lengthlos) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;design and write a function that takes as input a los and returns its lenght
;;f-on-los: los:->??
;;purpose: to return the legnth of a list
;;(define(fn-on-los a-los)
;;INVENTORY
;;(empty? a-los) true if a-los is empty
;;(cons? a-los) true if a-los is non empty
;;if (cons? a-los) true, then
;;(first a-los) the first symbol in a-los
;;(rest a-los) the los with the rest of symbols of los
;;(f-on-los(rest a-los) the ?? for the los that is rest
;(cond
;[(empty? a-los)..]
;[else (first a-los) (fn-on-los(rest a-los)))))
(define (lengthlos a-los)
  (cond
    [(empty? a-los) 0]
    [else (+ 1 (lengthlos (rest a-los)))]))
(check-expect(lengthlos(cons 'hi (cons 'lie empty)))2)
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-5) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define SCALE 5)

(define (tree-image scale)
  (overlay/xy
   (circle (* 10 scale) "solid" "green")
   (* 7.5 scale)
   (* 18 scale)
   (rectangle (* 5 scale) (* 10 scale) "solid" "brown")
   )
  )

(tree-image SCALE)
                            
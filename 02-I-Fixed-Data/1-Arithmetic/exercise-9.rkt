;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-9) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;; I Fixed Data - Exercise 9
;; Author: @mathsantana

(define in -42)

(define convert-to-non-negative
  (cond
  [ (string? in) (string-length in) ]
  [ (image? in) (* (image-width in) (image-height in)) ]
  [ (number? in) (abs in) ]
  [ (and (boolean? in) in) 10 ]
  [ (and (boolean? in) (not in)) 20 ])
)

convert-to-non-negative

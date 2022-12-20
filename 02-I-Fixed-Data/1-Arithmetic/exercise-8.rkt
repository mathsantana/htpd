;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-8) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;; I Fixed Data - Exercise 8
;; Author: @mathsantana

(define CAT (bitmap "../assets/cat.png"))

(cond
  [(> (image-height CAT) (image-width CAT)) "tall"]
  [(= (image-height CAT) (image-width CAT)) "square"]
  [(< (image-height CAT) (image-width CAT)) "wide"])

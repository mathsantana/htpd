;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname how-to-program) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;; Prologue: How to Program
;; Author: @mathsantana

;; Version 6 - After all refactoring

(define WIDTH 200)
(define HEIGHT 400)
(define V 5)
(define CENTER-X (/ WIDTH 2))


(define ROCKET (bitmap "../assets/rocket.png"))
(define BACKGROUND (empty-scene WIDTH HEIGHT))
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))

(define (distance t) (* V t))

(define (picture-rocket-v4 t)
(place-image ROCKET (/ WIDTH 2) t BACKGROUND))


(define (animate-rocket-v4 t)
  (cond
    [( <= (distance t)  ROCKET-CENTER-TO-TOP)
     (picture-rocket-v4 (distance t) )]
    [( > (distance t) ROCKET-CENTER-TO-TOP)
     (picture-rocket-v4 ROCKET-CENTER-TO-TOP)]
    )
  )

(animate animate-rocket-v4)
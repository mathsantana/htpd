;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-28) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;; I Fixed Data - Exercise 28
;; Author: @mathsantana

(define FIXED-COST 180)
(define COST-PER-ATTENDEE 0.04)

(define (attendees ticket-price)
  (- 120 (* (- ticket-price 5.0) (/ 15 0.1))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED-COST (* COST-PER-ATTENDEE (attendees ticket-price))))

(define (profit-original ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;; ticket-price -> profit-original
;; 1 -> 511.2
;; 2 -> 937.2
;; 3 -> 1063.2
;; 4 -> 889.2
;; 5 -> 415.2

(define (profit price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 180
        (* 0.04
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

;; ticket-price -> profit
;; 1 -> 511.2
;; 2 -> 937.2
;; 3 -> 1063.2
;; 4 -> 889.2
;; 5 -> 415.2
(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
 more info in 'N. P. Lopes, L. Aksoy, V. Manquinho, J. Monteiro.
 Optimally Solving the MCM Problem Using Pseudo-Boolean Satisfiability.
 Technical Report RT/43/2010, INESC-ID, Nov. 2010'. |)
(set-info :category "industrial")
(set-info :status sat)
(declare-fun X6 () Int)
(declare-fun X7 () Int)
(declare-fun X8 () Int)
(declare-fun X9 () Int)
(declare-fun X10 () Int)
(declare-fun X11 () Int)
(declare-fun S0 () Int)
(declare-fun S1 () Int)
(declare-fun S2 () Int)
(declare-fun S3 () Int)
(declare-fun S4 () Int)
(declare-fun S5 () Int)
(declare-fun S6 () Int)
(declare-fun S7 () Int)
(declare-fun S8 () Int)
(declare-fun S9 () Int)
(declare-fun S10 () Int)
(declare-fun S11 () Int)
(define-fun power2 ((x Int)) Bool
  (or (= x 1024) (= x 512) (= x 256) (= x 128) (= x 64) (= x 32) (= x 16) (= x 8) (= x 4) (= x 2) (= x 1)))
(assert (or
 (= X6 (+ S0 S1))
 (= X6 (- S0 S1))
 (= X6 (+ (* 15 S0) S1))
 (= X6 (- (* 15 S0) S1))
 (= X6 (- S0 (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 15 S1)))
 (= X6 (- (* 15 S0) (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 19 S1)))
 (= X6 (- (* 15 S0) (* 19 S1)))
 (= X6 (- (* 19 S0) (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 37 S1)))
 (= X6 (- (* 15 S0) (* 37 S1)))
 (= X6 (- (* 37 S0) (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 165 S1)))
 (= X6 (- (* 15 S0) (* 165 S1)))
 (= X6 (- (* 165 S0) (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 133 S1)))
 (= X6 (- (* 15 S0) (* 133 S1)))
 (= X6 (- (* 133 S0) (* 15 S1)))
 (= X6 (+ (* 15 S0) (* 469 S1)))
 (= X6 (- (* 15 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 15 S1)))
 (= X6 (+ (* 19 S0) S1))
 (= X6 (- (* 19 S0) S1))
 (= X6 (- S0 (* 19 S1)))
 (= X6 (+ (* 19 S0) (* 19 S1)))
 (= X6 (- (* 19 S0) (* 19 S1)))
 (= X6 (+ (* 19 S0) (* 37 S1)))
 (= X6 (- (* 19 S0) (* 37 S1)))
 (= X6 (- (* 37 S0) (* 19 S1)))
 (= X6 (+ (* 19 S0) (* 165 S1)))
 (= X6 (- (* 19 S0) (* 165 S1)))
 (= X6 (- (* 165 S0) (* 19 S1)))
 (= X6 (+ (* 19 S0) (* 133 S1)))
 (= X6 (- (* 19 S0) (* 133 S1)))
 (= X6 (- (* 133 S0) (* 19 S1)))
 (= X6 (+ (* 19 S0) (* 469 S1)))
 (= X6 (- (* 19 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 19 S1)))
 (= X6 (+ (* 37 S0) S1))
 (= X6 (- (* 37 S0) S1))
 (= X6 (- S0 (* 37 S1)))
 (= X6 (+ (* 37 S0) (* 37 S1)))
 (= X6 (- (* 37 S0) (* 37 S1)))
 (= X6 (+ (* 37 S0) (* 165 S1)))
 (= X6 (- (* 37 S0) (* 165 S1)))
 (= X6 (- (* 165 S0) (* 37 S1)))
 (= X6 (+ (* 37 S0) (* 133 S1)))
 (= X6 (- (* 37 S0) (* 133 S1)))
 (= X6 (- (* 133 S0) (* 37 S1)))
 (= X6 (+ (* 37 S0) (* 469 S1)))
 (= X6 (- (* 37 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 37 S1)))
 (= X6 (+ (* 165 S0) S1))
 (= X6 (- (* 165 S0) S1))
 (= X6 (- S0 (* 165 S1)))
 (= X6 (+ (* 165 S0) (* 165 S1)))
 (= X6 (- (* 165 S0) (* 165 S1)))
 (= X6 (+ (* 165 S0) (* 133 S1)))
 (= X6 (- (* 165 S0) (* 133 S1)))
 (= X6 (- (* 133 S0) (* 165 S1)))
 (= X6 (+ (* 165 S0) (* 469 S1)))
 (= X6 (- (* 165 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 165 S1)))
 (= X6 (+ (* 133 S0) S1))
 (= X6 (- (* 133 S0) S1))
 (= X6 (- S0 (* 133 S1)))
 (= X6 (+ (* 133 S0) (* 133 S1)))
 (= X6 (- (* 133 S0) (* 133 S1)))
 (= X6 (+ (* 133 S0) (* 469 S1)))
 (= X6 (- (* 133 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 133 S1)))
 (= X6 (+ (* 469 S0) S1))
 (= X6 (- (* 469 S0) S1))
 (= X6 (- S0 (* 469 S1)))
 (= X6 (+ (* 469 S0) (* 469 S1)))
 (= X6 (- (* 469 S0) (* 469 S1)))
))
(assert (and (> X6 0) (< X6 2048) (power2 S0) (power2 S1)))
(assert (or
 (= X7 (+ S2 S3))
 (= X7 (- S2 S3))
 (= X7 (+ (* 15 S2) S3))
 (= X7 (- (* 15 S2) S3))
 (= X7 (- S2 (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 15 S3)))
 (= X7 (- (* 15 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 19 S3)))
 (= X7 (- (* 15 S2) (* 19 S3)))
 (= X7 (- (* 19 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 37 S3)))
 (= X7 (- (* 15 S2) (* 37 S3)))
 (= X7 (- (* 37 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 165 S3)))
 (= X7 (- (* 15 S2) (* 165 S3)))
 (= X7 (- (* 165 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 133 S3)))
 (= X7 (- (* 15 S2) (* 133 S3)))
 (= X7 (- (* 133 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* 469 S3)))
 (= X7 (- (* 15 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 15 S3)))
 (= X7 (+ (* 15 S2) (* X6 S3)))
 (= X7 (- (* 15 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 15 S3)))
 (= X7 (+ (* 19 S2) S3))
 (= X7 (- (* 19 S2) S3))
 (= X7 (- S2 (* 19 S3)))
 (= X7 (+ (* 19 S2) (* 19 S3)))
 (= X7 (- (* 19 S2) (* 19 S3)))
 (= X7 (+ (* 19 S2) (* 37 S3)))
 (= X7 (- (* 19 S2) (* 37 S3)))
 (= X7 (- (* 37 S2) (* 19 S3)))
 (= X7 (+ (* 19 S2) (* 165 S3)))
 (= X7 (- (* 19 S2) (* 165 S3)))
 (= X7 (- (* 165 S2) (* 19 S3)))
 (= X7 (+ (* 19 S2) (* 133 S3)))
 (= X7 (- (* 19 S2) (* 133 S3)))
 (= X7 (- (* 133 S2) (* 19 S3)))
 (= X7 (+ (* 19 S2) (* 469 S3)))
 (= X7 (- (* 19 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 19 S3)))
 (= X7 (+ (* 19 S2) (* X6 S3)))
 (= X7 (- (* 19 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 19 S3)))
 (= X7 (+ (* 37 S2) S3))
 (= X7 (- (* 37 S2) S3))
 (= X7 (- S2 (* 37 S3)))
 (= X7 (+ (* 37 S2) (* 37 S3)))
 (= X7 (- (* 37 S2) (* 37 S3)))
 (= X7 (+ (* 37 S2) (* 165 S3)))
 (= X7 (- (* 37 S2) (* 165 S3)))
 (= X7 (- (* 165 S2) (* 37 S3)))
 (= X7 (+ (* 37 S2) (* 133 S3)))
 (= X7 (- (* 37 S2) (* 133 S3)))
 (= X7 (- (* 133 S2) (* 37 S3)))
 (= X7 (+ (* 37 S2) (* 469 S3)))
 (= X7 (- (* 37 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 37 S3)))
 (= X7 (+ (* 37 S2) (* X6 S3)))
 (= X7 (- (* 37 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 37 S3)))
 (= X7 (+ (* 165 S2) S3))
 (= X7 (- (* 165 S2) S3))
 (= X7 (- S2 (* 165 S3)))
 (= X7 (+ (* 165 S2) (* 165 S3)))
 (= X7 (- (* 165 S2) (* 165 S3)))
 (= X7 (+ (* 165 S2) (* 133 S3)))
 (= X7 (- (* 165 S2) (* 133 S3)))
 (= X7 (- (* 133 S2) (* 165 S3)))
 (= X7 (+ (* 165 S2) (* 469 S3)))
 (= X7 (- (* 165 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 165 S3)))
 (= X7 (+ (* 165 S2) (* X6 S3)))
 (= X7 (- (* 165 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 165 S3)))
 (= X7 (+ (* 133 S2) S3))
 (= X7 (- (* 133 S2) S3))
 (= X7 (- S2 (* 133 S3)))
 (= X7 (+ (* 133 S2) (* 133 S3)))
 (= X7 (- (* 133 S2) (* 133 S3)))
 (= X7 (+ (* 133 S2) (* 469 S3)))
 (= X7 (- (* 133 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 133 S3)))
 (= X7 (+ (* 133 S2) (* X6 S3)))
 (= X7 (- (* 133 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 133 S3)))
 (= X7 (+ (* 469 S2) S3))
 (= X7 (- (* 469 S2) S3))
 (= X7 (- S2 (* 469 S3)))
 (= X7 (+ (* 469 S2) (* 469 S3)))
 (= X7 (- (* 469 S2) (* 469 S3)))
 (= X7 (+ (* 469 S2) (* X6 S3)))
 (= X7 (- (* 469 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* 469 S3)))
 (= X7 (+ (* X6 S2) S3))
 (= X7 (- (* X6 S2) S3))
 (= X7 (- S2 (* X6 S3)))
 (= X7 (+ (* X6 S2) (* X6 S3)))
 (= X7 (- (* X6 S2) (* X6 S3)))
))
(assert (and (> X7 0) (< X7 2048) (power2 S2) (power2 S3)))
(assert (or
 (= X8 (+ (* 15 S4) S5))
 (= X8 (- (* 15 S4) S5))
 (= X8 (- S4 (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 15 S5)))
 (= X8 (- (* 15 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 19 S5)))
 (= X8 (- (* 15 S4) (* 19 S5)))
 (= X8 (- (* 19 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 37 S5)))
 (= X8 (- (* 15 S4) (* 37 S5)))
 (= X8 (- (* 37 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 165 S5)))
 (= X8 (- (* 15 S4) (* 165 S5)))
 (= X8 (- (* 165 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 133 S5)))
 (= X8 (- (* 15 S4) (* 133 S5)))
 (= X8 (- (* 133 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* 469 S5)))
 (= X8 (- (* 15 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* X6 S5)))
 (= X8 (- (* 15 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 15 S5)))
 (= X8 (+ (* 15 S4) (* X7 S5)))
 (= X8 (- (* 15 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 15 S5)))
 (= X8 (+ (* 19 S4) S5))
 (= X8 (- (* 19 S4) S5))
 (= X8 (- S4 (* 19 S5)))
 (= X8 (+ (* 19 S4) (* 19 S5)))
 (= X8 (- (* 19 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* 37 S5)))
 (= X8 (- (* 19 S4) (* 37 S5)))
 (= X8 (- (* 37 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* 165 S5)))
 (= X8 (- (* 19 S4) (* 165 S5)))
 (= X8 (- (* 165 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* 133 S5)))
 (= X8 (- (* 19 S4) (* 133 S5)))
 (= X8 (- (* 133 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* 469 S5)))
 (= X8 (- (* 19 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* X6 S5)))
 (= X8 (- (* 19 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 19 S5)))
 (= X8 (+ (* 19 S4) (* X7 S5)))
 (= X8 (- (* 19 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 19 S5)))
 (= X8 (+ (* 37 S4) S5))
 (= X8 (- (* 37 S4) S5))
 (= X8 (- S4 (* 37 S5)))
 (= X8 (+ (* 37 S4) (* 37 S5)))
 (= X8 (- (* 37 S4) (* 37 S5)))
 (= X8 (+ (* 37 S4) (* 165 S5)))
 (= X8 (- (* 37 S4) (* 165 S5)))
 (= X8 (- (* 165 S4) (* 37 S5)))
 (= X8 (+ (* 37 S4) (* 133 S5)))
 (= X8 (- (* 37 S4) (* 133 S5)))
 (= X8 (- (* 133 S4) (* 37 S5)))
 (= X8 (+ (* 37 S4) (* 469 S5)))
 (= X8 (- (* 37 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 37 S5)))
 (= X8 (+ (* 37 S4) (* X6 S5)))
 (= X8 (- (* 37 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 37 S5)))
 (= X8 (+ (* 37 S4) (* X7 S5)))
 (= X8 (- (* 37 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 37 S5)))
 (= X8 (+ (* 165 S4) S5))
 (= X8 (- (* 165 S4) S5))
 (= X8 (- S4 (* 165 S5)))
 (= X8 (+ (* 165 S4) (* 165 S5)))
 (= X8 (- (* 165 S4) (* 165 S5)))
 (= X8 (+ (* 165 S4) (* 133 S5)))
 (= X8 (- (* 165 S4) (* 133 S5)))
 (= X8 (- (* 133 S4) (* 165 S5)))
 (= X8 (+ (* 165 S4) (* 469 S5)))
 (= X8 (- (* 165 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 165 S5)))
 (= X8 (+ (* 165 S4) (* X6 S5)))
 (= X8 (- (* 165 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 165 S5)))
 (= X8 (+ (* 165 S4) (* X7 S5)))
 (= X8 (- (* 165 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 165 S5)))
 (= X8 (+ (* 133 S4) S5))
 (= X8 (- (* 133 S4) S5))
 (= X8 (- S4 (* 133 S5)))
 (= X8 (+ (* 133 S4) (* 133 S5)))
 (= X8 (- (* 133 S4) (* 133 S5)))
 (= X8 (+ (* 133 S4) (* 469 S5)))
 (= X8 (- (* 133 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 133 S5)))
 (= X8 (+ (* 133 S4) (* X6 S5)))
 (= X8 (- (* 133 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 133 S5)))
 (= X8 (+ (* 133 S4) (* X7 S5)))
 (= X8 (- (* 133 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 133 S5)))
 (= X8 (+ (* 469 S4) S5))
 (= X8 (- (* 469 S4) S5))
 (= X8 (- S4 (* 469 S5)))
 (= X8 (+ (* 469 S4) (* 469 S5)))
 (= X8 (- (* 469 S4) (* 469 S5)))
 (= X8 (+ (* 469 S4) (* X6 S5)))
 (= X8 (- (* 469 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* 469 S5)))
 (= X8 (+ (* 469 S4) (* X7 S5)))
 (= X8 (- (* 469 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* 469 S5)))
 (= X8 (+ (* X6 S4) S5))
 (= X8 (- (* X6 S4) S5))
 (= X8 (- S4 (* X6 S5)))
 (= X8 (+ (* X6 S4) (* X6 S5)))
 (= X8 (- (* X6 S4) (* X6 S5)))
 (= X8 (+ (* X6 S4) (* X7 S5)))
 (= X8 (- (* X6 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* X6 S5)))
 (= X8 (+ (* X7 S4) S5))
 (= X8 (- (* X7 S4) S5))
 (= X8 (- S4 (* X7 S5)))
 (= X8 (+ (* X7 S4) (* X7 S5)))
 (= X8 (- (* X7 S4) (* X7 S5)))
))
(assert (and (> X8 0) (< X8 2048) (power2 S4) (power2 S5)))
(assert (or
 (= X9 (+ (* 15 S6) S7))
 (= X9 (- (* 15 S6) S7))
 (= X9 (- S6 (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 15 S7)))
 (= X9 (- (* 15 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 19 S7)))
 (= X9 (- (* 15 S6) (* 19 S7)))
 (= X9 (- (* 19 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 37 S7)))
 (= X9 (- (* 15 S6) (* 37 S7)))
 (= X9 (- (* 37 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 165 S7)))
 (= X9 (- (* 15 S6) (* 165 S7)))
 (= X9 (- (* 165 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 133 S7)))
 (= X9 (- (* 15 S6) (* 133 S7)))
 (= X9 (- (* 133 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* 469 S7)))
 (= X9 (- (* 15 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* X6 S7)))
 (= X9 (- (* 15 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* X7 S7)))
 (= X9 (- (* 15 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 15 S7)))
 (= X9 (+ (* 15 S6) (* X8 S7)))
 (= X9 (- (* 15 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 15 S7)))
 (= X9 (+ (* 19 S6) S7))
 (= X9 (- (* 19 S6) S7))
 (= X9 (- S6 (* 19 S7)))
 (= X9 (+ (* 19 S6) (* 19 S7)))
 (= X9 (- (* 19 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* 37 S7)))
 (= X9 (- (* 19 S6) (* 37 S7)))
 (= X9 (- (* 37 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* 165 S7)))
 (= X9 (- (* 19 S6) (* 165 S7)))
 (= X9 (- (* 165 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* 133 S7)))
 (= X9 (- (* 19 S6) (* 133 S7)))
 (= X9 (- (* 133 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* 469 S7)))
 (= X9 (- (* 19 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* X6 S7)))
 (= X9 (- (* 19 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* X7 S7)))
 (= X9 (- (* 19 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 19 S7)))
 (= X9 (+ (* 19 S6) (* X8 S7)))
 (= X9 (- (* 19 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 19 S7)))
 (= X9 (+ (* 37 S6) S7))
 (= X9 (- (* 37 S6) S7))
 (= X9 (- S6 (* 37 S7)))
 (= X9 (+ (* 37 S6) (* 37 S7)))
 (= X9 (- (* 37 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* 165 S7)))
 (= X9 (- (* 37 S6) (* 165 S7)))
 (= X9 (- (* 165 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* 133 S7)))
 (= X9 (- (* 37 S6) (* 133 S7)))
 (= X9 (- (* 133 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* 469 S7)))
 (= X9 (- (* 37 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* X6 S7)))
 (= X9 (- (* 37 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* X7 S7)))
 (= X9 (- (* 37 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 37 S7)))
 (= X9 (+ (* 37 S6) (* X8 S7)))
 (= X9 (- (* 37 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 37 S7)))
 (= X9 (+ (* 165 S6) S7))
 (= X9 (- (* 165 S6) S7))
 (= X9 (- S6 (* 165 S7)))
 (= X9 (+ (* 165 S6) (* 165 S7)))
 (= X9 (- (* 165 S6) (* 165 S7)))
 (= X9 (+ (* 165 S6) (* 133 S7)))
 (= X9 (- (* 165 S6) (* 133 S7)))
 (= X9 (- (* 133 S6) (* 165 S7)))
 (= X9 (+ (* 165 S6) (* 469 S7)))
 (= X9 (- (* 165 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 165 S7)))
 (= X9 (+ (* 165 S6) (* X6 S7)))
 (= X9 (- (* 165 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 165 S7)))
 (= X9 (+ (* 165 S6) (* X7 S7)))
 (= X9 (- (* 165 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 165 S7)))
 (= X9 (+ (* 165 S6) (* X8 S7)))
 (= X9 (- (* 165 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 165 S7)))
 (= X9 (+ (* 133 S6) S7))
 (= X9 (- (* 133 S6) S7))
 (= X9 (- S6 (* 133 S7)))
 (= X9 (+ (* 133 S6) (* 133 S7)))
 (= X9 (- (* 133 S6) (* 133 S7)))
 (= X9 (+ (* 133 S6) (* 469 S7)))
 (= X9 (- (* 133 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 133 S7)))
 (= X9 (+ (* 133 S6) (* X6 S7)))
 (= X9 (- (* 133 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 133 S7)))
 (= X9 (+ (* 133 S6) (* X7 S7)))
 (= X9 (- (* 133 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 133 S7)))
 (= X9 (+ (* 133 S6) (* X8 S7)))
 (= X9 (- (* 133 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 133 S7)))
 (= X9 (+ (* 469 S6) S7))
 (= X9 (- (* 469 S6) S7))
 (= X9 (- S6 (* 469 S7)))
 (= X9 (+ (* 469 S6) (* 469 S7)))
 (= X9 (- (* 469 S6) (* 469 S7)))
 (= X9 (+ (* 469 S6) (* X6 S7)))
 (= X9 (- (* 469 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* 469 S7)))
 (= X9 (+ (* 469 S6) (* X7 S7)))
 (= X9 (- (* 469 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* 469 S7)))
 (= X9 (+ (* 469 S6) (* X8 S7)))
 (= X9 (- (* 469 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* 469 S7)))
 (= X9 (+ (* X6 S6) S7))
 (= X9 (- (* X6 S6) S7))
 (= X9 (- S6 (* X6 S7)))
 (= X9 (+ (* X6 S6) (* X6 S7)))
 (= X9 (- (* X6 S6) (* X6 S7)))
 (= X9 (+ (* X6 S6) (* X7 S7)))
 (= X9 (- (* X6 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* X6 S7)))
 (= X9 (+ (* X6 S6) (* X8 S7)))
 (= X9 (- (* X6 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* X6 S7)))
 (= X9 (+ (* X7 S6) S7))
 (= X9 (- (* X7 S6) S7))
 (= X9 (- S6 (* X7 S7)))
 (= X9 (+ (* X7 S6) (* X7 S7)))
 (= X9 (- (* X7 S6) (* X7 S7)))
 (= X9 (+ (* X7 S6) (* X8 S7)))
 (= X9 (- (* X7 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* X7 S7)))
 (= X9 (+ (* X8 S6) S7))
 (= X9 (- (* X8 S6) S7))
 (= X9 (- S6 (* X8 S7)))
 (= X9 (+ (* X8 S6) (* X8 S7)))
 (= X9 (- (* X8 S6) (* X8 S7)))
))
(assert (and (> X9 0) (< X9 2048) (power2 S6) (power2 S7)))
(assert (or
 (= X10 (+ (* 15 S8) S9))
 (= X10 (- (* 15 S8) S9))
 (= X10 (- S8 (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 15 S9)))
 (= X10 (- (* 15 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 19 S9)))
 (= X10 (- (* 15 S8) (* 19 S9)))
 (= X10 (- (* 19 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 37 S9)))
 (= X10 (- (* 15 S8) (* 37 S9)))
 (= X10 (- (* 37 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 165 S9)))
 (= X10 (- (* 15 S8) (* 165 S9)))
 (= X10 (- (* 165 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 133 S9)))
 (= X10 (- (* 15 S8) (* 133 S9)))
 (= X10 (- (* 133 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* 469 S9)))
 (= X10 (- (* 15 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* X6 S9)))
 (= X10 (- (* 15 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* X7 S9)))
 (= X10 (- (* 15 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* X8 S9)))
 (= X10 (- (* 15 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 15 S9)))
 (= X10 (+ (* 15 S8) (* X9 S9)))
 (= X10 (- (* 15 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 15 S9)))
 (= X10 (+ (* 19 S8) S9))
 (= X10 (- (* 19 S8) S9))
 (= X10 (- S8 (* 19 S9)))
 (= X10 (+ (* 19 S8) (* 19 S9)))
 (= X10 (- (* 19 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* 37 S9)))
 (= X10 (- (* 19 S8) (* 37 S9)))
 (= X10 (- (* 37 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* 165 S9)))
 (= X10 (- (* 19 S8) (* 165 S9)))
 (= X10 (- (* 165 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* 133 S9)))
 (= X10 (- (* 19 S8) (* 133 S9)))
 (= X10 (- (* 133 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* 469 S9)))
 (= X10 (- (* 19 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* X6 S9)))
 (= X10 (- (* 19 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* X7 S9)))
 (= X10 (- (* 19 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* X8 S9)))
 (= X10 (- (* 19 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 19 S9)))
 (= X10 (+ (* 19 S8) (* X9 S9)))
 (= X10 (- (* 19 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 19 S9)))
 (= X10 (+ (* 37 S8) S9))
 (= X10 (- (* 37 S8) S9))
 (= X10 (- S8 (* 37 S9)))
 (= X10 (+ (* 37 S8) (* 37 S9)))
 (= X10 (- (* 37 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* 165 S9)))
 (= X10 (- (* 37 S8) (* 165 S9)))
 (= X10 (- (* 165 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* 133 S9)))
 (= X10 (- (* 37 S8) (* 133 S9)))
 (= X10 (- (* 133 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* 469 S9)))
 (= X10 (- (* 37 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* X6 S9)))
 (= X10 (- (* 37 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* X7 S9)))
 (= X10 (- (* 37 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* X8 S9)))
 (= X10 (- (* 37 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 37 S9)))
 (= X10 (+ (* 37 S8) (* X9 S9)))
 (= X10 (- (* 37 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 37 S9)))
 (= X10 (+ (* 165 S8) S9))
 (= X10 (- (* 165 S8) S9))
 (= X10 (- S8 (* 165 S9)))
 (= X10 (+ (* 165 S8) (* 165 S9)))
 (= X10 (- (* 165 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* 133 S9)))
 (= X10 (- (* 165 S8) (* 133 S9)))
 (= X10 (- (* 133 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* 469 S9)))
 (= X10 (- (* 165 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* X6 S9)))
 (= X10 (- (* 165 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* X7 S9)))
 (= X10 (- (* 165 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* X8 S9)))
 (= X10 (- (* 165 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 165 S9)))
 (= X10 (+ (* 165 S8) (* X9 S9)))
 (= X10 (- (* 165 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 165 S9)))
 (= X10 (+ (* 133 S8) S9))
 (= X10 (- (* 133 S8) S9))
 (= X10 (- S8 (* 133 S9)))
 (= X10 (+ (* 133 S8) (* 133 S9)))
 (= X10 (- (* 133 S8) (* 133 S9)))
 (= X10 (+ (* 133 S8) (* 469 S9)))
 (= X10 (- (* 133 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 133 S9)))
 (= X10 (+ (* 133 S8) (* X6 S9)))
 (= X10 (- (* 133 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 133 S9)))
 (= X10 (+ (* 133 S8) (* X7 S9)))
 (= X10 (- (* 133 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 133 S9)))
 (= X10 (+ (* 133 S8) (* X8 S9)))
 (= X10 (- (* 133 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 133 S9)))
 (= X10 (+ (* 133 S8) (* X9 S9)))
 (= X10 (- (* 133 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 133 S9)))
 (= X10 (+ (* 469 S8) S9))
 (= X10 (- (* 469 S8) S9))
 (= X10 (- S8 (* 469 S9)))
 (= X10 (+ (* 469 S8) (* 469 S9)))
 (= X10 (- (* 469 S8) (* 469 S9)))
 (= X10 (+ (* 469 S8) (* X6 S9)))
 (= X10 (- (* 469 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* 469 S9)))
 (= X10 (+ (* 469 S8) (* X7 S9)))
 (= X10 (- (* 469 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* 469 S9)))
 (= X10 (+ (* 469 S8) (* X8 S9)))
 (= X10 (- (* 469 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* 469 S9)))
 (= X10 (+ (* 469 S8) (* X9 S9)))
 (= X10 (- (* 469 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* 469 S9)))
 (= X10 (+ (* X6 S8) S9))
 (= X10 (- (* X6 S8) S9))
 (= X10 (- S8 (* X6 S9)))
 (= X10 (+ (* X6 S8) (* X6 S9)))
 (= X10 (- (* X6 S8) (* X6 S9)))
 (= X10 (+ (* X6 S8) (* X7 S9)))
 (= X10 (- (* X6 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* X6 S9)))
 (= X10 (+ (* X6 S8) (* X8 S9)))
 (= X10 (- (* X6 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* X6 S9)))
 (= X10 (+ (* X6 S8) (* X9 S9)))
 (= X10 (- (* X6 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* X6 S9)))
 (= X10 (+ (* X7 S8) S9))
 (= X10 (- (* X7 S8) S9))
 (= X10 (- S8 (* X7 S9)))
 (= X10 (+ (* X7 S8) (* X7 S9)))
 (= X10 (- (* X7 S8) (* X7 S9)))
 (= X10 (+ (* X7 S8) (* X8 S9)))
 (= X10 (- (* X7 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* X7 S9)))
 (= X10 (+ (* X7 S8) (* X9 S9)))
 (= X10 (- (* X7 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* X7 S9)))
 (= X10 (+ (* X8 S8) S9))
 (= X10 (- (* X8 S8) S9))
 (= X10 (- S8 (* X8 S9)))
 (= X10 (+ (* X8 S8) (* X8 S9)))
 (= X10 (- (* X8 S8) (* X8 S9)))
 (= X10 (+ (* X8 S8) (* X9 S9)))
 (= X10 (- (* X8 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* X8 S9)))
 (= X10 (+ (* X9 S8) S9))
 (= X10 (- (* X9 S8) S9))
 (= X10 (- S8 (* X9 S9)))
 (= X10 (+ (* X9 S8) (* X9 S9)))
 (= X10 (- (* X9 S8) (* X9 S9)))
))
(assert (and (> X10 0) (< X10 2048) (power2 S8) (power2 S9)))
(assert (or
 (= X11 (+ (* 15 S10) S11))
 (= X11 (- (* 15 S10) S11))
 (= X11 (- S10 (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 15 S11)))
 (= X11 (- (* 15 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 19 S11)))
 (= X11 (- (* 15 S10) (* 19 S11)))
 (= X11 (- (* 19 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 37 S11)))
 (= X11 (- (* 15 S10) (* 37 S11)))
 (= X11 (- (* 37 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 165 S11)))
 (= X11 (- (* 15 S10) (* 165 S11)))
 (= X11 (- (* 165 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 133 S11)))
 (= X11 (- (* 15 S10) (* 133 S11)))
 (= X11 (- (* 133 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* 469 S11)))
 (= X11 (- (* 15 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* X6 S11)))
 (= X11 (- (* 15 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* X7 S11)))
 (= X11 (- (* 15 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* X8 S11)))
 (= X11 (- (* 15 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* X9 S11)))
 (= X11 (- (* 15 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 15 S11)))
 (= X11 (+ (* 15 S10) (* X10 S11)))
 (= X11 (- (* 15 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 15 S11)))
 (= X11 (+ (* 19 S10) S11))
 (= X11 (- (* 19 S10) S11))
 (= X11 (- S10 (* 19 S11)))
 (= X11 (+ (* 19 S10) (* 19 S11)))
 (= X11 (- (* 19 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* 37 S11)))
 (= X11 (- (* 19 S10) (* 37 S11)))
 (= X11 (- (* 37 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* 165 S11)))
 (= X11 (- (* 19 S10) (* 165 S11)))
 (= X11 (- (* 165 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* 133 S11)))
 (= X11 (- (* 19 S10) (* 133 S11)))
 (= X11 (- (* 133 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* 469 S11)))
 (= X11 (- (* 19 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* X6 S11)))
 (= X11 (- (* 19 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* X7 S11)))
 (= X11 (- (* 19 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* X8 S11)))
 (= X11 (- (* 19 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* X9 S11)))
 (= X11 (- (* 19 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 19 S11)))
 (= X11 (+ (* 19 S10) (* X10 S11)))
 (= X11 (- (* 19 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 19 S11)))
 (= X11 (+ (* 37 S10) S11))
 (= X11 (- (* 37 S10) S11))
 (= X11 (- S10 (* 37 S11)))
 (= X11 (+ (* 37 S10) (* 37 S11)))
 (= X11 (- (* 37 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* 165 S11)))
 (= X11 (- (* 37 S10) (* 165 S11)))
 (= X11 (- (* 165 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* 133 S11)))
 (= X11 (- (* 37 S10) (* 133 S11)))
 (= X11 (- (* 133 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* 469 S11)))
 (= X11 (- (* 37 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* X6 S11)))
 (= X11 (- (* 37 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* X7 S11)))
 (= X11 (- (* 37 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* X8 S11)))
 (= X11 (- (* 37 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* X9 S11)))
 (= X11 (- (* 37 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 37 S11)))
 (= X11 (+ (* 37 S10) (* X10 S11)))
 (= X11 (- (* 37 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 37 S11)))
 (= X11 (+ (* 165 S10) S11))
 (= X11 (- (* 165 S10) S11))
 (= X11 (- S10 (* 165 S11)))
 (= X11 (+ (* 165 S10) (* 165 S11)))
 (= X11 (- (* 165 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* 133 S11)))
 (= X11 (- (* 165 S10) (* 133 S11)))
 (= X11 (- (* 133 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* 469 S11)))
 (= X11 (- (* 165 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* X6 S11)))
 (= X11 (- (* 165 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* X7 S11)))
 (= X11 (- (* 165 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* X8 S11)))
 (= X11 (- (* 165 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* X9 S11)))
 (= X11 (- (* 165 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 165 S11)))
 (= X11 (+ (* 165 S10) (* X10 S11)))
 (= X11 (- (* 165 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 165 S11)))
 (= X11 (+ (* 133 S10) S11))
 (= X11 (- (* 133 S10) S11))
 (= X11 (- S10 (* 133 S11)))
 (= X11 (+ (* 133 S10) (* 133 S11)))
 (= X11 (- (* 133 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* 469 S11)))
 (= X11 (- (* 133 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* X6 S11)))
 (= X11 (- (* 133 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* X7 S11)))
 (= X11 (- (* 133 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* X8 S11)))
 (= X11 (- (* 133 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* X9 S11)))
 (= X11 (- (* 133 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 133 S11)))
 (= X11 (+ (* 133 S10) (* X10 S11)))
 (= X11 (- (* 133 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 133 S11)))
 (= X11 (+ (* 469 S10) S11))
 (= X11 (- (* 469 S10) S11))
 (= X11 (- S10 (* 469 S11)))
 (= X11 (+ (* 469 S10) (* 469 S11)))
 (= X11 (- (* 469 S10) (* 469 S11)))
 (= X11 (+ (* 469 S10) (* X6 S11)))
 (= X11 (- (* 469 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* 469 S11)))
 (= X11 (+ (* 469 S10) (* X7 S11)))
 (= X11 (- (* 469 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* 469 S11)))
 (= X11 (+ (* 469 S10) (* X8 S11)))
 (= X11 (- (* 469 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* 469 S11)))
 (= X11 (+ (* 469 S10) (* X9 S11)))
 (= X11 (- (* 469 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* 469 S11)))
 (= X11 (+ (* 469 S10) (* X10 S11)))
 (= X11 (- (* 469 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* 469 S11)))
 (= X11 (+ (* X6 S10) S11))
 (= X11 (- (* X6 S10) S11))
 (= X11 (- S10 (* X6 S11)))
 (= X11 (+ (* X6 S10) (* X6 S11)))
 (= X11 (- (* X6 S10) (* X6 S11)))
 (= X11 (+ (* X6 S10) (* X7 S11)))
 (= X11 (- (* X6 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* X6 S11)))
 (= X11 (+ (* X6 S10) (* X8 S11)))
 (= X11 (- (* X6 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* X6 S11)))
 (= X11 (+ (* X6 S10) (* X9 S11)))
 (= X11 (- (* X6 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* X6 S11)))
 (= X11 (+ (* X6 S10) (* X10 S11)))
 (= X11 (- (* X6 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* X6 S11)))
 (= X11 (+ (* X7 S10) S11))
 (= X11 (- (* X7 S10) S11))
 (= X11 (- S10 (* X7 S11)))
 (= X11 (+ (* X7 S10) (* X7 S11)))
 (= X11 (- (* X7 S10) (* X7 S11)))
 (= X11 (+ (* X7 S10) (* X8 S11)))
 (= X11 (- (* X7 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* X7 S11)))
 (= X11 (+ (* X7 S10) (* X9 S11)))
 (= X11 (- (* X7 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* X7 S11)))
 (= X11 (+ (* X7 S10) (* X10 S11)))
 (= X11 (- (* X7 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* X7 S11)))
 (= X11 (+ (* X8 S10) S11))
 (= X11 (- (* X8 S10) S11))
 (= X11 (- S10 (* X8 S11)))
 (= X11 (+ (* X8 S10) (* X8 S11)))
 (= X11 (- (* X8 S10) (* X8 S11)))
 (= X11 (+ (* X8 S10) (* X9 S11)))
 (= X11 (- (* X8 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* X8 S11)))
 (= X11 (+ (* X8 S10) (* X10 S11)))
 (= X11 (- (* X8 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* X8 S11)))
 (= X11 (+ (* X9 S10) S11))
 (= X11 (- (* X9 S10) S11))
 (= X11 (- S10 (* X9 S11)))
 (= X11 (+ (* X9 S10) (* X9 S11)))
 (= X11 (- (* X9 S10) (* X9 S11)))
 (= X11 (+ (* X9 S10) (* X10 S11)))
 (= X11 (- (* X9 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* X9 S11)))
 (= X11 (+ (* X10 S10) S11))
 (= X11 (- (* X10 S10) S11))
 (= X11 (- S10 (* X10 S11)))
 (= X11 (+ (* X10 S10) (* X10 S11)))
 (= X11 (- (* X10 S10) (* X10 S11)))
))
(assert (and (> X11 0) (< X11 2048) (power2 S10) (power2 S11)))
(assert (or
 (= X7 871)
 (= X8 871)
 (= X9 871)
 (= X10 871)
 (= X11 871)
))
(assert (or
 (= X7 763)
 (= X8 763)
 (= X9 763)
 (= X10 763)
 (= X11 763)
))
(assert (or
 (= X7 587)
 (= X8 587)
 (= X9 587)
 (= X10 587)
 (= X11 587)
))
(assert (or
 (= X7 287)
 (= X8 287)
 (= X9 287)
 (= X10 287)
 (= X11 287)
))
(check-sat)
(exit)

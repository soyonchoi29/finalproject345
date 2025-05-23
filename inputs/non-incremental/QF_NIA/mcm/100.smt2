(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
 more info in 'N. P. Lopes, L. Aksoy, V. Manquinho, J. Monteiro.
 Optimally Solving the MCM Problem Using Pseudo-Boolean Satisfiability.
 Technical Report RT/43/2010, INESC-ID, Nov. 2010'. |)
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun X0 () Int)
(declare-fun X1 () Int)
(declare-fun X2 () Int)
(declare-fun X3 () Int)
(declare-fun X4 () Int)
(declare-fun X5 () Int)
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
(declare-fun S12 () Int)
(declare-fun S13 () Int)
(declare-fun S14 () Int)
(declare-fun S15 () Int)
(declare-fun S16 () Int)
(declare-fun S17 () Int)
(declare-fun S18 () Int)
(declare-fun S19 () Int)
(declare-fun S20 () Int)
(declare-fun S21 () Int)
(declare-fun S22 () Int)
(declare-fun S23 () Int)
(define-fun power2 ((x Int)) Bool
  (or (= x 2048) (= x 1024) (= x 512) (= x 256) (= x 128) (= x 64) (= x 32) (= x 16) (= x 8) (= x 4) (= x 2) (= x 1)))
(assert (or
 (= X0 (+ S0 S1))
 (= X0 (- S0 S1))
))
(assert (and (> X0 0) (< X0 4096) (power2 S0) (power2 S1)))
(assert (or
 (= X1 (+ S2 S3))
 (= X1 (- S2 S3))
 (= X1 (+ (* X0 S2) S3))
 (= X1 (- (* X0 S2) S3))
 (= X1 (- S2 (* X0 S3)))
 (= X1 (+ (* X0 S2) (* X0 S3)))
 (= X1 (- (* X0 S2) (* X0 S3)))
))
(assert (and (> X1 0) (< X1 4096) (power2 S2) (power2 S3)))
(assert (or
 (= X2 (+ (* X0 S4) S5))
 (= X2 (- (* X0 S4) S5))
 (= X2 (- S4 (* X0 S5)))
 (= X2 (+ (* X0 S4) (* X0 S5)))
 (= X2 (- (* X0 S4) (* X0 S5)))
 (= X2 (+ (* X0 S4) (* X1 S5)))
 (= X2 (- (* X0 S4) (* X1 S5)))
 (= X2 (- (* X1 S4) (* X0 S5)))
 (= X2 (+ (* X1 S4) S5))
 (= X2 (- (* X1 S4) S5))
 (= X2 (- S4 (* X1 S5)))
 (= X2 (+ (* X1 S4) (* X1 S5)))
 (= X2 (- (* X1 S4) (* X1 S5)))
))
(assert (and (> X2 0) (< X2 4096) (power2 S4) (power2 S5)))
(assert (or
 (= X3 (+ (* X0 S6) S7))
 (= X3 (- (* X0 S6) S7))
 (= X3 (- S6 (* X0 S7)))
 (= X3 (+ (* X0 S6) (* X0 S7)))
 (= X3 (- (* X0 S6) (* X0 S7)))
 (= X3 (+ (* X0 S6) (* X1 S7)))
 (= X3 (- (* X0 S6) (* X1 S7)))
 (= X3 (- (* X1 S6) (* X0 S7)))
 (= X3 (+ (* X0 S6) (* X2 S7)))
 (= X3 (- (* X0 S6) (* X2 S7)))
 (= X3 (- (* X2 S6) (* X0 S7)))
 (= X3 (+ (* X1 S6) S7))
 (= X3 (- (* X1 S6) S7))
 (= X3 (- S6 (* X1 S7)))
 (= X3 (+ (* X1 S6) (* X1 S7)))
 (= X3 (- (* X1 S6) (* X1 S7)))
 (= X3 (+ (* X1 S6) (* X2 S7)))
 (= X3 (- (* X1 S6) (* X2 S7)))
 (= X3 (- (* X2 S6) (* X1 S7)))
 (= X3 (+ (* X2 S6) S7))
 (= X3 (- (* X2 S6) S7))
 (= X3 (- S6 (* X2 S7)))
 (= X3 (+ (* X2 S6) (* X2 S7)))
 (= X3 (- (* X2 S6) (* X2 S7)))
))
(assert (and (> X3 0) (< X3 4096) (power2 S6) (power2 S7)))
(assert (or
 (= X4 (+ (* X0 S8) S9))
 (= X4 (- (* X0 S8) S9))
 (= X4 (- S8 (* X0 S9)))
 (= X4 (+ (* X0 S8) (* X0 S9)))
 (= X4 (- (* X0 S8) (* X0 S9)))
 (= X4 (+ (* X0 S8) (* X1 S9)))
 (= X4 (- (* X0 S8) (* X1 S9)))
 (= X4 (- (* X1 S8) (* X0 S9)))
 (= X4 (+ (* X0 S8) (* X2 S9)))
 (= X4 (- (* X0 S8) (* X2 S9)))
 (= X4 (- (* X2 S8) (* X0 S9)))
 (= X4 (+ (* X0 S8) (* X3 S9)))
 (= X4 (- (* X0 S8) (* X3 S9)))
 (= X4 (- (* X3 S8) (* X0 S9)))
 (= X4 (+ (* X1 S8) S9))
 (= X4 (- (* X1 S8) S9))
 (= X4 (- S8 (* X1 S9)))
 (= X4 (+ (* X1 S8) (* X1 S9)))
 (= X4 (- (* X1 S8) (* X1 S9)))
 (= X4 (+ (* X1 S8) (* X2 S9)))
 (= X4 (- (* X1 S8) (* X2 S9)))
 (= X4 (- (* X2 S8) (* X1 S9)))
 (= X4 (+ (* X1 S8) (* X3 S9)))
 (= X4 (- (* X1 S8) (* X3 S9)))
 (= X4 (- (* X3 S8) (* X1 S9)))
 (= X4 (+ (* X2 S8) S9))
 (= X4 (- (* X2 S8) S9))
 (= X4 (- S8 (* X2 S9)))
 (= X4 (+ (* X2 S8) (* X2 S9)))
 (= X4 (- (* X2 S8) (* X2 S9)))
 (= X4 (+ (* X2 S8) (* X3 S9)))
 (= X4 (- (* X2 S8) (* X3 S9)))
 (= X4 (- (* X3 S8) (* X2 S9)))
 (= X4 (+ (* X3 S8) S9))
 (= X4 (- (* X3 S8) S9))
 (= X4 (- S8 (* X3 S9)))
 (= X4 (+ (* X3 S8) (* X3 S9)))
 (= X4 (- (* X3 S8) (* X3 S9)))
))
(assert (and (> X4 0) (< X4 4096) (power2 S8) (power2 S9)))
(assert (or
 (= X5 (+ (* X0 S10) S11))
 (= X5 (- (* X0 S10) S11))
 (= X5 (- S10 (* X0 S11)))
 (= X5 (+ (* X0 S10) (* X0 S11)))
 (= X5 (- (* X0 S10) (* X0 S11)))
 (= X5 (+ (* X0 S10) (* X1 S11)))
 (= X5 (- (* X0 S10) (* X1 S11)))
 (= X5 (- (* X1 S10) (* X0 S11)))
 (= X5 (+ (* X0 S10) (* X2 S11)))
 (= X5 (- (* X0 S10) (* X2 S11)))
 (= X5 (- (* X2 S10) (* X0 S11)))
 (= X5 (+ (* X0 S10) (* X3 S11)))
 (= X5 (- (* X0 S10) (* X3 S11)))
 (= X5 (- (* X3 S10) (* X0 S11)))
 (= X5 (+ (* X0 S10) (* X4 S11)))
 (= X5 (- (* X0 S10) (* X4 S11)))
 (= X5 (- (* X4 S10) (* X0 S11)))
 (= X5 (+ (* X1 S10) S11))
 (= X5 (- (* X1 S10) S11))
 (= X5 (- S10 (* X1 S11)))
 (= X5 (+ (* X1 S10) (* X1 S11)))
 (= X5 (- (* X1 S10) (* X1 S11)))
 (= X5 (+ (* X1 S10) (* X2 S11)))
 (= X5 (- (* X1 S10) (* X2 S11)))
 (= X5 (- (* X2 S10) (* X1 S11)))
 (= X5 (+ (* X1 S10) (* X3 S11)))
 (= X5 (- (* X1 S10) (* X3 S11)))
 (= X5 (- (* X3 S10) (* X1 S11)))
 (= X5 (+ (* X1 S10) (* X4 S11)))
 (= X5 (- (* X1 S10) (* X4 S11)))
 (= X5 (- (* X4 S10) (* X1 S11)))
 (= X5 (+ (* X2 S10) S11))
 (= X5 (- (* X2 S10) S11))
 (= X5 (- S10 (* X2 S11)))
 (= X5 (+ (* X2 S10) (* X2 S11)))
 (= X5 (- (* X2 S10) (* X2 S11)))
 (= X5 (+ (* X2 S10) (* X3 S11)))
 (= X5 (- (* X2 S10) (* X3 S11)))
 (= X5 (- (* X3 S10) (* X2 S11)))
 (= X5 (+ (* X2 S10) (* X4 S11)))
 (= X5 (- (* X2 S10) (* X4 S11)))
 (= X5 (- (* X4 S10) (* X2 S11)))
 (= X5 (+ (* X3 S10) S11))
 (= X5 (- (* X3 S10) S11))
 (= X5 (- S10 (* X3 S11)))
 (= X5 (+ (* X3 S10) (* X3 S11)))
 (= X5 (- (* X3 S10) (* X3 S11)))
 (= X5 (+ (* X3 S10) (* X4 S11)))
 (= X5 (- (* X3 S10) (* X4 S11)))
 (= X5 (- (* X4 S10) (* X3 S11)))
 (= X5 (+ (* X4 S10) S11))
 (= X5 (- (* X4 S10) S11))
 (= X5 (- S10 (* X4 S11)))
 (= X5 (+ (* X4 S10) (* X4 S11)))
 (= X5 (- (* X4 S10) (* X4 S11)))
))
(assert (and (> X5 0) (< X5 4096) (power2 S10) (power2 S11)))
(assert (or
 (= X6 (+ (* X0 S12) S13))
 (= X6 (- (* X0 S12) S13))
 (= X6 (- S12 (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X0 S13)))
 (= X6 (- (* X0 S12) (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X1 S13)))
 (= X6 (- (* X0 S12) (* X1 S13)))
 (= X6 (- (* X1 S12) (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X2 S13)))
 (= X6 (- (* X0 S12) (* X2 S13)))
 (= X6 (- (* X2 S12) (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X3 S13)))
 (= X6 (- (* X0 S12) (* X3 S13)))
 (= X6 (- (* X3 S12) (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X4 S13)))
 (= X6 (- (* X0 S12) (* X4 S13)))
 (= X6 (- (* X4 S12) (* X0 S13)))
 (= X6 (+ (* X0 S12) (* X5 S13)))
 (= X6 (- (* X0 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X0 S13)))
 (= X6 (+ (* X1 S12) S13))
 (= X6 (- (* X1 S12) S13))
 (= X6 (- S12 (* X1 S13)))
 (= X6 (+ (* X1 S12) (* X1 S13)))
 (= X6 (- (* X1 S12) (* X1 S13)))
 (= X6 (+ (* X1 S12) (* X2 S13)))
 (= X6 (- (* X1 S12) (* X2 S13)))
 (= X6 (- (* X2 S12) (* X1 S13)))
 (= X6 (+ (* X1 S12) (* X3 S13)))
 (= X6 (- (* X1 S12) (* X3 S13)))
 (= X6 (- (* X3 S12) (* X1 S13)))
 (= X6 (+ (* X1 S12) (* X4 S13)))
 (= X6 (- (* X1 S12) (* X4 S13)))
 (= X6 (- (* X4 S12) (* X1 S13)))
 (= X6 (+ (* X1 S12) (* X5 S13)))
 (= X6 (- (* X1 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X1 S13)))
 (= X6 (+ (* X2 S12) S13))
 (= X6 (- (* X2 S12) S13))
 (= X6 (- S12 (* X2 S13)))
 (= X6 (+ (* X2 S12) (* X2 S13)))
 (= X6 (- (* X2 S12) (* X2 S13)))
 (= X6 (+ (* X2 S12) (* X3 S13)))
 (= X6 (- (* X2 S12) (* X3 S13)))
 (= X6 (- (* X3 S12) (* X2 S13)))
 (= X6 (+ (* X2 S12) (* X4 S13)))
 (= X6 (- (* X2 S12) (* X4 S13)))
 (= X6 (- (* X4 S12) (* X2 S13)))
 (= X6 (+ (* X2 S12) (* X5 S13)))
 (= X6 (- (* X2 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X2 S13)))
 (= X6 (+ (* X3 S12) S13))
 (= X6 (- (* X3 S12) S13))
 (= X6 (- S12 (* X3 S13)))
 (= X6 (+ (* X3 S12) (* X3 S13)))
 (= X6 (- (* X3 S12) (* X3 S13)))
 (= X6 (+ (* X3 S12) (* X4 S13)))
 (= X6 (- (* X3 S12) (* X4 S13)))
 (= X6 (- (* X4 S12) (* X3 S13)))
 (= X6 (+ (* X3 S12) (* X5 S13)))
 (= X6 (- (* X3 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X3 S13)))
 (= X6 (+ (* X4 S12) S13))
 (= X6 (- (* X4 S12) S13))
 (= X6 (- S12 (* X4 S13)))
 (= X6 (+ (* X4 S12) (* X4 S13)))
 (= X6 (- (* X4 S12) (* X4 S13)))
 (= X6 (+ (* X4 S12) (* X5 S13)))
 (= X6 (- (* X4 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X4 S13)))
 (= X6 (+ (* X5 S12) S13))
 (= X6 (- (* X5 S12) S13))
 (= X6 (- S12 (* X5 S13)))
 (= X6 (+ (* X5 S12) (* X5 S13)))
 (= X6 (- (* X5 S12) (* X5 S13)))
))
(assert (and (> X6 0) (< X6 4096) (power2 S12) (power2 S13)))
(assert (or
 (= X7 (+ (* X0 S14) S15))
 (= X7 (- (* X0 S14) S15))
 (= X7 (- S14 (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X0 S15)))
 (= X7 (- (* X0 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X1 S15)))
 (= X7 (- (* X0 S14) (* X1 S15)))
 (= X7 (- (* X1 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X2 S15)))
 (= X7 (- (* X0 S14) (* X2 S15)))
 (= X7 (- (* X2 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X3 S15)))
 (= X7 (- (* X0 S14) (* X3 S15)))
 (= X7 (- (* X3 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X4 S15)))
 (= X7 (- (* X0 S14) (* X4 S15)))
 (= X7 (- (* X4 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X5 S15)))
 (= X7 (- (* X0 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X0 S15)))
 (= X7 (+ (* X0 S14) (* X6 S15)))
 (= X7 (- (* X0 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X0 S15)))
 (= X7 (+ (* X1 S14) S15))
 (= X7 (- (* X1 S14) S15))
 (= X7 (- S14 (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X1 S15)))
 (= X7 (- (* X1 S14) (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X2 S15)))
 (= X7 (- (* X1 S14) (* X2 S15)))
 (= X7 (- (* X2 S14) (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X3 S15)))
 (= X7 (- (* X1 S14) (* X3 S15)))
 (= X7 (- (* X3 S14) (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X4 S15)))
 (= X7 (- (* X1 S14) (* X4 S15)))
 (= X7 (- (* X4 S14) (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X5 S15)))
 (= X7 (- (* X1 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X1 S15)))
 (= X7 (+ (* X1 S14) (* X6 S15)))
 (= X7 (- (* X1 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X1 S15)))
 (= X7 (+ (* X2 S14) S15))
 (= X7 (- (* X2 S14) S15))
 (= X7 (- S14 (* X2 S15)))
 (= X7 (+ (* X2 S14) (* X2 S15)))
 (= X7 (- (* X2 S14) (* X2 S15)))
 (= X7 (+ (* X2 S14) (* X3 S15)))
 (= X7 (- (* X2 S14) (* X3 S15)))
 (= X7 (- (* X3 S14) (* X2 S15)))
 (= X7 (+ (* X2 S14) (* X4 S15)))
 (= X7 (- (* X2 S14) (* X4 S15)))
 (= X7 (- (* X4 S14) (* X2 S15)))
 (= X7 (+ (* X2 S14) (* X5 S15)))
 (= X7 (- (* X2 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X2 S15)))
 (= X7 (+ (* X2 S14) (* X6 S15)))
 (= X7 (- (* X2 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X2 S15)))
 (= X7 (+ (* X3 S14) S15))
 (= X7 (- (* X3 S14) S15))
 (= X7 (- S14 (* X3 S15)))
 (= X7 (+ (* X3 S14) (* X3 S15)))
 (= X7 (- (* X3 S14) (* X3 S15)))
 (= X7 (+ (* X3 S14) (* X4 S15)))
 (= X7 (- (* X3 S14) (* X4 S15)))
 (= X7 (- (* X4 S14) (* X3 S15)))
 (= X7 (+ (* X3 S14) (* X5 S15)))
 (= X7 (- (* X3 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X3 S15)))
 (= X7 (+ (* X3 S14) (* X6 S15)))
 (= X7 (- (* X3 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X3 S15)))
 (= X7 (+ (* X4 S14) S15))
 (= X7 (- (* X4 S14) S15))
 (= X7 (- S14 (* X4 S15)))
 (= X7 (+ (* X4 S14) (* X4 S15)))
 (= X7 (- (* X4 S14) (* X4 S15)))
 (= X7 (+ (* X4 S14) (* X5 S15)))
 (= X7 (- (* X4 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X4 S15)))
 (= X7 (+ (* X4 S14) (* X6 S15)))
 (= X7 (- (* X4 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X4 S15)))
 (= X7 (+ (* X5 S14) S15))
 (= X7 (- (* X5 S14) S15))
 (= X7 (- S14 (* X5 S15)))
 (= X7 (+ (* X5 S14) (* X5 S15)))
 (= X7 (- (* X5 S14) (* X5 S15)))
 (= X7 (+ (* X5 S14) (* X6 S15)))
 (= X7 (- (* X5 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X5 S15)))
 (= X7 (+ (* X6 S14) S15))
 (= X7 (- (* X6 S14) S15))
 (= X7 (- S14 (* X6 S15)))
 (= X7 (+ (* X6 S14) (* X6 S15)))
 (= X7 (- (* X6 S14) (* X6 S15)))
))
(assert (and (> X7 0) (< X7 4096) (power2 S14) (power2 S15)))
(assert (or
 (= X8 (+ (* X0 S16) S17))
 (= X8 (- (* X0 S16) S17))
 (= X8 (- S16 (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X0 S17)))
 (= X8 (- (* X0 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X1 S17)))
 (= X8 (- (* X0 S16) (* X1 S17)))
 (= X8 (- (* X1 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X2 S17)))
 (= X8 (- (* X0 S16) (* X2 S17)))
 (= X8 (- (* X2 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X3 S17)))
 (= X8 (- (* X0 S16) (* X3 S17)))
 (= X8 (- (* X3 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X4 S17)))
 (= X8 (- (* X0 S16) (* X4 S17)))
 (= X8 (- (* X4 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X5 S17)))
 (= X8 (- (* X0 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X6 S17)))
 (= X8 (- (* X0 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X0 S17)))
 (= X8 (+ (* X0 S16) (* X7 S17)))
 (= X8 (- (* X0 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X0 S17)))
 (= X8 (+ (* X1 S16) S17))
 (= X8 (- (* X1 S16) S17))
 (= X8 (- S16 (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X1 S17)))
 (= X8 (- (* X1 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X2 S17)))
 (= X8 (- (* X1 S16) (* X2 S17)))
 (= X8 (- (* X2 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X3 S17)))
 (= X8 (- (* X1 S16) (* X3 S17)))
 (= X8 (- (* X3 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X4 S17)))
 (= X8 (- (* X1 S16) (* X4 S17)))
 (= X8 (- (* X4 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X5 S17)))
 (= X8 (- (* X1 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X6 S17)))
 (= X8 (- (* X1 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X1 S17)))
 (= X8 (+ (* X1 S16) (* X7 S17)))
 (= X8 (- (* X1 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X1 S17)))
 (= X8 (+ (* X2 S16) S17))
 (= X8 (- (* X2 S16) S17))
 (= X8 (- S16 (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X2 S17)))
 (= X8 (- (* X2 S16) (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X3 S17)))
 (= X8 (- (* X2 S16) (* X3 S17)))
 (= X8 (- (* X3 S16) (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X4 S17)))
 (= X8 (- (* X2 S16) (* X4 S17)))
 (= X8 (- (* X4 S16) (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X5 S17)))
 (= X8 (- (* X2 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X6 S17)))
 (= X8 (- (* X2 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X2 S17)))
 (= X8 (+ (* X2 S16) (* X7 S17)))
 (= X8 (- (* X2 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X2 S17)))
 (= X8 (+ (* X3 S16) S17))
 (= X8 (- (* X3 S16) S17))
 (= X8 (- S16 (* X3 S17)))
 (= X8 (+ (* X3 S16) (* X3 S17)))
 (= X8 (- (* X3 S16) (* X3 S17)))
 (= X8 (+ (* X3 S16) (* X4 S17)))
 (= X8 (- (* X3 S16) (* X4 S17)))
 (= X8 (- (* X4 S16) (* X3 S17)))
 (= X8 (+ (* X3 S16) (* X5 S17)))
 (= X8 (- (* X3 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X3 S17)))
 (= X8 (+ (* X3 S16) (* X6 S17)))
 (= X8 (- (* X3 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X3 S17)))
 (= X8 (+ (* X3 S16) (* X7 S17)))
 (= X8 (- (* X3 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X3 S17)))
 (= X8 (+ (* X4 S16) S17))
 (= X8 (- (* X4 S16) S17))
 (= X8 (- S16 (* X4 S17)))
 (= X8 (+ (* X4 S16) (* X4 S17)))
 (= X8 (- (* X4 S16) (* X4 S17)))
 (= X8 (+ (* X4 S16) (* X5 S17)))
 (= X8 (- (* X4 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X4 S17)))
 (= X8 (+ (* X4 S16) (* X6 S17)))
 (= X8 (- (* X4 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X4 S17)))
 (= X8 (+ (* X4 S16) (* X7 S17)))
 (= X8 (- (* X4 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X4 S17)))
 (= X8 (+ (* X5 S16) S17))
 (= X8 (- (* X5 S16) S17))
 (= X8 (- S16 (* X5 S17)))
 (= X8 (+ (* X5 S16) (* X5 S17)))
 (= X8 (- (* X5 S16) (* X5 S17)))
 (= X8 (+ (* X5 S16) (* X6 S17)))
 (= X8 (- (* X5 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X5 S17)))
 (= X8 (+ (* X5 S16) (* X7 S17)))
 (= X8 (- (* X5 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X5 S17)))
 (= X8 (+ (* X6 S16) S17))
 (= X8 (- (* X6 S16) S17))
 (= X8 (- S16 (* X6 S17)))
 (= X8 (+ (* X6 S16) (* X6 S17)))
 (= X8 (- (* X6 S16) (* X6 S17)))
 (= X8 (+ (* X6 S16) (* X7 S17)))
 (= X8 (- (* X6 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X6 S17)))
 (= X8 (+ (* X7 S16) S17))
 (= X8 (- (* X7 S16) S17))
 (= X8 (- S16 (* X7 S17)))
 (= X8 (+ (* X7 S16) (* X7 S17)))
 (= X8 (- (* X7 S16) (* X7 S17)))
))
(assert (and (> X8 0) (< X8 4096) (power2 S16) (power2 S17)))
(assert (or
 (= X9 (+ (* X0 S18) S19))
 (= X9 (- (* X0 S18) S19))
 (= X9 (- S18 (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X0 S19)))
 (= X9 (- (* X0 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X1 S19)))
 (= X9 (- (* X0 S18) (* X1 S19)))
 (= X9 (- (* X1 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X2 S19)))
 (= X9 (- (* X0 S18) (* X2 S19)))
 (= X9 (- (* X2 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X3 S19)))
 (= X9 (- (* X0 S18) (* X3 S19)))
 (= X9 (- (* X3 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X4 S19)))
 (= X9 (- (* X0 S18) (* X4 S19)))
 (= X9 (- (* X4 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X5 S19)))
 (= X9 (- (* X0 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X6 S19)))
 (= X9 (- (* X0 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X7 S19)))
 (= X9 (- (* X0 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X0 S19)))
 (= X9 (+ (* X0 S18) (* X8 S19)))
 (= X9 (- (* X0 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X0 S19)))
 (= X9 (+ (* X1 S18) S19))
 (= X9 (- (* X1 S18) S19))
 (= X9 (- S18 (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X1 S19)))
 (= X9 (- (* X1 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X2 S19)))
 (= X9 (- (* X1 S18) (* X2 S19)))
 (= X9 (- (* X2 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X3 S19)))
 (= X9 (- (* X1 S18) (* X3 S19)))
 (= X9 (- (* X3 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X4 S19)))
 (= X9 (- (* X1 S18) (* X4 S19)))
 (= X9 (- (* X4 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X5 S19)))
 (= X9 (- (* X1 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X6 S19)))
 (= X9 (- (* X1 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X7 S19)))
 (= X9 (- (* X1 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X1 S19)))
 (= X9 (+ (* X1 S18) (* X8 S19)))
 (= X9 (- (* X1 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X1 S19)))
 (= X9 (+ (* X2 S18) S19))
 (= X9 (- (* X2 S18) S19))
 (= X9 (- S18 (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X2 S19)))
 (= X9 (- (* X2 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X3 S19)))
 (= X9 (- (* X2 S18) (* X3 S19)))
 (= X9 (- (* X3 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X4 S19)))
 (= X9 (- (* X2 S18) (* X4 S19)))
 (= X9 (- (* X4 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X5 S19)))
 (= X9 (- (* X2 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X6 S19)))
 (= X9 (- (* X2 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X7 S19)))
 (= X9 (- (* X2 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X2 S19)))
 (= X9 (+ (* X2 S18) (* X8 S19)))
 (= X9 (- (* X2 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X2 S19)))
 (= X9 (+ (* X3 S18) S19))
 (= X9 (- (* X3 S18) S19))
 (= X9 (- S18 (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X3 S19)))
 (= X9 (- (* X3 S18) (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X4 S19)))
 (= X9 (- (* X3 S18) (* X4 S19)))
 (= X9 (- (* X4 S18) (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X5 S19)))
 (= X9 (- (* X3 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X6 S19)))
 (= X9 (- (* X3 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X7 S19)))
 (= X9 (- (* X3 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X3 S19)))
 (= X9 (+ (* X3 S18) (* X8 S19)))
 (= X9 (- (* X3 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X3 S19)))
 (= X9 (+ (* X4 S18) S19))
 (= X9 (- (* X4 S18) S19))
 (= X9 (- S18 (* X4 S19)))
 (= X9 (+ (* X4 S18) (* X4 S19)))
 (= X9 (- (* X4 S18) (* X4 S19)))
 (= X9 (+ (* X4 S18) (* X5 S19)))
 (= X9 (- (* X4 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X4 S19)))
 (= X9 (+ (* X4 S18) (* X6 S19)))
 (= X9 (- (* X4 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X4 S19)))
 (= X9 (+ (* X4 S18) (* X7 S19)))
 (= X9 (- (* X4 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X4 S19)))
 (= X9 (+ (* X4 S18) (* X8 S19)))
 (= X9 (- (* X4 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X4 S19)))
 (= X9 (+ (* X5 S18) S19))
 (= X9 (- (* X5 S18) S19))
 (= X9 (- S18 (* X5 S19)))
 (= X9 (+ (* X5 S18) (* X5 S19)))
 (= X9 (- (* X5 S18) (* X5 S19)))
 (= X9 (+ (* X5 S18) (* X6 S19)))
 (= X9 (- (* X5 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X5 S19)))
 (= X9 (+ (* X5 S18) (* X7 S19)))
 (= X9 (- (* X5 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X5 S19)))
 (= X9 (+ (* X5 S18) (* X8 S19)))
 (= X9 (- (* X5 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X5 S19)))
 (= X9 (+ (* X6 S18) S19))
 (= X9 (- (* X6 S18) S19))
 (= X9 (- S18 (* X6 S19)))
 (= X9 (+ (* X6 S18) (* X6 S19)))
 (= X9 (- (* X6 S18) (* X6 S19)))
 (= X9 (+ (* X6 S18) (* X7 S19)))
 (= X9 (- (* X6 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X6 S19)))
 (= X9 (+ (* X6 S18) (* X8 S19)))
 (= X9 (- (* X6 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X6 S19)))
 (= X9 (+ (* X7 S18) S19))
 (= X9 (- (* X7 S18) S19))
 (= X9 (- S18 (* X7 S19)))
 (= X9 (+ (* X7 S18) (* X7 S19)))
 (= X9 (- (* X7 S18) (* X7 S19)))
 (= X9 (+ (* X7 S18) (* X8 S19)))
 (= X9 (- (* X7 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X7 S19)))
 (= X9 (+ (* X8 S18) S19))
 (= X9 (- (* X8 S18) S19))
 (= X9 (- S18 (* X8 S19)))
 (= X9 (+ (* X8 S18) (* X8 S19)))
 (= X9 (- (* X8 S18) (* X8 S19)))
))
(assert (and (> X9 0) (< X9 4096) (power2 S18) (power2 S19)))
(assert (or
 (= X10 (+ (* X0 S20) S21))
 (= X10 (- (* X0 S20) S21))
 (= X10 (- S20 (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X0 S21)))
 (= X10 (- (* X0 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X1 S21)))
 (= X10 (- (* X0 S20) (* X1 S21)))
 (= X10 (- (* X1 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X2 S21)))
 (= X10 (- (* X0 S20) (* X2 S21)))
 (= X10 (- (* X2 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X3 S21)))
 (= X10 (- (* X0 S20) (* X3 S21)))
 (= X10 (- (* X3 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X4 S21)))
 (= X10 (- (* X0 S20) (* X4 S21)))
 (= X10 (- (* X4 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X5 S21)))
 (= X10 (- (* X0 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X6 S21)))
 (= X10 (- (* X0 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X7 S21)))
 (= X10 (- (* X0 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X8 S21)))
 (= X10 (- (* X0 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X0 S21)))
 (= X10 (+ (* X0 S20) (* X9 S21)))
 (= X10 (- (* X0 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X0 S21)))
 (= X10 (+ (* X1 S20) S21))
 (= X10 (- (* X1 S20) S21))
 (= X10 (- S20 (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X1 S21)))
 (= X10 (- (* X1 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X2 S21)))
 (= X10 (- (* X1 S20) (* X2 S21)))
 (= X10 (- (* X2 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X3 S21)))
 (= X10 (- (* X1 S20) (* X3 S21)))
 (= X10 (- (* X3 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X4 S21)))
 (= X10 (- (* X1 S20) (* X4 S21)))
 (= X10 (- (* X4 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X5 S21)))
 (= X10 (- (* X1 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X6 S21)))
 (= X10 (- (* X1 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X7 S21)))
 (= X10 (- (* X1 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X8 S21)))
 (= X10 (- (* X1 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X1 S21)))
 (= X10 (+ (* X1 S20) (* X9 S21)))
 (= X10 (- (* X1 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X1 S21)))
 (= X10 (+ (* X2 S20) S21))
 (= X10 (- (* X2 S20) S21))
 (= X10 (- S20 (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X2 S21)))
 (= X10 (- (* X2 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X3 S21)))
 (= X10 (- (* X2 S20) (* X3 S21)))
 (= X10 (- (* X3 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X4 S21)))
 (= X10 (- (* X2 S20) (* X4 S21)))
 (= X10 (- (* X4 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X5 S21)))
 (= X10 (- (* X2 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X6 S21)))
 (= X10 (- (* X2 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X7 S21)))
 (= X10 (- (* X2 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X8 S21)))
 (= X10 (- (* X2 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X2 S21)))
 (= X10 (+ (* X2 S20) (* X9 S21)))
 (= X10 (- (* X2 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X2 S21)))
 (= X10 (+ (* X3 S20) S21))
 (= X10 (- (* X3 S20) S21))
 (= X10 (- S20 (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X3 S21)))
 (= X10 (- (* X3 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X4 S21)))
 (= X10 (- (* X3 S20) (* X4 S21)))
 (= X10 (- (* X4 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X5 S21)))
 (= X10 (- (* X3 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X6 S21)))
 (= X10 (- (* X3 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X7 S21)))
 (= X10 (- (* X3 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X8 S21)))
 (= X10 (- (* X3 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X3 S21)))
 (= X10 (+ (* X3 S20) (* X9 S21)))
 (= X10 (- (* X3 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X3 S21)))
 (= X10 (+ (* X4 S20) S21))
 (= X10 (- (* X4 S20) S21))
 (= X10 (- S20 (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X4 S21)))
 (= X10 (- (* X4 S20) (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X5 S21)))
 (= X10 (- (* X4 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X6 S21)))
 (= X10 (- (* X4 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X7 S21)))
 (= X10 (- (* X4 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X8 S21)))
 (= X10 (- (* X4 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X4 S21)))
 (= X10 (+ (* X4 S20) (* X9 S21)))
 (= X10 (- (* X4 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X4 S21)))
 (= X10 (+ (* X5 S20) S21))
 (= X10 (- (* X5 S20) S21))
 (= X10 (- S20 (* X5 S21)))
 (= X10 (+ (* X5 S20) (* X5 S21)))
 (= X10 (- (* X5 S20) (* X5 S21)))
 (= X10 (+ (* X5 S20) (* X6 S21)))
 (= X10 (- (* X5 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X5 S21)))
 (= X10 (+ (* X5 S20) (* X7 S21)))
 (= X10 (- (* X5 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X5 S21)))
 (= X10 (+ (* X5 S20) (* X8 S21)))
 (= X10 (- (* X5 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X5 S21)))
 (= X10 (+ (* X5 S20) (* X9 S21)))
 (= X10 (- (* X5 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X5 S21)))
 (= X10 (+ (* X6 S20) S21))
 (= X10 (- (* X6 S20) S21))
 (= X10 (- S20 (* X6 S21)))
 (= X10 (+ (* X6 S20) (* X6 S21)))
 (= X10 (- (* X6 S20) (* X6 S21)))
 (= X10 (+ (* X6 S20) (* X7 S21)))
 (= X10 (- (* X6 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X6 S21)))
 (= X10 (+ (* X6 S20) (* X8 S21)))
 (= X10 (- (* X6 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X6 S21)))
 (= X10 (+ (* X6 S20) (* X9 S21)))
 (= X10 (- (* X6 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X6 S21)))
 (= X10 (+ (* X7 S20) S21))
 (= X10 (- (* X7 S20) S21))
 (= X10 (- S20 (* X7 S21)))
 (= X10 (+ (* X7 S20) (* X7 S21)))
 (= X10 (- (* X7 S20) (* X7 S21)))
 (= X10 (+ (* X7 S20) (* X8 S21)))
 (= X10 (- (* X7 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X7 S21)))
 (= X10 (+ (* X7 S20) (* X9 S21)))
 (= X10 (- (* X7 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X7 S21)))
 (= X10 (+ (* X8 S20) S21))
 (= X10 (- (* X8 S20) S21))
 (= X10 (- S20 (* X8 S21)))
 (= X10 (+ (* X8 S20) (* X8 S21)))
 (= X10 (- (* X8 S20) (* X8 S21)))
 (= X10 (+ (* X8 S20) (* X9 S21)))
 (= X10 (- (* X8 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X8 S21)))
 (= X10 (+ (* X9 S20) S21))
 (= X10 (- (* X9 S20) S21))
 (= X10 (- S20 (* X9 S21)))
 (= X10 (+ (* X9 S20) (* X9 S21)))
 (= X10 (- (* X9 S20) (* X9 S21)))
))
(assert (and (> X10 0) (< X10 4096) (power2 S20) (power2 S21)))
(assert (or
 (= X11 (+ (* X0 S22) S23))
 (= X11 (- (* X0 S22) S23))
 (= X11 (- S22 (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X0 S23)))
 (= X11 (- (* X0 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X1 S23)))
 (= X11 (- (* X0 S22) (* X1 S23)))
 (= X11 (- (* X1 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X2 S23)))
 (= X11 (- (* X0 S22) (* X2 S23)))
 (= X11 (- (* X2 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X3 S23)))
 (= X11 (- (* X0 S22) (* X3 S23)))
 (= X11 (- (* X3 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X4 S23)))
 (= X11 (- (* X0 S22) (* X4 S23)))
 (= X11 (- (* X4 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X5 S23)))
 (= X11 (- (* X0 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X6 S23)))
 (= X11 (- (* X0 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X7 S23)))
 (= X11 (- (* X0 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X8 S23)))
 (= X11 (- (* X0 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X9 S23)))
 (= X11 (- (* X0 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X0 S23)))
 (= X11 (+ (* X0 S22) (* X10 S23)))
 (= X11 (- (* X0 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X0 S23)))
 (= X11 (+ (* X1 S22) S23))
 (= X11 (- (* X1 S22) S23))
 (= X11 (- S22 (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X1 S23)))
 (= X11 (- (* X1 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X2 S23)))
 (= X11 (- (* X1 S22) (* X2 S23)))
 (= X11 (- (* X2 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X3 S23)))
 (= X11 (- (* X1 S22) (* X3 S23)))
 (= X11 (- (* X3 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X4 S23)))
 (= X11 (- (* X1 S22) (* X4 S23)))
 (= X11 (- (* X4 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X5 S23)))
 (= X11 (- (* X1 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X6 S23)))
 (= X11 (- (* X1 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X7 S23)))
 (= X11 (- (* X1 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X8 S23)))
 (= X11 (- (* X1 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X9 S23)))
 (= X11 (- (* X1 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X1 S23)))
 (= X11 (+ (* X1 S22) (* X10 S23)))
 (= X11 (- (* X1 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X1 S23)))
 (= X11 (+ (* X2 S22) S23))
 (= X11 (- (* X2 S22) S23))
 (= X11 (- S22 (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X2 S23)))
 (= X11 (- (* X2 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X3 S23)))
 (= X11 (- (* X2 S22) (* X3 S23)))
 (= X11 (- (* X3 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X4 S23)))
 (= X11 (- (* X2 S22) (* X4 S23)))
 (= X11 (- (* X4 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X5 S23)))
 (= X11 (- (* X2 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X6 S23)))
 (= X11 (- (* X2 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X7 S23)))
 (= X11 (- (* X2 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X8 S23)))
 (= X11 (- (* X2 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X9 S23)))
 (= X11 (- (* X2 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X2 S23)))
 (= X11 (+ (* X2 S22) (* X10 S23)))
 (= X11 (- (* X2 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X2 S23)))
 (= X11 (+ (* X3 S22) S23))
 (= X11 (- (* X3 S22) S23))
 (= X11 (- S22 (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X3 S23)))
 (= X11 (- (* X3 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X4 S23)))
 (= X11 (- (* X3 S22) (* X4 S23)))
 (= X11 (- (* X4 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X5 S23)))
 (= X11 (- (* X3 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X6 S23)))
 (= X11 (- (* X3 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X7 S23)))
 (= X11 (- (* X3 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X8 S23)))
 (= X11 (- (* X3 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X9 S23)))
 (= X11 (- (* X3 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X3 S23)))
 (= X11 (+ (* X3 S22) (* X10 S23)))
 (= X11 (- (* X3 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X3 S23)))
 (= X11 (+ (* X4 S22) S23))
 (= X11 (- (* X4 S22) S23))
 (= X11 (- S22 (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X4 S23)))
 (= X11 (- (* X4 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X5 S23)))
 (= X11 (- (* X4 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X6 S23)))
 (= X11 (- (* X4 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X7 S23)))
 (= X11 (- (* X4 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X8 S23)))
 (= X11 (- (* X4 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X9 S23)))
 (= X11 (- (* X4 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X4 S23)))
 (= X11 (+ (* X4 S22) (* X10 S23)))
 (= X11 (- (* X4 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X4 S23)))
 (= X11 (+ (* X5 S22) S23))
 (= X11 (- (* X5 S22) S23))
 (= X11 (- S22 (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X5 S23)))
 (= X11 (- (* X5 S22) (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X6 S23)))
 (= X11 (- (* X5 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X7 S23)))
 (= X11 (- (* X5 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X8 S23)))
 (= X11 (- (* X5 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X9 S23)))
 (= X11 (- (* X5 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X5 S23)))
 (= X11 (+ (* X5 S22) (* X10 S23)))
 (= X11 (- (* X5 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X5 S23)))
 (= X11 (+ (* X6 S22) S23))
 (= X11 (- (* X6 S22) S23))
 (= X11 (- S22 (* X6 S23)))
 (= X11 (+ (* X6 S22) (* X6 S23)))
 (= X11 (- (* X6 S22) (* X6 S23)))
 (= X11 (+ (* X6 S22) (* X7 S23)))
 (= X11 (- (* X6 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X6 S23)))
 (= X11 (+ (* X6 S22) (* X8 S23)))
 (= X11 (- (* X6 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X6 S23)))
 (= X11 (+ (* X6 S22) (* X9 S23)))
 (= X11 (- (* X6 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X6 S23)))
 (= X11 (+ (* X6 S22) (* X10 S23)))
 (= X11 (- (* X6 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X6 S23)))
 (= X11 (+ (* X7 S22) S23))
 (= X11 (- (* X7 S22) S23))
 (= X11 (- S22 (* X7 S23)))
 (= X11 (+ (* X7 S22) (* X7 S23)))
 (= X11 (- (* X7 S22) (* X7 S23)))
 (= X11 (+ (* X7 S22) (* X8 S23)))
 (= X11 (- (* X7 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X7 S23)))
 (= X11 (+ (* X7 S22) (* X9 S23)))
 (= X11 (- (* X7 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X7 S23)))
 (= X11 (+ (* X7 S22) (* X10 S23)))
 (= X11 (- (* X7 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X7 S23)))
 (= X11 (+ (* X8 S22) S23))
 (= X11 (- (* X8 S22) S23))
 (= X11 (- S22 (* X8 S23)))
 (= X11 (+ (* X8 S22) (* X8 S23)))
 (= X11 (- (* X8 S22) (* X8 S23)))
 (= X11 (+ (* X8 S22) (* X9 S23)))
 (= X11 (- (* X8 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X8 S23)))
 (= X11 (+ (* X8 S22) (* X10 S23)))
 (= X11 (- (* X8 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X8 S23)))
 (= X11 (+ (* X9 S22) S23))
 (= X11 (- (* X9 S22) S23))
 (= X11 (- S22 (* X9 S23)))
 (= X11 (+ (* X9 S22) (* X9 S23)))
 (= X11 (- (* X9 S22) (* X9 S23)))
 (= X11 (+ (* X9 S22) (* X10 S23)))
 (= X11 (- (* X9 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X9 S23)))
 (= X11 (+ (* X10 S22) S23))
 (= X11 (- (* X10 S22) S23))
 (= X11 (- S22 (* X10 S23)))
 (= X11 (+ (* X10 S22) (* X10 S23)))
 (= X11 (- (* X10 S22) (* X10 S23)))
))
(assert (and (> X11 0) (< X11 4096) (power2 S22) (power2 S23)))
(assert (or
 (= X1 343)
 (= X2 343)
 (= X3 343)
 (= X4 343)
 (= X5 343)
 (= X6 343)
 (= X7 343)
 (= X8 343)
 (= X9 343)
 (= X10 343)
 (= X11 343)
))
(assert (or
 (= X1 239)
 (= X2 239)
 (= X3 239)
 (= X4 239)
 (= X5 239)
 (= X6 239)
 (= X7 239)
 (= X8 239)
 (= X9 239)
 (= X10 239)
 (= X11 239)
))
(assert (or
 (= X1 13)
 (= X2 13)
 (= X3 13)
 (= X4 13)
 (= X5 13)
 (= X6 13)
 (= X7 13)
 (= X8 13)
 (= X9 13)
 (= X10 13)
 (= X11 13)
))
(assert (or
 (= X1 309)
 (= X2 309)
 (= X3 309)
 (= X4 309)
 (= X5 309)
 (= X6 309)
 (= X7 309)
 (= X8 309)
 (= X9 309)
 (= X10 309)
 (= X11 309)
))
(assert (or
 (= X1 607)
 (= X2 607)
 (= X3 607)
 (= X4 607)
 (= X5 607)
 (= X6 607)
 (= X7 607)
 (= X8 607)
 (= X9 607)
 (= X10 607)
 (= X11 607)
))
(assert (or
 (= X1 1563)
 (= X2 1563)
 (= X3 1563)
 (= X4 1563)
 (= X5 1563)
 (= X6 1563)
 (= X7 1563)
 (= X8 1563)
 (= X9 1563)
 (= X10 1563)
 (= X11 1563)
))
(assert (or
 (= X1 1809)
 (= X2 1809)
 (= X3 1809)
 (= X4 1809)
 (= X5 1809)
 (= X6 1809)
 (= X7 1809)
 (= X8 1809)
 (= X9 1809)
 (= X10 1809)
 (= X11 1809)
))
(assert (or
 (= X1 1233)
 (= X2 1233)
 (= X3 1233)
 (= X4 1233)
 (= X5 1233)
 (= X6 1233)
 (= X7 1233)
 (= X8 1233)
 (= X9 1233)
 (= X10 1233)
 (= X11 1233)
))
(assert (or
 (= X1 809)
 (= X2 809)
 (= X3 809)
 (= X4 809)
 (= X5 809)
 (= X6 809)
 (= X7 809)
 (= X8 809)
 (= X9 809)
 (= X10 809)
 (= X11 809)
))
(assert (or
 (= X1 559)
 (= X2 559)
 (= X3 559)
 (= X4 559)
 (= X5 559)
 (= X6 559)
 (= X7 559)
 (= X8 559)
 (= X9 559)
 (= X10 559)
 (= X11 559)
))
(check-sat)
(exit)

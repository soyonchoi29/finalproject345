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
 (= X1 565)
 (= X2 565)
 (= X3 565)
 (= X4 565)
 (= X5 565)
 (= X6 565)
 (= X7 565)
 (= X8 565)
 (= X9 565)
 (= X10 565)
 (= X11 565)
))
(assert (or
 (= X1 505)
 (= X2 505)
 (= X3 505)
 (= X4 505)
 (= X5 505)
 (= X6 505)
 (= X7 505)
 (= X8 505)
 (= X9 505)
 (= X10 505)
 (= X11 505)
))
(assert (or
 (= X1 39)
 (= X2 39)
 (= X3 39)
 (= X4 39)
 (= X5 39)
 (= X6 39)
 (= X7 39)
 (= X8 39)
 (= X9 39)
 (= X10 39)
 (= X11 39)
))
(assert (or
 (= X1 115)
 (= X2 115)
 (= X3 115)
 (= X4 115)
 (= X5 115)
 (= X6 115)
 (= X7 115)
 (= X8 115)
 (= X9 115)
 (= X10 115)
 (= X11 115)
))
(assert (or
 (= X1 921)
 (= X2 921)
 (= X3 921)
 (= X4 921)
 (= X5 921)
 (= X6 921)
 (= X7 921)
 (= X8 921)
 (= X9 921)
 (= X10 921)
 (= X11 921)
))
(assert (or
 (= X1 1319)
 (= X2 1319)
 (= X3 1319)
 (= X4 1319)
 (= X5 1319)
 (= X6 1319)
 (= X7 1319)
 (= X8 1319)
 (= X9 1319)
 (= X10 1319)
 (= X11 1319)
))
(assert (or
 (= X1 1611)
 (= X2 1611)
 (= X3 1611)
 (= X4 1611)
 (= X5 1611)
 (= X6 1611)
 (= X7 1611)
 (= X8 1611)
 (= X9 1611)
 (= X10 1611)
 (= X11 1611)
))
(assert (or
 (= X1 1969)
 (= X2 1969)
 (= X3 1969)
 (= X4 1969)
 (= X5 1969)
 (= X6 1969)
 (= X7 1969)
 (= X8 1969)
 (= X9 1969)
 (= X10 1969)
 (= X11 1969)
))
(assert (or
 (= X1 227)
 (= X2 227)
 (= X3 227)
 (= X4 227)
 (= X5 227)
 (= X6 227)
 (= X7 227)
 (= X8 227)
 (= X9 227)
 (= X10 227)
 (= X11 227)
))
(assert (or
 (= X1 901)
 (= X2 901)
 (= X3 901)
 (= X4 901)
 (= X5 901)
 (= X6 901)
 (= X7 901)
 (= X8 901)
 (= X9 901)
 (= X10 901)
 (= X11 901)
))
(check-sat)
(exit)

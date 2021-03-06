(set-logic QF_NRA)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun t () Real)
(declare-fun w () Real)


(assert(and (> 1.4 x) (< -1.4 x)))
(assert(= y (- x (/ (+ x (/ (pow x 3) -6) (/ (pow x 5) 120) (/ (pow x 7) 5040)) (+ 1 (/ (pow x 2) -2) (/ (pow x 4) 25) (/ (pow x 6) 720))) ) ))
(assert(= z (- y (/ (+ y (/ (pow y 3) -6) (/ (pow y 5) 120) (/ (pow y 7) 5040)) (+ 1 (/ (pow y 2) -2) (/ (pow y 4) 25) (/ (pow y 6) 720))) ) ))
(assert(= t (- z (/ (+ z (/ (pow z 3) -6) (/ (pow z 5) 120) (/ (pow z 7) 5040)) (+ 1 (/ (pow z 2) -2) (/ (pow z 4) 25) (/ (pow z 6) 720))) ) ))
(assert(not (< t 0.1)))



(check-sat)
(exit)

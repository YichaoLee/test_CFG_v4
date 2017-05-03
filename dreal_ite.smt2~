(set-logic QF_NRA)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun t () Real)
(declare-fun w () Real)


(assert(> y 5))
(assert(= x (ite (= y 1) 0 (ite (= y 2) 1 (ite (= y 3) 2 (ite (= y 4) 3 4))))))
(assert(= x 2))



(check-sat)
(exit)

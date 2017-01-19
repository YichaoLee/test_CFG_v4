(set-logic QF_NRA)
(declare-fun x_0 () Real)
(declare-fun x_1 () Real)
(declare-fun x_2 () Real)

(assert (>  x_0  2) :side A)
(assert (<  x_1  2) :side B)
(assert (=  x_0  x_1) :side B)

(check-sat)
(exit)

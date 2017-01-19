(set-logic QF_NRA)
(declare-fun x () Real)
(declare-fun y () Real)
(declare-fun z () Real)
(declare-fun t () Real)
(declare-fun w () Real)


(assert(> (+ x y) (/ z w)))
(assert(> (sqrt x) (/ z y)))
(assert(> (log (* x y)) (log (+ (+ t w) z))))
(assert(< (+ (+ (* z 2) (* w 3)) (* x 7)) (pow y 6)))
(assert(> (+ z w) (+ x y)))
(assert(< w (/ x y)))
(assert(> x (- (+ w y) z)))
(assert(< (/ (log (* t x)) (log 10)) (sqrt (* (* w y) z))))



(check-sat)
(exit)

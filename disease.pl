symptom('flu').
symptom('fever and yellow eye').
treatment('flu','avoid ice cream').
treatment('fever and yellow eye','need healthy sleep').

doc(X,C):-symptom(X),treatment(X,C).

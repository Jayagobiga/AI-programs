bird(eagle).
bird(sparrow).
bird(crow).
nbird(penguin).
fly(X):-bird(X).
notfly(X):-nbird(X).

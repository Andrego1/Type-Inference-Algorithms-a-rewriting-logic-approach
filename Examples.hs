module Examples where

--- Exercices from "Notes on Foundations of Programming Languages Types"

--- Combinators SKI
s = \x y z -> x z (y z)

k = \x y -> x

i = \x -> x

--- i think this could be interpreted as giving type for y
ex1b = \x -> y where y = 1 

ex1c = \x y -> x y y 

ex2a = \x y z -> x (y z)

ex2b = \x y z -> x y z

ex2c = \x y z -> x z y

ex3b = \x y -> (\z -> x) (y x)

ex3c = \x y -> y (\z -> z x x) x

ex3d = \x y -> x y (\z -> y z)


--- Examples only for POLY module
--- first ones are taken from: https://github.com/wh5a/Algorithm-W-Step-By-Step/blob/master/AlgorithmW.pdf

ex1 = let i = \x -> x in i

ex2 = \x -> let y = x in y

ex3 = let i = \x -> x in i i

ex4 = let i = \x -> (let y = x in y ) in i i

ex5 = \m -> (let y = m in (let x = y (\x y -> x) in x) ) 

---ex6 = let x = \z y -> z y y in x x --- falha o que é correto

ex7 = let k = \z w -> z w in \z -> z (k k)

ex8 = let k = \x y -> x in (let w = \x y z -> x y z in k w w)

ex9 = let s = \x y z -> x z (y z) in (let k = \a b -> a in (let i = \c -> c in s k i ))

ex10 = (let s = \x y z -> x z (y z) in (let k = \a b -> a in s k )) (\x y z -> x z (y z))

x :: forall a . a
x = x

a = let y = x x in y

--- Tested ONLY for POLY

e1 = \x y -> y

e2 = (\x -> x) (\x -> x) --- error ....
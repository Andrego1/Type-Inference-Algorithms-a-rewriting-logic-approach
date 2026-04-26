module Examples where

--- Examples only for POLY module

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
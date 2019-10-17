data Expr = C Float 
           | Expr :+ Expr 
           | Expr :- Expr
           | Expr :* Expr 
           | Expr :/ Expr  
           deriving Show


evaluate::Expr -> Float
evaluate (C x) = x
evaluate (e1 :+ e2) = evaluate e1 + evaluate e2
evaluate (e1 :- e2) = evaluate e1 - evaluate e2
evaluate (e1 :* e2) = evaluate e1 * evaluate e2
evaluate (e1 :/ e2) = evaluate e1 / evaluate e2

e1 = (C 10 :+ (C 8 :/ C 2)) :* (C 7 :- C 5)

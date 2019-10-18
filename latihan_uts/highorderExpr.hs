data Expr = C Float 
          | Expr :+ Expr
          | Expr :- Expr
          | Expr :* Expr
          | Expr :/ Expr
          deriving Show

evaluate::Expr->Float
evaluate (C x) = x
evaluate (e1 :+ e2) = (evaluate e1) + (evaluate e2)
evaluate (e1 :- e2) = (evaluate e1) - (evaluate e2)
evaluate (e1 :* e2) = (evaluate e1) * (evaluate e2)
evaluate (e1 :/ e2) = (evaluate e1) / (evaluate e2)

foldEvaluate combine f (C x) = f x
foldEvaluate combine f (e1 :+ e2) = combine (foldEvaluate combine f e1) (foldEvaluate combine f e2)
foldEvaluate combine f (e1 :- e2) = combine (foldEvaluate combine f e1) (foldEvaluate combine f e2)
foldEvaluate combine f (e1 :* e2) = combine (foldEvaluate combine f e1) (foldEvaluate combine f e2)
foldEvaluate combine f (e1 :/ e2) = combine (foldEvaluate combine f e1) (foldEvaluate combine f e2)

-- pusing bikin fold evaluate

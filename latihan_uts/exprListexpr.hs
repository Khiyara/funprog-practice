data Expr = C Float
            | Add Expr Expr
          deriving Show

foldExpr::[Expr] -> Expr

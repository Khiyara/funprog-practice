data Exp a 
  = Free a
  | Bound !Int
  | App (Exp a) (Exp a)
  | Lam (Exp a)
  deriving (Eq,Show,Read)



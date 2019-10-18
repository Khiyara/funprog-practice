import Control.Monad.State
data Direction = North | East | South | West deriving (Eq,Show,Enum)

right :: Direction -> Direction
right d = toEnum (succ (fromEnum d) `mod` 4)

data RobotState = RobotState { position :: Position , facing :: Direction
                                  , pen :: Bool , color :: Color
                                  , treasure :: [Position], pocket :: Int
                                  , energy :: Int
                             } deriving Show
newtype Robot a = Robot (RobotState -> Grid -> Window -> IO (RobotState, a))

turnRight :: Robot ()
turnRight = updateState (\s -> do (energy) <- get
                          if (energy) > 0 then s {facing = right (facing s)} -- how to if else???
                          else s {facing = facing s}) 

moven :: Int -> Robot ()
moven n = mapM_ (const move) [1..n]

data Tree a = Leaf a | Branch (Tree a) (Tree a)

mapTree::(a->b) -> Tree a -> Tree b
mapTree f (Leaf x) = Leaf (f x)
mapTree f (Branch t1 t2) = Branch (mapTree f t1) (mapTree f t2)

foldTree::(a->a->a) -> (b->a) -> Tree b -> a
foldTree combine leafFn (Leaf x) = leafFn x
foldTree combine leafFn (Branch t1 t2) = combine (foldTree combine leafFn t1) (foldTree combine leafFn t2)

treeHeight::Tree a -> Int
treeHeight (Leaf _) = 0
treeHeight (Branch t1 t2) = 1 + max (treeHeight t1) (treeHeight t2)
-- ketinggian sekarang ditambah max dari kiri dan kanan tree
treeSize::Tree a -> Int
treeSize (Leaf _) = 0
treeSize (Branch t1 t2) = (1 + treeSize t1) + (1 + treeSize t2)
-- hitung jumlah node tree 1 + kiri dan 1 + kanan


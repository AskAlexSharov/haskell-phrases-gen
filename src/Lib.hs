module Lib
  ( permute
  ) where

import Data.List

permute :: Eq a => [a] -> [[a]]
permute [] = [[]]
permute xs = concatMap (\x -> map (x :) $ permute $ delete x xs) xs
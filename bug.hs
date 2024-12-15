{-# LANGUAGE FlexibleInstances #-}

module Main where

class Foo a where
  foo :: a -> Int

data Bar = Bar

instance Foo Bar where
  foo _ = 1

instance Foo Int where
  foo x = x

main :: IO ()
main = do
  print (foo (Bar :: Bar))
  print (foo (1 :: Int))
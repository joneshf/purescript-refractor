module Optic.Refractor.Lens where

  import Data.Tuple (Tuple(..))

  import Optic.Types (Lens())

  _1 :: forall a b c. Lens (Tuple a c) (Tuple b c) a b
  _1 a2fb (Tuple a c) = (\b -> Tuple b c) <$> a2fb a

  _2 :: forall a b c. Lens (Tuple a b) (Tuple a c) b c
  _2 a2fb (Tuple a b) = Tuple a <$> a2fb b

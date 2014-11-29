module Optic.Refractor.Lens where

  import Data.Tuple (Tuple(..))

  import Optic.Types (Lens())

  _1 :: forall a b c. Lens (Tuple a c) (Tuple b c) a b
  _1 a2fb (Tuple a c) = (\b -> Tuple b c) <$> a2fb a

  _2 :: forall a b c. Lens (Tuple a b) (Tuple a c) b c
  _2 a2fb (Tuple a b) = Tuple a <$> a2fb b

  x :: forall b a r. Lens {x :: a | r} {x :: b | r} a b
  x f o = (\x' -> o{x = x'}) <$> f o.x

  y :: forall b a r. Lens {y :: a | r} {y :: b | r} a b
  y f o = (\y' -> o{y = y'}) <$> f o.y

  z :: forall b a r. Lens {z :: a | r} {z :: b | r} a b
  z f o = (\z' -> o{z = z'}) <$> f o.z

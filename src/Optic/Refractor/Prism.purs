module Optic.Refractor.Prism where

  import Data.Either (either, Either(..))
  import Data.Maybe (maybe, Maybe(..))

  import Optic.Prism (prism, prism')
  import Optic.Types (Prism(), PrismP())

  _Left :: forall a b c. Prism (Either a c) (Either b c) a b
  _Left = prism Left $ either Right (Left <<< Right)

  _Right :: forall a b c. Prism (Either a b) (Either a c) b c
  _Right = prism Right $ either (Left <<< Left) Right

  _Just :: forall a b. Prism (Maybe a) (Maybe b) a b
  _Just = prism Just $ maybe (Left Nothing) Right

  _Nothing :: forall a b. PrismP (Maybe a) Unit
  _Nothing = prism' (const Nothing) $ maybe Nothing (const $ Just unit)

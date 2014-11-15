# Module Documentation

## Module Optic.Refractor.Lens

### Values

    _1 :: forall a b c. Lens (Tuple a c) (Tuple b c) a b

    _2 :: forall a b c. Lens (Tuple a b) (Tuple a c) b c


## Module Optic.Refractor.Prism

### Values

    _Just :: forall a b. Prism (Maybe a) (Maybe b) a b

    _Left :: forall a b c. Prism (Either a c) (Either b c) a b

    _Nothing :: forall a b. PrismP (Maybe a) Unit

    _Right :: forall a b c. Prism (Either a b) (Either a c) b c




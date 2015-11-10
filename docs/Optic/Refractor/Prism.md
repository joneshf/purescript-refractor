## Module Optic.Refractor.Prism

#### `_Left`

``` purescript
_Left :: forall a b c. Prism (Either a c) (Either b c) a b
```

#### `_Right`

``` purescript
_Right :: forall a b c. Prism (Either a b) (Either a c) b c
```

#### `_Just`

``` purescript
_Just :: forall a b. Prism (Maybe a) (Maybe b) a b
```

#### `_Nothing`

``` purescript
_Nothing :: forall a b. PrismP (Maybe a) Unit
```



# Module Documentation

## Module Optic.Refractor.Lens

#### `_1`

``` purescript
_1 :: forall a b c. Lens (Tuple a c) (Tuple b c) a b
```


#### `_2`

``` purescript
_2 :: forall a b c. Lens (Tuple a b) (Tuple a c) b c
```


#### `x`

``` purescript
x :: forall b a r. Lens { x :: a | r } { x :: b | r } a b
```


#### `y`

``` purescript
y :: forall b a r. Lens { y :: a | r } { y :: b | r } a b
```


#### `z`

``` purescript
z :: forall b a r. Lens { z :: a | r } { z :: b | r } a b
```



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





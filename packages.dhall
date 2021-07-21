let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.14.3/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.14.3/src/packages.dhall sha256:1f9af624ddfd5352455b7ac6df714f950d499e7e3c6504f62ff467eebd11042c

let additions =
      { school-of-music =
          mkPackage
            [ "midi"
            , "foldable-traversable"
            , "rationals"
            , "math"
            ]
            "https://github.com/mcordova47/purescript-school-of-music"
            "v1.3.0"
      }

in  upstream // additions

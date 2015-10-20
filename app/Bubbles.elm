module Bubbles where
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Color exposing (..)
import Window


drawCircle : Color -> Float -> Float -> Float-> Form
drawCircle color radius x y =
  circle radius
    |> filled color
    |> move (x, y)


view : (Int, Int) -> Element
view (w, h) =
  collage w h
  [ drawCircle darkGreen 50 0 0
  , drawCircle green 100 150 150
  , drawCircle orange 75 -250 -250
  , drawCircle pink 25 -100 -100
  , drawCircle ickyPink 40 250 250
  ]


main : Signal Element
main =
  Signal.map view Window.dimensions


-- COLOURS
darkGreen : Color
darkGreen =
  rgba 131 175 155 0.8

green : Color
green =
  rgba 200 200 169 0.8

orange : Color
orange =
  rgba 249 205 173 0.8

pink : Color
pink =
  rgba 252 157 154 0.8

ickyPink : Color
ickyPink =
  rgba 254 67 101 0.8

module Tests exposing (suite)

import Expect exposing (Expectation)
import ExtendedLanguage
import Language
import LanguageTag exposing (noOptions)
import Test exposing (..)


suite : Test
suite =
    describe "bcp47"
        [ test "example" <|
            \() ->
                Language.no
                    |> LanguageTag.fromLanguage
                    |> LanguageTag.toString
                    |> Expect.equal "no"
        ]

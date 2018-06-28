defmodule RomanTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "restricts input to 1..3000" do
    assert RomanNumerals.toRoman(3000) == "MMM"
    assert RomanNumerals.toRoman(2000) == "MM"
    assert RomanNumerals.toRoman(1000) == "M"
    assert RomanNumerals.toRoman(2900) == "MMCM"
    assert RomanNumerals.toRoman(500) == "D"
    assert RomanNumerals.toRoman(400) == "CD"
    assert RomanNumerals.toRoman(300) == "CCC"
    assert RomanNumerals.toRoman(100) == "C"
    assert RomanNumerals.toRoman(512) == "DXII"
    assert RomanNumerals.toRoman(2001) == "MMI"
    assert RomanNumerals.toRoman(1923) == "MCMXXIII"
    assert RomanNumerals.toRoman(2) == "II"
    assert RomanNumerals.toRoman(1) == "I"
    assert_raise(FunctionClauseError, fn -> RomanNumerals.toRoman(3001) end)
  end
end

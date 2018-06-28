defmodule RomanNumerals do

  def toRoman(number) when number in 1..3000 do
    map_to_roman(number)
  end

  def fromRoman(string) do
    map_from_roman(string)
  end

  defp map_to_roman(number) when number >= 1000 do
    "M" <> map_to_roman(number - 1000)
  end

  defp map_to_roman(number) when number >= 900 do
    "CM" <> map_to_roman(number - 900)
  end

  defp map_to_roman(number) when number >= 500 do
    "D" <> map_to_roman(number - 500)
  end

  defp map_to_roman(number) when number >= 400 do
    "CD" <> map_to_roman(number - 400)
  end

  defp map_to_roman(number) when number >= 100 do
    "C" <> map_to_roman(number - 100)
  end

  defp map_to_roman(number) when number >= 90 do
    "XC" <> map_to_roman(number - 90)
  end

  defp map_to_roman(number) when number >= 50 do
    "L" <> map_to_roman(number - 50)
  end

  defp map_to_roman(number) when number >= 40 do
    "XL" <> map_to_roman(number - 40)
  end

  defp map_to_roman(number) when number >= 10 do
    "X" <> map_to_roman(number - 10)
  end

  defp map_to_roman(number) when number >= 5 do
    "V" <> map_to_roman(number - 5)
  end

  defp map_to_roman(number) when number >= 4 do
    "IV" <> map_to_roman(number - 4)
  end

  defp map_to_roman(number) when number >= 1 do
    "I" <> map_to_roman(number - 1)
  end

  defp map_to_roman(_) do
    ""
  end

  # Start string recursion

  defp map_from_roman(string) when string == "M" do
    1000
  end

  defp map_from_roman(string) when string == "C" do
    100
  end

  defp map_from_roman(string) when string == "X" do
    10
  end

  defp map_from_roman(string) when string == "V" do
    5
  end

  defp map_from_roman(string) when string == "IV" do
    4
  end

  defp map_from_roman(string) when string == "I" do
    1
  end

  defp map_from_roman(string) do
    0
  end
end

defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    number
    |> Integer.digits()
    |> to_roman("")
  end

  def to_roman([], roman), do: roman

  @spec to_roman(List.t(), String.t()) :: String.t()
  def to_roman([head | tail], roman) do
    case head do
      1 -> to_roman(tail, roman <> "I")
      _ -> to_roman(tail, roman)
    end
  end
end

defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "Quando existe um arquivo com o nome dado, retorna soma dos numeros" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "Quando não xiste um arquivo com o nome dado, retorna erro" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid Filename!"}}

      assert response == expected_response
    end

  end

end

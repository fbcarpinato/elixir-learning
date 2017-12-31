defmodule AdultChecker do

  def isAdult(age) do
    if age >= 18, do: true , else: false
  end

end

ExUnit.start

defmodule AdultCheckerTests do

  use ExUnit.Case

  test 'returns true if you have more than 18 years' do
    assert AdultChecker.isAdult(19) === true
  end

  test 'returns false if you dont have more than 18 years' do
    assert AdultChecker.isAdult(16) === false
  end

  test 'returns true if you have 18 years' do
    assert AdultChecker.isAdult(18) === true
  end

end


{ age, _ } = IO.gets('What is your age? ') |> Integer.parse


case AdultChecker.isAdult(age) do
  true -> IO.puts 'You are an adult'
  false -> IO.puts 'You are not an adult'
end
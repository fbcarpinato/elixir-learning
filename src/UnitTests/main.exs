ExUnit.start

defmodule ExampleTest do

  use ExUnit.Case

  test 'sum test' do
    assert 1 + 1 === 2
  end

  test 'string test' do
    assert 'Hello' === 'Hello'
  end

end
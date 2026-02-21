defmodule BowlingTest do
  use ExUnit.Case

  # 1. Gutter game
  test "gutter game" do
    game = List.duplicate([0, 0], 9) ++ [[0, 0, nil]]
    assert Bowling.score(game) == 0
  end

  # 2. All ones game
  test "'all ones' game" do
    game = List.duplicate([1,1],9) ++ [[1,1,nil]]
    assert Bowling.score(game) == 20
  end

  # 3. Game with one spare
  test "one spare" do
    game = [[5,5],[3,0]] ++ List.duplicate([0,0],7) ++ [[0,0,nil]]
    assert Bowling.score(game) == 16
  end

  test "one strike" do
    game = [[10,nil],[3,4]] ++ List.duplicate([0,0],7) ++ [[0,0,nil]]
    assert Bowling.score(game) == 24
  end

  test "perfect game" do
    game = List.duplicate([10,nil],9) ++ [[10,10,10]]
    assert Bowling.score(game) == 300
  end
end

defmodule Bowling do

  def score([[10,10,10]]), do: 30
  #1
  def score([]), do: 0
  #3
  def score([[f ,s | _] | [ff | rest]]) when f + s == 10, do: 10 + hd(ff) + score([ff]++rest)
  #4
  def score([[10,nil | _] | rest]) when hd(hd(rest)) != 10, do: 10 + hd(hd(rest)) + hd(tl(hd(rest))) + score(rest)
  #5
  def score([[10,nil | _] | rest]) when hd(tl(hd(rest))) != nil, do: 10 + hd(hd(rest)) + hd(tl(hd(rest))) + score(rest)
  def score([[10,nil | _] | rest]), do: 10 + hd(hd(rest)) + hd(hd(tl(rest))) + score(rest)
  #2
  def score([[f ,s | _] | rest]), do: f + s + score(rest)

end

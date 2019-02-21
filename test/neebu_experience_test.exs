defmodule NeebuExperienceTest do
  use ExUnit.Case
  doctest NeebuExperience

  test "greets the world" do
    assert NeebuExperience.hello() == :world
  end
end

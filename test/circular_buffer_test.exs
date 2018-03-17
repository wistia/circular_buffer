defmodule CircularBufferTest do
  use ExUnit.Case, async: true

  test "starts with no entries" do
    buffer = CircularBuffer.new(2)
    assert buffer.entries == []
  end

  test "returns entries as they are added" do
    buffer = CircularBuffer.new(2)
    buffer = CircularBuffer.add(buffer, 1)
    assert buffer.entries == [1]

    buffer = CircularBuffer.add(buffer, 2)
    assert buffer.entries == [1, 2]
  end

  test "evicts excess entries" do
    buffer = CircularBuffer.new(2)
    buffer = CircularBuffer.add(buffer, 1)
    assert buffer.entries == [1]

    buffer = CircularBuffer.add(buffer, 2)
    assert buffer.entries == [1, 2]

    buffer = CircularBuffer.add(buffer, 3)
    assert buffer.entries == [2, 3]
  end
end

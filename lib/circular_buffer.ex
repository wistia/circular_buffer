defmodule CircularBuffer do
  defstruct [:max_size, :entries, :size]

  def new(max_size) do
    %CircularBuffer{max_size: max_size, entries: [], size: 0}
  end

  def add(list = %{size: size, max_size: size, entries: [_oldest | tail]}, entry) do
    %CircularBuffer{list | entries: tail ++ [entry]}
  end

  def add(list = %{size: size, entries: entries}, entry) do
    %CircularBuffer{list | size: size + 1, entries: entries ++ [entry]}
  end

  def entries(%{entries: entries}), do: entries
end

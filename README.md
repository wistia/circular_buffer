# CircularBuffer

a dead simple circular queue/ring buffer implementation

## Installation

```ex
# mix.exs
defp deps do
  [
    {:circular_buffer, github: "wistia/circular_buffer"}
  ]
end
```

## Usage

```ex
iex(1)> c = CircularBuffer.new(2)
%CircularBuffer{entries: [], max_size: 2, size: 0}

iex(2)> c = CircularBuffer.add(c, 1)
%CircularBuffer{entries: [1], max_size: 2, size: 1}

iex(3)> c = CircularBuffer.add(c, 2)
%CircularBuffer{entries: [1, 2], max_size: 2, size: 2}

iex(4)> c = CircularBuffer.add(c, 3)
%CircularBuffer{entries: [2, 3], max_size: 2, size: 2}

iex(5)> CircularBuffer.entries(c)
[2, 3]
```

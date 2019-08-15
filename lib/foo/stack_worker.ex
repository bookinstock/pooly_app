defmodule Stack1 do
  use GenServer

  def start_link(state) when is_list(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def state do
    GenServer.call(__MODULE__, :state)
  end

  def push(e) do
    GenServer.call(__MODULE__, {:push, e})
  end

  def pop do
    GenServer.call(__MODULE__, :pop)
  end

  def init(state) do
    {:ok, state}
  end

  def handle_call(:state, _from, state) do
    {:reply, state, state}
  end

  def handle_call({:push, e}, _from, state) do
    {:reply, :ok, [e | state]}
  end

  def handle_call(:pop, _from, [] = state) do
    {:reply, nil, state}
  end

  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end
end


defmodule Stack2 do
  use GenServer

  def start_link(state) when is_list(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def state do
    GenServer.call(__MODULE__, :state)
  end

  def push(e) do
    GenServer.call(__MODULE__, {:push, e})
  end

  def pop do
    GenServer.call(__MODULE__, :pop)
  end

  def init(state) do
    {:ok, state}
  end

  def handle_call(:state, _from, state) do
    {:reply, state, state}
  end

  def handle_call({:push, e}, _from, state) do
    {:reply, :ok, [e | state]}
  end

  def handle_call(:pop, _from, [] = state) do
    {:reply, nil, state}
  end

  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end
end

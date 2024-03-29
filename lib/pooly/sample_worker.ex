defmodule SampleWorker do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def stop(pid) do
    GenServer.call(pid, :stop)
  end

  def state(pid) do
    GenServer.call(pid, :state)
  end

  def init(init_arg) do
    {:ok, init_arg}
  end

  def handle_call(:stop, _from, state) do
    {:stop, :normal, :ok, state}
  end

  def handle_call(:state, _from, state) do
    {:reply, state, state}
  end
end

# children = [
#   %{
#     id: Stack1,
#     start: {Stack1, :start_link, [[:hello]]}
#   },
#   %{
#     id: Stack2,
#     start: {Stack2, :start_link, [[:hello]]}
#   }
# ]

# {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)

# Supervisor.count_children(pid)

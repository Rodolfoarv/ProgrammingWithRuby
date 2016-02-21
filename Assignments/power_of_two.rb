def compute_powers_of_two(n)
  x = 1
  result = []
  n.times do
    result << x
    x *= 2
  end
  result
end

print compute_powers_of_two(30)

def measure(n=1)
  elapsed_time = []
  n.times do
    start_time = Time.now
    yield
    end_time = Time.now
    elapsed_time << end_time - start_time
  end
  elapsed_time.inject(:+) / elapsed_time.length
end

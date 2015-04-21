require 'get_process_mem'

puts `ruby bench_multiple_file_require.rb`
puts `ruby bench_single_file_require.rb`
puts `ruby bench_json_method.rb`

require 'get_process_mem'

$:.unshift File.dirname(__FILE__)

require 'micro_mime'

file = File.expand_path("../lib/multiple.rb", __FILE__)

GC.start(full_mark: true, immediate_sweep: true)
before = GetProcessMem.new.mb

require file

GC.start(full_mark: true, immediate_sweep: true)
after = GetProcessMem.new.mb
puts "MEM Difference, multiple (10) files: #{after - before} mb"

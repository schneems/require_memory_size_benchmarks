require 'yajl'
require 'get_process_mem'

$:.unshift File.dirname(__FILE__)

require 'micro_mime'

file_name = File.expand_path("../data/mime-types.json", __FILE__)

GC.start(full_mark: true, immediate_sweep: true)
before = GetProcessMem.new.mb

json  = File.open(file_name)
Yajl::Parser.new.parse(json).map {|element| MIMES << MicroMime.new(element) }


GC.start(full_mark: true, immediate_sweep: true)
after = GetProcessMem.new.mb
puts "MEM Difference, load json: #{after - before} mb"
#!/usr/bin/env ruby

require 'kiba/plus'
files = File.expand_path(File.dirname(__FILE__) + "/../lib/*.rb")
Dir.glob(files).each {|f| require(f);puts "import #{f}"}

mysql_url = 'mysql://root@localhost/shopperplus'

source CustomerSource, :connect_url => mysql_url

start_time = Time.now
pre_process do
  puts "*** START ACCOUNT MIGRATION #{start_time}***"
end

post_process do
  end_time = Time.now
  duration_in_minutes = (end_time - start_time)/60
  puts "*** End ACCOUNT MIGRATION #{end_time}***"
  puts "*** Duration (min): #{duration_in_minutes.round(2)}"
end

destination CustomerCsvDest, :output_file => "/tmp/customer_bulk.csv"
#destination CustomerCsvDest1


destination CustomerBulkDestination,
 :table_name => "customers",
 :truncate => false,
 :incremental => true

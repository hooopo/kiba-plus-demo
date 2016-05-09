#!/usr/bin/env ruby

$:.unshift "#{File.dirname(__FILE__)}/../lib"
require 'kiba/plus'
require 'customer_source'
require 'customer_destination'
require 'customer_csv_dest'
require 'customer_csv_dest1'
require 'customer_bulk_destination'
require 'customer_bulk2_destination'

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
:connect_url => 'postgresql://hooopo@localhost:9700/crm2_dev',
 :table_name => "customers",
 :truncate => false,
 :incremental => true
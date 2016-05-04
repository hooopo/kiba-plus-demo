require 'kiba/plus/csv_destination'
class CustomerCsvDest < Kiba::Plus::CsvDestination
  def output_file
    "/tmp/customer.csv"
  end
end
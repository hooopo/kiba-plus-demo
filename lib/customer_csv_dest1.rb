require 'kiba/plus/csv_destination'
class CustomerCsvDest1 < Kiba::Plus::CsvDestination
  def output_file
    "/tmp/customer1.csv"
  end
end
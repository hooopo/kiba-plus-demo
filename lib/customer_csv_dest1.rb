class CustomerCsvDest1 < Kiba::Plus::Destination::Csv
  def output_file
    "/tmp/customer1.csv"
  end
end
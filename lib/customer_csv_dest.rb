class CustomerCsvDest < Kiba::Plus::Destination::Csv
  def output_file
    "/tmp/customer.csv"
  end
end
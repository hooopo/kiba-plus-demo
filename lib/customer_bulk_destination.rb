require 'kiba/plus/pg_bulk_destination'
class CustomerBulkDestination < Kiba::Plus::PgBulkDestination
  def connect_url
    "postgresql://hooopo@localhost:5432/crm2_dev"
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end

  def table_name
    "customers"
  end

  def input_file
    "/tmp/customer_bulk.csv"
  end
end

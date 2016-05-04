require 'kiba/plus/pg_bulk2_destination'
class CustomerBulk2Destination < Kiba::Plus::PgBulk2Destination
  def connect_url
    "postgresql://hooopo@localhost:9700/crm2_dev"
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end

  def table_name
    "customers"
  end
end
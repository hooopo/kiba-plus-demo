class CustomerBulk2Destination < Kiba::Plus::Destination::PgBulk2
  def connect_url
    "postgresql://hooopo@localhost:5432/crm2_dev"
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end

  def table_name
    "customers"
  end
end

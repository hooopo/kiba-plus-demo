require 'kiba/plus/pg_destination'
class CustomerDestination < Kiba::Plus::PgDestination
  def connect_url
    "postgresql://hooopo@localhost:9700/crm2_dev"
  end

  def prepare_name
    self.class.to_s.downcase + "stmt"
  end

  def prepare_sql
    'insert into customers (id, email, first_name, last_name) values ($1, $2, $3, $4)'
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end
end
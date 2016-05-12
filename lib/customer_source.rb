class CustomerSource < Kiba::Plus::Source::Mysql
  def query
    'select id, email, "hooopo" as first_name, "wang" as last_name from customers'
  end
end
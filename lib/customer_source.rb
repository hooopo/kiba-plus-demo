
require 'kiba/plus/mysql_source'
class CustomerSource < Kiba::Plus::MysqlSource
  def query
    'select id, email, "hooopo" as first_name, "wang" as last_name from customers'
  end
end
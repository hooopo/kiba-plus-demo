class CustomerSource < Kiba::Plus::Source::Mysql
  def query
    if incremental && last_pull_at
      "SELECT id, email, 'hooopo' AS first_name, 'wang' AS last_name FROM customers WHERE updated_at > '#{last_pull_at.to_s}' "
    else
      'SELECT id, email, "hooopo" AS first_name, "wang" AS last_name FROM customers'
    end
  end
end
class MakeServiceNameNotNull < ActiveRecord::Migration
  def change
    change_column_null :services, :name, false
  end
end

class CreateResiliencyMatrix < ActiveRecord::Migration
  def change
    create_table :resiliency_matrix do |t|
      t.integer :service_id
      t.integer :feature_id
      t.integer :severity
    end
  end
end

class AddReviewedToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :reviewed, :boolean
  end
end

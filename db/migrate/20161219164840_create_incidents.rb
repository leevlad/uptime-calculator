class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.datetime   :incident_time
      t.datetime   :detection_time
      t.datetime   :resolution_time
      t.datetime   :closed_time
      t.text       :summary
      t.string     :method_of_detection
      t.integer    :severity
      t.string     :source_of_incident
      t.text       :symptoms
      t.integer    :faulted_service
      t.text       :resolution
      t.text       :follow_ups
      t.string     :contact_people
      t.text       :tags
      t.text       :hosts
      t.string     :task_url # asana
    end
  end
end

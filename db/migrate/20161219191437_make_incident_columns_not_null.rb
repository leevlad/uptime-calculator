class MakeIncidentColumnsNotNull < ActiveRecord::Migration
  def change
    change_column_null :incidents, :incident_time, false 
    change_column_null :incidents, :detection_time, false
    change_column_null :incidents, :resolution_time, false
    change_column_null :incidents, :closed_time, false
    change_column_null :incidents, :severity, false
    change_column_null :incidents, :faulted_service_id, false
    change_column_null :incidents, :resolution, false
  end
end

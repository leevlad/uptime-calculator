class AddTsvectorIndexToIncidents < ActiveRecord::Migration
  def change
    return unless ActiveRecord::Base.connection.adapter_name == "postgresql"
    # Create the search vector column
    add_column :incidents, :search_vector, 'tsvector'

    # Create the gin index on the search vector
    execute <<-SQL
      create index incidents_search_idx
      on incidents
      using gin(search_vector)
    SQL

    # Trigger to update the vector column when the incidents
    # table is updated.
    execute <<-SQL
      drop tigger if exists incidents_search_vector_update
      on incidents;
      create trigger incidents_search_vector_update
      before insert or update
      on incidents
      for each row execute procedure
      tsvector_update_trigger (search_vector, 'pg_catalog.english', summary, symptoms, resolution, follow_ups, tags, hosts);
    SQL

    Incident.find_each { |i| i.touch }
  end

  def down
    remove_column :incidents, :search_vector
    
    execute <<-SQL
      drop trigger if exists incidents_search_vector_update
    SQL
  end
end

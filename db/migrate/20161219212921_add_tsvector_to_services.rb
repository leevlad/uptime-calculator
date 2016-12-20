class AddTsvectorToServices < ActiveRecord::Migration
  def change
    # Create the search vector column
    add_column :services, :search_vector, 'tsvector'

    # Create the gin index on the search vector
    execute <<-SQL
      create index services_search_idx
      on services
      using gin(search_vector)
    SQL

    # Trigger to update the vector column when the services
    # table is updated.
    execute <<-SQL
      drop tigger if exists services_search_vector_update
      on services;
      create trigger services_search_vector_update
      before insert or update
      on services
      for each row execute procedure
      tsvector_update_trigger (search_vector, 'pg_catalog.english', summary, symptoms, resolution, follow_ups, tags, hosts);
    SQL

    Incident.find_each { |i| i.touch }
  end
end

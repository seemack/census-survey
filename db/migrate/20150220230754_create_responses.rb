class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.string :site, null: false
    	t.string :responder, null: false
        t.string :keep_location
        t.string :keep_location_years
        t.string :keep_location_able
        t.text :keep_location_comment
        t.string :keep_demog
        t.string :keep_demog_years
        t.string :keep_demog_able
        t.text :keep_demog_comment
        t.string :keep_shapefile
        t.string :keep_shapefile_years
        t.string :keep_shapefile_able
        t.text :keep_shapefile_comment
        # These were the fields for the original survey
    	# t.text :census_boundary
    	# t.string :acs_single_build
    	# t.text :acs_single_build_comment
    	# t.string :acs_build_volunteer
    	# t.text :acs_build_volunteer_comment
    	# t.string :acs_qa_volunteer
    	# t.text :acs_qa_volunteer_comment
    	# t.string :acs_multiple_files
    	# t.text :acs_multiple_files_comment
    	# t.string :acs_annual_files
    	# t.text :acs_annual_files_comment
    	# t.string :acs_block_group
    	# t.text :acs_block_group_comment
    	# t.string :census_needed
    	# t.text :census_needed_comment
    	# t.string :census_historical
    	# t.text :census_historical_comment
    	# t.string :census_future_history
    	# t.text :census_future_history_comment
    	t.text :general_comments
      t.timestamps null: false
    end
  end
end

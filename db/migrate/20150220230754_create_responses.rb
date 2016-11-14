class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.string :site
    	t.string :responder
        t.string :role
        t.string :role_other
        t.string :geo_own
        t.string :geo_freq
        t.string :geo_burden
        t.string :geo_time
        t.text :geo_comment
        t.boolean :limit_control
        t.boolean :limit_cost
        t.boolean :limit_progtime
        t.boolean :limit_staff
        t.boolean :limit_timely
        t.boolean :limit_space
        t.boolean :limit_technical
        t.boolean :limit_uncodeable
        t.boolean :limit_proctime
        t.text :limit_comment
        t.integer :imp_simple_produce
        t.integer :imp_ses
        t.integer :imp_time_produce
        t.integer :imp_simple_use
        t.integer :imp_latlong
        t.integer :imp_time_use
        t.integer :imp_race
        t.integer :imp_historical
        t.integer :imp_housing
        t.integer :imp_timely
        t.integer :imp_moe
        t.text :imp_comment
        t.string :use_block
        t.string :use_blockgroup
        t.string :use_tract
        t.string :use_zcta
        t.text :use_comment
    	t.text :general_comment
        t.timestamps null: false
    end
  end
end

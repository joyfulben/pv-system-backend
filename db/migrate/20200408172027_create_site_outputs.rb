class CreateSiteOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :site_outputs do |t|
      t.string :location
      t.decimal :sys_cap
      t.decimal :ac_output
      t.decimal :dc_output
      t.string :month

      t.timestamps
    end
  end
end

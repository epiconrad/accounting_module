class CreateCashadvances < ActiveRecord::Migration
  def change
    create_table :cashadvances do |t|
      t.date :date_from
      t.date :date_to
      t.string :client
      t.string :branch
      t.string :bus_unit
      t.string :status

      t.timestamps
    end
  end
end

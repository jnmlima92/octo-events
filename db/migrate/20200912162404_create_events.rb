class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.jsonb :description, null: false

      t.timestamps
    end
  end
end

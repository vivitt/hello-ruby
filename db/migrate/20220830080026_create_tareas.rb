class CreateTareas < ActiveRecord::Migration[7.0]
  def change
    create_table :tareas do |t|
      t.string :descr
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end

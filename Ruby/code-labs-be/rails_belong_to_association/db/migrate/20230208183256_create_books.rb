class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.datetime :published_at
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end

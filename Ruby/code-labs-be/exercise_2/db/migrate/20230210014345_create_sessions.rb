class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.belongs_to :students, null: false, foreign_key: true
      t.belongs_to :courses, null: false, foreign_key: true
      t.datetime :session_date

      t.timestamps
    end
  end
end

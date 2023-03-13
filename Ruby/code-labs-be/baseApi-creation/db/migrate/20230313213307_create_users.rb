class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # email, first_name, last_name
      t.timestamps
    end
  end
end

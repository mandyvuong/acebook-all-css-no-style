class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email 

      t.timestamps #Automatically creates 2 fields, update and create date
    end
  end
end

# bin/rails generate model Users first_name:string last_name:text email:string
# bin/rails db:migrate

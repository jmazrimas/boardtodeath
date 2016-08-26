class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      t.string :username,           null: false
      t.string :email,              null: false, default: ""
      t.string :password_digest,    null: false, default: ""


    end
  end
end

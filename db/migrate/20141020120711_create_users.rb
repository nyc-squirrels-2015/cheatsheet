class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, default: "Mr. Unknown"
      t.string :email, :default => "Email unknown"
      t.string :password_digest

    t.timestamps
    end
  end
end

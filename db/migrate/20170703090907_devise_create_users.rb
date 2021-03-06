class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :name,              null: false, default: ""
      t.string :image,              null: false, default: ""
      t.string :genre,              null: false, default: ""
      t.string :contact,              null: false, default: ""
      t.string :address,              null: false, default: ""
      t.string :sales,              null: false, default: ""
      t.string :budget,              null: false, default: ""
      t.string :seat,              null: false, default: ""
      t.string :smoke,              null: false, default: ""
      t.string :web,              null: false, default: ""
      t.string :remarks,              null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :instore,              null: false, default: ""
      t.string :guide,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end

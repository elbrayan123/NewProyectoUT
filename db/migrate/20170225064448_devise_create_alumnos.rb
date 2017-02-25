class DeviseCreateAlumnos < ActiveRecord::Migration[5.0]
  def change
    create_table :alumnos do |t|
      ## Database authenticatable
      t.string :nombre,              null: false, default: ""
      t.string :apellido_paterno,    null: false, default: ""       
      t.string :apellido_materno,   null: false, default: ""
      t.string :matricula,              null: false, default: ""
      t.string :carrera,              null: false, default: ""
      t.string :grupo,              null: false, default: ""
      t.string :especialidad,         null: false, default: ""
      t.string :sexo,              null: false, default: ""
      t.string :tel,              null: false, default: ""
      t.string :cel,              null: false, default: ""
      t.text   :descripcion,              null: false, default: ""      
      t.string :email,              null: false, default: ""
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

    add_index :alumnos, :email,                unique: true
    add_index :alumnos, :reset_password_token, unique: true
    # add_index :alumnos, :confirmation_token,   unique: true
    # add_index :alumnos, :unlock_token,         unique: true
  end
end

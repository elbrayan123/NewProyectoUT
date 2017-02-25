# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170225064448) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre",                 default: "", null: false
    t.string   "apellido_paterno",       default: "", null: false
    t.string   "apellido_materno",       default: "", null: false
    t.string   "matricula",              default: "", null: false
    t.string   "carrera",                default: "", null: false
    t.string   "grupo",                  default: "", null: false
    t.string   "especialidad",           default: "", null: false
    t.string   "sexo",                   default: "", null: false
    t.string   "tel",                    default: "", null: false
    t.string   "cel",                    default: "", null: false
    t.text     "descripcion",            default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_alumnos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_alumnos_on_reset_password_token", unique: true
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre_empresa",         default: "", null: false
    t.string   "tel_empresa",            default: "", null: false
    t.string   "nombre_encargado",       default: "", null: false
    t.string   "cel_encargado"
    t.text     "descripcion"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
  end

  create_table "post_vacantes", force: :cascade do |t|
    t.string   "carrera"
    t.string   "area"
    t.integer  "nvacantes"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

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

ActiveRecord::Schema.define(version: 20171229210746) do

  create_table "empresas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "cuit"
    t.string "nombre"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marca_vehiculos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "marca"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelo_vehiculos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "modelo"
    t.bigint "marca_vehiculo_id"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_vehiculo_id"], name: "index_modelo_vehiculos_on_marca_vehiculo_id"
  end

  create_table "personas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "num_legajo"
    t.string "apellido"
    t.string "nombre"
    t.bigint "dni"
    t.date "fecha_vencimiento_dni"
    t.string "pdf_dni_path"
    t.bigint "cuil"
    t.string "pdf_cuil_path"
    t.date "fecha_nacimiento"
    t.string "pdf_fecha_nacimiento_path"
    t.string "nacionalidad"
    t.string "domicilio"
    t.bigint "telefono"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "empresa_id"
    t.index ["empresa_id"], name: "index_personas_on_empresa_id"
  end

  create_table "tipo_vehiculos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "tipo"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "interno"
    t.string "dominio"
    t.integer "anio"
    t.string "num_chasis"
    t.string "num_motor"
    t.integer "cant_asientos"
    t.bigint "empresa_id"
    t.text "observaciones"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "marca_vehiculo_id"
    t.bigint "modelo_vehiculo_id"
    t.bigint "tipo_vehiculo_id"
    t.index ["empresa_id"], name: "index_vehiculos_on_empresa_id"
    t.index ["marca_vehiculo_id"], name: "index_vehiculos_on_marca_vehiculo_id"
    t.index ["modelo_vehiculo_id"], name: "index_vehiculos_on_modelo_vehiculo_id"
    t.index ["tipo_vehiculo_id"], name: "index_vehiculos_on_tipo_vehiculo_id"
  end

  add_foreign_key "modelo_vehiculos", "marca_vehiculos"
  add_foreign_key "personas", "empresas"
  add_foreign_key "vehiculos", "empresas"
  add_foreign_key "vehiculos", "marca_vehiculos"
  add_foreign_key "vehiculos", "modelo_vehiculos"
  add_foreign_key "vehiculos", "tipo_vehiculos"
end

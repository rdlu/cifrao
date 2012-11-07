# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121104120859) do

  create_table "conta", :force => true do |t|
    t.string   "agencia"
    t.string   "nro_conta"
    t.float    "saldo"
    t.integer  "entidades_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "conta", ["entidades_id"], :name => "index_conta_on_entidades_id"

  create_table "despesas", :force => true do |t|
    t.float    "valor"
    t.string   "descricao"
    t.integer  "conta_origem_id"
    t.integer  "conta_destino_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "despesas", ["conta_destino_id"], :name => "index_despesas_on_conta_destino_id"
  add_index "despesas", ["conta_origem_id"], :name => "index_despesas_on_conta_origem_id"

  create_table "entidades", :force => true do |t|
    t.string   "cnpj_cpf"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end

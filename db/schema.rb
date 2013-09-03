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

ActiveRecord::Schema.define(:version => 20130903223346) do

  create_table "avaliacaos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "empresa_servico_id"
    t.string   "titulo"
    t.text     "comentario"
    t.integer  "rate"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string  "nome"
    t.integer "estado_id"
  end

  create_table "empresa_servicos", :force => true do |t|
    t.integer "empresa_id"
    t.integer "servico_id"
    t.string  "preco"
  end

  create_table "empresas", :force => true do |t|
    t.integer "cidade_id"
    t.string  "nome"
    t.string  "endereco"
    t.string  "image_file_name"
  end

  create_table "estados", :force => true do |t|
    t.string  "nome"
    t.string  "sigla"
    t.integer "pais_id"
  end

  create_table "pais", :force => true do |t|
    t.string "nome"
    t.string "sigla"
  end

  create_table "servico_pesquisados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicos", :force => true do |t|
    t.string "nome"
  end

  create_table "users", :force => true do |t|
    t.string "name"
    t.string "email"
    t.string "access_token"
    t.string "uid"
    t.string "photo_url"
    t.string "provider"
  end

end

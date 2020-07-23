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

ActiveRecord::Schema.define(version: 2020_07_23_164848) do

  create_table "dates", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "workout_id"
    t.index ["user_id"], name: "index_dates_on_user_id"
    t.index ["workout_id"], name: "index_dates_on_workout_id"
  end

  create_table "dates_meals", id: false, force: :cascade do |t|
    t.integer "date_id", null: false
    t.integer "meal_id", null: false
    t.index ["date_id"], name: "index_dates_meals_on_date_id"
    t.index ["meal_id"], name: "index_dates_meals_on_meal_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.boolean "time_based"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises_workouts", id: false, force: :cascade do |t|
    t.integer "workout_id", null: false
    t.integer "exercise_id", null: false
    t.integer "amount"
    t.index ["exercise_id"], name: "index_exercises_workouts_on_exercise_id"
    t.index ["workout_id"], name: "index_exercises_workouts_on_workout_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "protein"
    t.integer "carbs"
    t.integer "fat"
    t.integer "fiber"
    t.integer "sugar"
    t.text "descritpion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_meals", id: false, force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "ingredient_id", null: false
    t.integer "servings"
    t.index ["ingredient_id"], name: "index_ingredients_meals_on_ingredient_id"
    t.index ["meal_id"], name: "index_ingredients_meals_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "descritpion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

end

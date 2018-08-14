# frozen_string_literal: true

class CreateTeachers < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table :teachers do |t|
      t.string :uuid, null: false
      t.string :first_name
      t.string :last_name
      t.string :grade
      t.boolean :is_active, default: true, null: false

      t.timestamps

      t.index %w[last_name first_name],
              name: 'index_teachers_on_last_name_and_first_name',
              unique: true
    end
  end
end

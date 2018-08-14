# frozen_string_literal: true

class Teacher < ApplicationRecord # :nodoc:
  include ClassyEnum::ActiveRecord
  include Disableable

  validates :first_name,
            :grade,
            :last_name,
            :uuid,
            presence: true

  validates :last_name,
            uniqueness: { scope: :first_name, case_sensitive: false }

  validates :uuid,
            uniqueness: { case_sensitive: false }

  classy_enum_attr :grade
end

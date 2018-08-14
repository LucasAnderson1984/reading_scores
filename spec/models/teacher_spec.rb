# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Teacher do
  subject { build(:teacher) }

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:grade) }
  it { is_expected.to validate_presence_of(:uuid) }

  it do
    is_expected
      .to validate_uniqueness_of(:last_name)
      .scoped_to(:first_name)
      .case_insensitive
  end

  it { is_expected.to validate_uniqueness_of(:uuid).case_insensitive }
end

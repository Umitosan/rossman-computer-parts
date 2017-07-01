require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :body }
  it { should validate_length_of :body }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :product_id }

  it { should belong_to :product }

  it do
    should validate_numericality_of(:rating).
      is_greater_than(0).
      is_less_than(6)
  end

end

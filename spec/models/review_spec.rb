require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :body }
  it { should validate_length_of :body }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :product_id }

  it { should belong_to :product }
end

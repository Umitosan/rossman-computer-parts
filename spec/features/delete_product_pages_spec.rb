require 'rails_helper'

describe 'the delete product path' do

  it 'deletes a product' do
    visit products_showall_path
    click_on 'Add a product'
    fill_in 'Name', :with => 'testName'
    fill_in 'Cost', :with => 12.34
    fill_in 'Country', :with => 'testCountry'
    click_on 'Create Product'
    click_on 'Delete'
    expect(page).to have_content("( Product 'testName' deleted )")
  end

end

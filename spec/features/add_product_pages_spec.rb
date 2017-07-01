require 'rails_helper'

describe 'the add product path' do

  it 'shows the new product form' do
    visit products_showall_path
    click_on 'Add a product'
    expect(page).to have_content('Add a new product')
  end

  it 'shows the new product form' do
    visit products_showall_path
    click_on 'Add a product'
    fill_in 'Name', :with => 'testName'
    fill_in 'Cost', :with => 12.34
    fill_in 'Country', :with => 'testCountry'
    click_on 'Create Product'
    expect(page).to have_content('testName')
  end



end

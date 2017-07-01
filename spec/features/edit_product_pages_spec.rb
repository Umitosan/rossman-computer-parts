require 'rails_helper'

describe 'the home page path' do

  it 'shows the edit form' do
    someProduct = Product.create(:name => 'Sputnik', :cost => 12.34, :country => 'USSR')
    visit products_showall_path
    click_on 'Edit'
    expect(page).to have_content('Edit product Sputnik')
  end

  # it 'edits the product' do
  #   someProduct = Product.create(:name => 'Sputnik', :cost => 12.34, :country => 'USSR')
  #   visit products_showall_path
  #   click_on 'Edit'
  #   fill_in 'Name', :with => 'motherboard'
  #   click_on 'Update Product'
  #   expect(page).to have_content('motherboard')
  # end

end

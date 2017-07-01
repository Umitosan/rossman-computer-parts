require 'rails_helper'

describe 'the product details path' do

  it 'shows the add product detials page ' do
    someProduct = Product.create(:name => 'Sputnik', :cost => 12.34, :country => 'USSR')
    visit products_showall_path
    click_on 'Sputnik'
    expect(page).to have_content('Sputnik - details')
  end

  it 'shows the add product detials page ' do
    someProduct = Product.create(:name => 'Sputnik', :cost => 12.34, :country => 'USSR')
    visit products_showall_path
    click_on 'Sputnik'
    click_on 'Add a review'
    expect(page).to have_content('Author')
  end

  it 'shows the add product detials page ' do
    someProduct = Product.create(:name => 'Sputnik', :cost => 12.34, :country => 'USSR')
    visit products_showall_path
    click_on 'Sputnik'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Captain Kirk'
    fill_in 'Body', :with => 'I love Capybara, kinda I love Capybara, kinda I love Capybara, kinda I love Capybara, kinda I love Capybara, kinda I love Capybara, kinda'
    fill_in 'Rating', :with => '3'
    click_on 'Create Review'
    expect(page).to have_content('Captain Kirk')
  end

end

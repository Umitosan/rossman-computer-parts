require 'rails_helper'

describe 'the showall path' do

  it 'shows all products' do
    someProduct = Product.create(:name => 'Sputnik 1', :cost => 12.34, :country => 'USSR')
    visit products_showall_path
    expect(page).to have_content('Sputnik 1')
  end

end

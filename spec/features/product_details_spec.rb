require 'rails_helper'

RSpec.feature "Visitor can view product information", type: :feature do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    @category.products.create!(
      name:  'Lollipop',
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end

  scenario "They can visit the products page" do
    visit root_path
    click_link 'Lollipop'
    expect(page).to have_css 'article.product-detail'
  end
end
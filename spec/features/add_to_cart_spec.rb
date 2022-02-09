require 'rails_helper'

RSpec.feature "Visitor can add an item to their cart", type: :feature do

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

# '<%= link_to cart_path do %> <%= fa_icon "shopping-cart" %> My Cart (<%= cart.size %>) <% end %>'

  scenario "They can see that their cart changes" do
    visit root_path
    click_on 'Add'
    expect(page).to have_content 'My Cart (1)'
  end

  scenario "They can view their cart" do
    visit root_path
    click_on 'Add'
    click_on 'My Cart'
    expect(page).to have_css 'section.cart-show'
  end

  scenario "They can view their cart even if it's empty" do
    visit root_path
    click_on 'My Cart'
    have_title "┬┴┬┴┤ ͜ʖ ͡° ├┬┴┬┴ Your cart is currently empty. Please return to homepage: <%= link_to 'Homepage', :root %>"
    expect(page).to have_css 'section.cart-show'
  end

end

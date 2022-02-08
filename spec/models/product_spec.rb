require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {Product.create(name: "munches", price: 1200, quantity: 5, category: @category)}
  describe 'Validations' do
    it 'should have a valid name' do
      @category = Category.create(name: "Hot")
      @product = Product.create(name: nil, price: 1200, quantity: 5, category: @category)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should have a valid price' do
      @category = Category.create(name: "Hot")
      @product = Product.create(name: "flame", price: nil, quantity: 5, category: @category)
      expect(@product).to_not be_valid
    end

    it 'should have a valid quantity' do
      @category = Category.create(name: "Hot")
      @product = Product.create(name: "flame", price: 1200, quantity: nil, category: @category)
      expect(@product).to_not be_valid
    end

    it 'should have a valid category' do
      @category = Category.create(name: "Hot")
      @product = Product.create(name: "flame", price: 1200, quantity: 5, category: nil)
      expect(@product).to_not be_valid
    end
    
    it 'should have a valid category' do
      @category = Category.create(name: "Hot")
      @product = Product.create(name: "flame", price: 1200, quantity: 5, category: @category)
      expect(@product).to be_valid
    end
  end
end
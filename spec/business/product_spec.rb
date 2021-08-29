require 'rails_helper'

RSpec.describe ProductStock do
  it 'should count sale' do
    product = FactoryBot.create(:product)
    sale_product = FactoryBot.create(:sale_product, product: product, quantity: 200)
    expect(product).to be_truthy
    expect(product.sale_products.first.quantity).to eq(200)
    expect(sale_product).to be_truthy
  end

  it 'should sum total sales' do
    product = FactoryBot.create(:product)
    FactoryBot.create_list(:sale_product, 3, product: product, quantity: 100)
    expect(product).to be_truthy
    expect(product.count_sale_product).to eq(300)
  end

  xit 'should sum total purchase' do
    # TODO, define purchase_product on Bot.
    product = FactoryBot.create(:product)
    FactoryBot.create_list(:purchase_product, 3, product: product, quantity: 100)
    expect(product).to be_truthy
    expect(product.count_purchase_product).to eq(300)
  end
end

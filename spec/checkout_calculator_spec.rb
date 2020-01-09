require 'checkout_calculator'

describe '#checkout' do
  context 'illegal input' do
    it 'returns -1 when passed an empty string' do
      shop = Shop.new
      expect(shop.checkout('')).to eq(-1)
    end
  end
end
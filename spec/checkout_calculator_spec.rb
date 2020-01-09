require 'checkout_calculator'



describe '#checkout' do

  before(:each) do
    @shop = Shop.new
  end

  context 'illegal input' do
    it 'returns -1 when passed an empty string' do
      expect(@shop.checkout('')).to eq(-1)
    end
    it 'returns -1 when passed a string containing lower case letters' do
      expect(@shop.checkout('aBc')).to eq(-1)
    end
    it 'returns -1 when passed a string containing symbols and numbers' do
      expect(@shop.checkout('-B8x')).to eq(-1)
    end
    it 'returns -1 when passed an integer' do
      expect(@shop.checkout(18)).to eq(-1)
    end
  end
  context 'valid inputs' do
    it 'returns 100 when passed AA' do
      expect(@shop.checkout('AA')).to eq(100)
    end
  end
end
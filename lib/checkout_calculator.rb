class Shop

  PRICES = { 'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15 }

  def checkout(items)
    return -1 if items.is_a? Integer
    return -1 if items.match(/([^A-D])/)
    return -1 if items.empty?

    items = items.split('')

    items.map { |item| PRICES[item] }.inject(:+)

  end
end
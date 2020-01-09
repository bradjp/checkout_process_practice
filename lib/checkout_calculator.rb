class Shop

  # PRICES = { 'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15 }

  def checkout(items)
    return -1 if items.is_a? Integer
    return -1 if items.match(/([^A-D])/)
    return -1 if items.empty?

    items = items.split('')

    a = items.count('A')
    b = items.count('B')
    c = items.count('C')
    d = items.count('D')

    total = 0

    a_discount = a / 3
    b_discount = b / 2

    (a * 50) + (b * 30) + (c * 20) + (d * 15) - (a_discount * 20) - (b_discount * 15)

  end
end
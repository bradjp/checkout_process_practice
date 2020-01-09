class Shop

  def checkout(items)
    return -1 if items.is_a? Integer
    return -1 if items.match(/([^A-D])/)
    return -1 if items.empty?

    100

  end
end
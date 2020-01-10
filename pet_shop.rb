def pet_shop_name(shop_hash)
  return shop_hash[:name]
end

def total_cash(shop_hash)
  return shop_hash[:admin][:total_cash]
end


def add_or_remove_cash(shop_hash, cash)
  # add if positive number provided for cash
  # remove if negative number provided for cash
  # this function does not need to return anything

  shop_hash[:admin][:total_cash] += cash

end

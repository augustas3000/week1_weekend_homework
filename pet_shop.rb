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

def pets_sold(shop_hash)
  return shop_hash[:admin][:pets_sold]
end


def increase_pets_sold(shop_hash, num_pets)
  shop_hash[:admin][:pets_sold] += num_pets
end

def stock_count(shop_hash)
  return shop_hash[:pets].length
end

# returns an array of pets whose breed name is equal to
# breed argument given.
def pets_by_breed(shop_hash, breed)
  pets_found = []
  for pet_hash in shop_hash[:pets]
    if pet_hash[:breed] == breed
      pets_found.push(breed)
    end
  end
  return pets_found
end

# returns a pet(hash) based on pet_name argument.
def find_pet_by_name(shop_hash, pet_name)
  for pet_hash in shop_hash[:pets]
    if pet_hash[:name] == pet_name
      return pet_hash
    end
  end
  # if no matches, we expect a program to return nil.
  return nil
end


def remove_pet_by_name(shop_hash, pet_name)
  for pet_hash in shop_hash[:pets]
    if pet_hash[:name] == pet_name
      shop_hash[:pets].delete(pet_hash)
    end
  end
end

# add a new pet hash(defined in def setup) into pets array
# of shop_hash
def add_pet_to_stock(shop_hash, new_pet_hash)
  shop_hash[:pets].push(new_pet_hash)
end


# returning cash for a given customer(hash)
def customer_cash(customer_hash)
  return customer_hash[:cash]
end

# subtracts provided su of money from provided customer hash,
# no need to return anything.
def remove_customer_cash(customer_hash, money_to_remove)
  customer_hash[:cash] -= money_to_remove
end

# return pet count for pet array of inputed customer hash
def customer_pet_count(customer_hash)
  return customer_hash[:pets].length
end

def add_pet_to_customer(customer_hash, new_pet_hash)
  customer_hash[:pets].push(new_pet_hash)
end

# this one will return true/false based on provided
# customer(hash) and wanted pet(hash also)
def customer_can_afford_pet?(customer_hash, wanted_pet)
  if customer_hash[:cash] >= wanted_pet[:price]
    true
  else
    false
  end
end


def sell_pet_to_customer(shop_hash, wanted_pet_hash, customer_hash)
  # does the shop have the right pet?
  if shop_hash[:pets].include?(wanted_pet_hash)
    if customer_hash[:cash] >= wanted_pet_hash[:price]
      customer_hash[:pets].push(wanted_pet_hash)
      shop_hash[:admin][:pets_sold] += 1
      customer_hash[:cash] -= wanted_pet_hash[:price]
      shop_hash[:admin][:total_cash] += wanted_pet_hash[:price]
    else
      # insufficient funds
    end
  else
    # pet not found
  end

end









#




#

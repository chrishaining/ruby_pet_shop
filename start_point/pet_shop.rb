#Task 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#Task 2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#Task 3
def add_or_remove_cash(pet_shop, amount)
  total_cash = pet_shop[:admin][:total_cash] += amount
  return total_cash
end

#Task 5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#Task 6
def increase_pets_sold(pet_shop, sold)
  pets_sold = pet_shop[:admin][:pets_sold] += sold
  return pets_sold
end

#Task 7
  def stock_count(pet_shop)
    return pet_shop[:pets].length
  end

  # Tasks 8 and 9 - PASSES
  def pets_by_breed(pet_shop, breed_name)
    found_breed_array = []
    not_found_breed_array = []
    for pet in pet_shop[:pets]
      if pet[:breed] == breed_name
        found_breed_array.push(pet)
      else
        not_found_breed_array.push(breed_name)
      end
    end
    return found_breed_array
    return not_found_breed_array
  end

#Task 10 and 11
  def find_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
      if pet[:name] == pet_name
        return pet
      end
    end
    return nil
end


#Task 12
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
  find_pet_by_name(pet_shop, pet_name)
  end

#Task 13 - passes
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].count
end

#Task 14 - attempt 1 - passes
def customer_cash(customers)
  return customers[:cash]
end

#Task 14 attempt 2 - fails
# def customer_cash(customers, amount)
#   for customer in customers
#     if customer[:cash] == amount
#       return customer
#     end
#   end
# end

  #Task 15 - fails
#def remove_customer_cash(customers, amount)
#  for customer in customers
#    customer[:cash] = customer[:cash] - amount
#    customer = customers[0]
#    return customer[:cash] - amount
#    puts customer[:cash]
#  end
#  return customer[:cash]
#end
#puts remove_customer_cash(customers, 100)
    #   customer = @customers[0]
    #   remove_customer_cash(customer, 100)
    #   assert_equal(900, customer[:cash])

#Task 15 - attempt 2 - passes
def remove_customer_cash(customer, amount)
      customer[:cash] -= amount
end

#Task 16 - passes 
def customer_pet_count(customers_by_index)
  return customers_by_index[:pets].count
end


#Task 17 - passes, and seems to work in the implementation
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

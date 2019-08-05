#Task 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#Task 2 - my answer is the same as the solution
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#Task 3 and 4 - the solution uses the same maths as my answer, but is simpler because it doesn't need a return. In future, no need to return
def add_or_remove_cash(pet_shop, amount)
  total_cash = pet_shop[:admin][:total_cash] += amount
  return total_cash
end
#Task 3 and 4 solution:
# def add_or_remove_cash(pet_shop, amount)
#   pet_shop[:admin][:total_cash] += amount
# end

#Task 5 - my answer is the same as the solution
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#Task 6 - like tasks 3/4, my maths is right, but the solution is simpler
def increase_pets_sold(pet_shop, sold)
  pets_sold = pet_shop[:admin][:pets_sold] += sold
  return pets_sold
end
#Task 6 solution
# def pets_sold(pet_shop)
#   return pet_shop[:admin][:pets_sold]
# end

#Task 7 - solution is same structure, but uses .count method. Does it matter that I used a different method? At the moment, no.
def stock_count(pet_shop)
  return pet_shop[:pets].length
end

# Tasks 8 and 9 - PASSES, but the solution is much simpler. Is my answer incorrect, or is it just too long?
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
  return not_found_breed_array #cannot have two returns one after other (second return will never happen. if  return happens, the second one won't)
end

#Tasks 8 and 9 solution:
# def pets_by_breed(pet_shop, breed)
#   matches = []
#   for pet in pet_shop[:pets]
#     matches << pet if(pet[:breed] == breed)
#   end
#   return matches
# end


#Task 10 and 11 - the solution seems very different. Is mine wrong, or just too long?
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

#Task 10 and 11 solution:
# def find_pet_by_name(pet_shop, pet_name)
#   match = nil
#   for pet in pet_shop[:pets]
#     match = pet if(pet[:name] == pet_name)
#   end
#   return match
# end

#Task 12 - solution seems very different.
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
  find_pet_by_name(pet_shop, pet_name) # no need for this here.
end

#Task 12 solution:
# def remove_pet_by_name(pet_shop, pet_name)
#   pet_to_delete = find_pet_by_name(pet_shop, pet_name)
#   pet_shop[:pets].delete(pet_to_delete)
# end


#Task 13 - passes - I think mine is the same, but maybe using new_pet as parameter is incorrect? Sky said it was fine.
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].count
end
#Task 13 solution :
# def add_pet_to_stock(pet_shop, pet)
#   pet_shop[:pets].push(pet)
# end

#Task 14 - passes, but uses parameter 'customer'. This might mean I don't understand what I was doing. After speaking to Sky, he did say it was incorrect.
def customer_cash(customers)
  return customers[:cash]
end
#Task 14 solution:
# def customer_cash(customer)
#   return customer[:cash]
# end

#Task 15 - attempt 2 - passes. The solution is the same as my answer.
def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

#Task 16 - passes - solution has the same form, but uses a simpler name for the parameter (customer). Does this highlight that I lack understanding of the structure? Nah, but I could just put customer.
def customer_pet_count(customers_by_index)
  return customers_by_index[:pets].count
end

#Task 17 - passes - solution has same form, but again uses a simpler parameter name.
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#Optional tasks 1-3 - customers is incorrect parameter. use customer. You don't want to have a plural parameter to represent an individual entity.
def customer_can_afford_pet(customers, new_pet)
  for customer in customers
    return true if customers[:cash] >= new_pet[:price]
  end
  return false
end

#Optional tasks 1-3 solution:
# def customer_can_afford_pet(customer, pet)
#   return customer[:cash] >= pet[:price]
# end

#Optional task 4 solution
# def sell_pet_to_customer(pet_shop, pet, customer)
#   return if (pet == nil)
#   return if !(customer_can_afford_pet(customer, pet))
#
#   add_pet_to_customer(customer,pet)
#   add_or_remove_cash(pet_shop, pet[:price])
#   remove_customer_cash(pet_shop, pet[:price])
#   remove_pet_by_name(pet_shop, pet[:name])
#   increase_pets_sold(pet_shop, 1)
# end

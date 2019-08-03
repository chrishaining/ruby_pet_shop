# customers = [
#   {
#     name: "Alice",
#     pets: [],
#     cash: 1000
#   },
#   {
#     name: "Bob",
#     pets: [],
#     cash: 50
#   },
#   {
#     name: "Jack",
#     pets: [],
#     cash: 100
#   }
# ]
#
# new_pet = {
#   name: "Bors the Younger",
#   pet_type: :cat,
#   breed: "Cornish Rex",
#   price: 100
# }
#
# pet_shop = {
#   pets: [
#     {
#       name: "Sir Percy",
#       pet_type: :cat,
#       breed: "British Shorthair",
#       price: 500
#     },
#     {
#       name: "King Bagdemagus",
#       pet_type: :cat,
#       breed: "British Shorthair",
#       price: 500
#     },
#     {
#       name: "Sir Lancelot",
#       pet_type: :dog,
#       breed: "Pomsky",
#       price: 1000,
#     },
#     {
#       name: "Arthur",
#       pet_type: :dog,
#       breed: "Husky",
#       price: 900,
#     },
#     {
#       name: "Tristan",
#       pet_type: :dog,
#       breed: "Basset Hound",
#       price: 800,
#     },
#     {
#       name: "Merlin",
#       pet_type: :cat,
#       breed: "Egyptian Mau",
#       price: 1500,
#     }
#   ],
#   admin: {
#     total_cash: 1000,
#     pets_sold: 0,
#   },
#   name: "Camelot of Pets"
# }



#Task 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end
#puts pet_shop_name(pet_shop) # DELETE

#Task 2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
#puts total_cash(pet_shop) #DELETE

#Task 3
def add_or_remove_cash(pet_shop, amount)
  total_cash = pet_shop[:admin][:total_cash] += amount
  return total_cash
end
#puts add_or_remove_cash(pet_shop, 10) DELETE


#Task 5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#puts pets_sold(pet_shop) DELETE

#Task 6
def increase_pets_sold(pet_shop, sold)
  pets_sold = pet_shop[:admin][:pets_sold] += sold
  return pets_sold
end
#puts increase_pets_sold(pet_shop, 5000) DELETE

#Task 7
  def stock_count(pet_shop)
    return pet_shop[:pets].length
  #   count = stock_count(@pet_shop)
  #   assert_equal(6, count)
  end
# puts stock_count(pet_shop) DELETE

#Task 8 - attempt 1
  # def all_pets_by_breed__found(pet_shop)
  # #   pets = pets_by_breed(@pet_shop, "British Shorthair")
  # #   assert_equal(2, pets.count)
  # british_shorthairs = []
  #   for breed in pet_shop[:pets]
  #     if breed == pet_shop[:pets][:breed]"British Shorthair"
  #       british_shorthairs.push(breed)
  #     end
  #   end
  #   return british_shorthairs
  # end
#puts all_pets_by_breed__found(pet_shop)
#puts pet_shop[:pets]({:breed => "British Shorthair"})

#Task 8 - attempt 2 INCLUDES TASK 9
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
  return found_breed_array.count
  return not_found_breed_array.count
end
#puts pets_by_breed(pet_shop, "British Shorthair")
#puts pets_by_breed(pet_shop, "Dalmation")


#Task 10 and 11
  def find_pet_by_name(pet_shop, pet_name)
    for pet in pet_shop[:pets]
      if pet[:name] == pet_name
        return pet[:name]
      end
    end
    return nil
end

#puts find_pet_by_name__returns_pet(pet_shop, "Lionel")

#Task 12
def remove_pet_by_name(pet_shop, pet_name)
  #   remove_pet_by_name(@pet_shop, "Arthur")
  #   pet = find_pet_by_name(@pet_shop,"Arthur")
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
  find_pet_by_name(pet_shop, pet_name)
  end

#remove_pet_by_name(pet_shop, "Arthur")
#puts pet_shop[:pets]

#Task 13
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].count
end
#puts add_pet_to_stock(pet_shop, new_pet)
#puts pet_shop

#Task 14
def customer_cash(customers)
  return customers[:cash]
end

  #return nil
#  return customers[int]["cash"]
  #   cash = customer_cash(@customers[0])
  #   assert_equal(1000, cash)

  #Task 15
def remove_customer_cash(customers, amount)
#  for customer in customers
#    customer[:cash] = customer[:cash] - amount
    customer = customers[0]
    return customer[:cash] - amount
#    puts customer[:cash]
#  end
  return customer[:cash]
end
#puts remove_customer_cash(customers, 100)
    #   customer = @customers[0]
    #   remove_customer_cash(customer, 100)
    #   assert_equal(900, customer[:cash])

#Task 16
# def customer_pet_count(customers)
#   return customers[0][:pets].count
#       #   count = customer_pet_count(@customers[0])
#       #   assert_equal(0, count)
# end
#puts customer_pet_count(customers) - task 16 runs in the implementation, but fails the test!

#united_kingdom[1]["capital"] = "Cardiff"
# def delete_planet(planet_name, solar_system_hash)
#   for planet in solar_system_hash[:planets]
#     if planet[:name] == planet_name
#       solar_system_hash[:planets].delete(planet)
#     end
#   end
# end

# def total_planets(solar_system_hash)
#   return solar_system_hash[:planets].count()

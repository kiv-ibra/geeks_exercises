# ------ Exercise 1
print("Hello world\n" * 4)

# ------ Exercise 2
result = (99 ^ 3) * 8
print(result)

# ------ Exercise 3
myName = "IBRA"
user_name = input("What's your name? ")
if user_name == myName:
    print("WOOW! What are the odds? Parallel lives, maybe? ")
else:
    print("Nice to meet you, " + user_name + "!")


# ------ Exercise 4
heightCm = input("Enter your height in centimeters: ")
try:
    heightCm = int(heightCm)
    if heightCm > 145:
        print("You're tall enough to ride!")
    else:
        print("You need to drink some milk to grow more!")
except ValueError:
    print("Please enter a valid number for your height.")

# ------ Exercise 5
my_fav_numbers = {1,6,8,9,10}
#Add 2 new numbers to the set.
my_fav_numbers.add(2)
print(my_fav_numbers)
my_fav_numbers.add(3)
print(my_fav_numbers)
# Remove the last number.
my_fav_numbers.remove(10)
print(my_fav_numbers)
# Create a set called friend_fav_numbers with your friend’s favorites numbers.
friend_fav_numbers = {20,7,15,11}
# Concatenate my_fav_numbers and friend_fav_numbers to a new variable called our_fav_numbers.
our_fav_numbers = my_fav_numbers.union(friend_fav_numbers)
print(our_fav_numbers)

# ------ Exercise 6
my_tuple = (1,2,3,4,5,6,7,8,9,10)
my_tuple.add (11)
print(my_tuple)
#AttributeError: 'tuple' object has no attribute 'add'

# ------ Exercise 7
basket = ["Banana", "Apples", "Oranges", "Blueberries"]
# 1. Remove "Banana" from the list
basket.remove("Banana")
print(basket)
# 2. Remove "Blueberries" from the list     
basket.remove("Blueberries")
print(basket)
# 3. Add "Kiwi" at the end of the list
basket.append("Kiwi")
print(basket)
# 4. Add "Apples" at the beginning of the list
basket.insert(0, "Apples")
print(basket)
# 5. Count how many apples in the basket    
apple_count = basket.count("Apples")
print(apple_count)
# 6. Empty the basket
basket.clear()
print(basket)
# 7. Print the basket variable
print(basket)

# ------ Exercise 8
sandwich_orders = ["Tuna sandwich", "Pastrami sandwich", "Avocado sandwich", "Pastrami sandwich", "Egg sandwich", "Chicken sandwich", "Pastrami sandwich"]
finished_sandwiches = []

# Informing the customers about the unavailability of pastrami sandwiches
print("The deli has run out of pastrami sandwiches.")

# Removing all occurrences of "Pastrami sandwich" from sandwich_orders
while "Pastrami sandwich" in sandwich_orders:
    sandwich_orders.remove("Pastrami sandwich")


finished_sandwiches = []

# Preparing the sandwiches and adding them to finished_sandwiches
while sandwich_orders:
    current_sandwich = sandwich_orders.pop(0)
    print(f"I made your {current_sandwich}.")
    finished_sandwiches.append(current_sandwich)

# Listing all the sandwiches that were made
print("\nAll sandwiches have been made.")
print("The following sandwiches have been made:")
for sandwich in finished_sandwiches:
    print(sandwich)













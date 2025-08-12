# Exercise 1
month = int(input("Enter the month number (1-12): "))

if 3 <= month <= 5:
    print("Season: Spring")
elif 6 <= month <= 8:
    print("Season: Summer")
elif 9 <= month <= 11:
    print("Season: Autumn")
elif month == 12 or month <= 2:
    print("Season: Winter")
else:
    print("Invalid month number!")

# Exercise 2
print("Numbers from 1 to 20:")
for i in range(1, 21):
    print(i, end=" ")
print("\n")

print("Numbers at even indexes (index starting at 0):")
for i in range(1, 21):
    if i % 2 == 0:
        print(i, end=" ")

# Exercise 3
my_name = "Brahim"
while True:
    name = input("Enter your name: ")
    if name == my_name:
        print("Hello,", my_name, "! Exiting loop.")
        break


# Exercise 4
names = ['Samus', 'Cortana', 'V', 'Link', 'Mario', 'Cortana', 'Samus']
search_name = input("Enter a name to search: ")
if search_name in names:
    print(f"First occurrence of {search_name} is at index {names.index(search_name)}")
else:
    print(f"{search_name} not found in the list.")

# Exercise 5
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
num3 = int(input("Enter third number: "))
greatest = max(num1, num2, num3)
print("The greatest number is:", greatest)

# Exercise 6
wins = 0
losses = 0

while True:
    user_input = input("Guess a number (1-9) or 'q' to quit: ")
    if user_input.lower() == 'q':
        print(f"Games won: {wins}, Games lost: {losses}")
        break

    if not user_input.isdigit():
        print("Please enter a valid number.")
        continue

    guess = int(user_input)
    if guess < 1 or guess > 9:
        print("Number must be between 1 and 9.")
        continue

    random_num = random.randint(1, 9)
    print(f"Random number was: {random_num}")

    if guess == random_num:
        print("Winner!")
        wins += 1
    else:
        print("Better luck next time.")
        losses += 1
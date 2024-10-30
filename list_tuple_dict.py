# dict = { "message": "Hello world!" }
# dict["language"] = "english"
# print(dict)

# dict = { "message": "Hello world!" }
# dict["message"] = "Hi There!"
# print(dict)

# dict = {}
# print(dict)

# dict = {
#  "message": "Hello wordl!",
#  "language": "english",
#  "response": "Hi there!",
# }

# for key in dict:
#   print(key)
# # Prints message, language, and response

# for key in dict:
#   print(dict[key])

# response_data = {
#  "status_code": 200,
#  "countries": ["Philippines","Japan","China"],
#  "cities": {
#    "Philippines": "Manila",
#    "Japan": "Tokyo",
#    "Korea": "Seoul",
#  },
# }
# for key in response_data:
#   print(key)
# # Prints message, language, and response

# for key in response_data:
#   print(response_data[key])

# list = [
#     { "Philippines": "Manila" },
#     { "Japan": "Tokyo" },
#     { "Korea": "Seoul" },
# ]

# print(list[0])

# def sum(num1, num2=5, num3=10):
#     print (num1, num2, num3)
#     return num1 + num2 +num3

# print(sum(2))

# def add(*args):
#     sum = 0
#     print (args)
#     for n in args:
#         sum += n
#     return sum

# print(add(1, 2, 3, 4, 5))
# print(add(7, 4, 3))
# print(add(1, 3, 4, 5))

# def calculate(**kwargs):
#     for key, value in kwargs.items():
#         print(f"key={key}, value={value}")

# calculate(num_1=3, num_2=5, operator="+")

# reponse = (
#     200, 
#     {'Content-Type': 'application/kson'},
#     '{"name": "Alice"}'
# )
# status_code, header, body = reponse
# print(type(status_code), type(header), type(body) ) 

# def add(*args):
#     sum = 0
#     for n in args:
#         sum += n
#     return sum

# print(add(1, 2, 3, 4, 5))
# print(add(7, 4, 3))
# print(add(1, 3, 4, 5))

list_of_data = [
    {1,"two", 3.14},
    2,
    "three"
]

dictionary, number_2, number_3 = list_of_data
print (dictionary)
print (number_2)
print (number_3)


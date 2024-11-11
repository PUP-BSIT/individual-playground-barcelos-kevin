# 
# def highest_value(name_list, highest=0, name_holder=""):
#     for key in name_list:
#         # print(name_list[key])
#         # print(key)
#         value = name_list[key]
#         if value > highest:
#             highest = value
#             name_holder = key 
    
#     return name_holder


# name_list = {'John' : 80,
#     'Alice' : 92,
#     'Bob' : 85,
#     'Charlie' : 91
# }
# print(highest_value(name_list))
# def invert_dict(original_dict):
#     return {value: key for key, value in original_dict.items()}

# dict = {'a': 1, 'b': 2, 'c': 3}
# inverted_dict = invert_dict(dict)
# print(inverted_dict)

def convert_to_tuples(dict):
    list_tuples = [(key, value) for key, value in dict.items()]
    print(list_tuples)

dict = {
        'a': 1,
        'b': 2,
        'c': 3
    }
convert_to_tuples(dict)
# pages = 0
# word_per_page = 0
# print(f"pages: {pages}, word_per_page: {word_per_page}")
# pages = int(input("Number of pages: "))
# print(f"pages after input: {pages}")
# word_per_page = int(input("Number of words per page: "))
# print(f"word_per_page after input: {word_per_page}")
# total_words = pages * word_per_page
# print(total_words)

def double(a_list):
  b_list = []
  for item in a_list:
    new_item = item * 2
    b_list.append(new_item)
  print(b_list)
 
double([1,2,3,5,8,13])

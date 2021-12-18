# dict generator

text = 'Добрый вечер вечер вечер всем участникам курса Python!'
# {
#     'Добрый': 6,
#     'вечер': 5,
#     ...
# }

words = [word for word in text.split()]
answer = {word: len(word) for word in text.split()}
unique_words = {word for word in text.split()}
print(words)
print(answer)
print(unique_words)

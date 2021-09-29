import os

with open("mydata.txt", encoding="utf-8") as my_file:
#    my_file.write("Some random text\nMore random text\nAnd some more")
    line_num = 1
    while True:
        line = my_file.readline()

        # line is empty so exit
        if not line:
            break

        print("Line", line_num)

        # Put the words in a list using the space as
        # the boundary between words
        word_list = line.split()

        # Get the number of words with len()
        print("Number of Words :", len(word_list))

        # Incremented for each character
        char_count = 0

        for word in word_list:
            for char in word:
                char_count += 1

        # Divide to find the answer
        avg_num_chars = char_count/len(word_list)

        # Use format to limit to 2 decimals
        print("Avg Word Length : {:.2}".format(avg_num_chars))

        lineNum += 1
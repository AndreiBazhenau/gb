from tkinter import *
import tkinter.filedialog  # to open the files and such


class TextEditor:

    # Quits the TkInter app when called
    @staticmethod  # because it is not part of app, but it going just to quit of application
    def quit_app(event=None):
        root.quit()             # we have to write this in Windows only (not in Mac)

    # ----- NEXT TUTORIAL -----

    def remake_file(self, text_area_list):
        for i in text_area_list:
            print("Key", i[0])
            print("Value", i[1])
            print("Index", i[2])

    # ----- END NEXT TUTORIAL -----

    def open_file(self, event=None):     # open the dialog which allows the user to open the file
        # Open dialog and get chosen file                           initial dir = main dir
        txt_file = tkinter.filedialog.askopenfilename(parent=root, initialdir='/')
        # If the file exists
        if txt_file:
                                    # start in the empty
            self.text_area.delete(1.0, END)   # delete everything from start to end

            # Open file and put text in the text widget
            with open(txt_file) as _file:
                self.text_area.insert(1.0, _file.read())

                # Update the text widget
                root.update_idletasks()

    def save_file(self, event=None):   # saving file

        # Opens the save as dialog box
        file = tkinter.filedialog.asksaveasfile(mode='w')
        if file is not None:                               # verifying the file
            # Get text in the text widget and delete the last newline
            data = self.text_area.get('1.0', END + '-1c') # from beginning to the end and
                                                          # get rid of new line

            # Write the text and close the file
            file.write(data)

            # ----- NEXT TUTORIAL -----

            # print(str(self.text_area.dump('1.0', END)))
            # self.remake_file(self.text_area.dump('1.0', END))

            # ----- END NEXT TUTORIAL -----

            file.close()

    def make_bold(self):   # make bold
        self.text_area.tag_add("bt", "sel.first", "sel.last") # bold from start till end of selection

    def __init__(self, root):  # initialize main app window

        self.text_to_write = ""  # текст для записи

        # Define title for the app
        root.title("Text Editor")

        # Defines the width and height of the window
        root.geometry("600x550")

        frame = Frame(root, width=600, height=550)

        # Create the scrollbar
        scrollbar = Scrollbar(frame)

        # yscrollcommand connects the scroll bar to the text area
        self.text_area = Text(frame, width=600, height=550,
                        yscrollcommand=scrollbar.set,
                        padx=10, pady=10, font=("Georgia", "14"))

        # Call yview when the scrollbar is moved
        scrollbar.config(command=self.text_area.yview)

        # Put scroll bar on the right and fill in the Y direction
        scrollbar.pack(side="right", fill="y")  # y = yes

        # Pack on the left and fill available space
        self.text_area.pack(side="left", fill="both", expand=True)

        frame.pack()  # pack widgets inside the frame

        # ----- FILE MENU CREATION -----

        # Create a pull down menu that can't be removed
        file_menu = Menu(the_menu, tearoff=0)

        # Add items to the menu that show when clicked compound allows you to add an image
        file_menu.add_command(label="Open", command=self.open_file)
        file_menu.add_command(label="Save", command=self.save_file)

        # Add a horizontal bar to group similar commands
        file_menu.add_separator()

        # Call for the function to execute when clicked
        file_menu.add_command(label="Quit", command=self.quit_app) # don't need for Mac

        # Add the pull down menu to the menu bar
        the_menu.add_cascade(label="File", menu=file_menu)

        # ----- EDIT MENU CREATION -----

        edit_menu = Menu(the_menu, tearoff=0)
        edit_menu.add_command(label="Bold", command=self.make_bold)
        the_menu.add_cascade(label="Edit", menu=edit_menu)

        self.text_area.tag_config("bt", font=("Georgia", "14", "bold"))


        # Display the menu bar
        root.config(menu=the_menu)


root = Tk()  # create a window


the_menu = Menu(root)  # Create the menu object

text_editor = TextEditor(root) # create a text editor - class

root.mainloop()   # create the main loop to execute over and over until the user quit the app


def writeToFile(path, content):
  with open(path, "w") as file:
    file.write(content)

PATH_TO_MY_FILE = './example.txt'
CONTENT_FOR_MY_FILE = 'Example\nThis is on line 2 of a text file.\n\nThe end.'

writeToFile(PATH_TO_MY_FILE, CONTENT_FOR_MY_FILE)
print(PATH_TO_MY_FILE)
print(pwd)
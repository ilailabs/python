file=open("testfile.txt","r")
print(file.read(16))
print(file.read(4))
print(file.read())
file.close()

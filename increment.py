
file = open("temp.txt", "a")
text1 = "cmp di,"
text2 = "je near block"
startVal = 2972
endVal = 2980

while startVal <= endVal:
    file.write(text1 + str(startVal) + "\n" + text2 + "\n")
    startVal = startVal+ 2
    
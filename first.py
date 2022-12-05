def cryptogrsphy(msg,shift):
  result = ""
  for i in range (len(msg)):
    char = msg[i]
    if (ord(char)==32):
      result +=" "
    elif(char.isupper()):
      result += chr((ord(char)+shift-65)%26+65)
    else:
      result += chr((ord(char)+shift-97)%26+97)
  return result

msg = "my name is fardin"
shift = 5

encription = cryptogrsphy(msg,shift)
de = cryptogrsphy (encription,-shift)

print("orignal: " + msg)
print("encripted: " + encription)
print("decripted: " + de)

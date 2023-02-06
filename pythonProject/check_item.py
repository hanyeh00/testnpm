x={}
x["cmd"]=input("what is cmd value?")
for cmd in ('add', 'delete', 'quit'):
    if cmd == x["cmd"]:
        action = cmd + " item"
        valid = 1

        print(action)
        break
else:
    action = "invalid choice… try again!"
    valid = 0
    print(action)
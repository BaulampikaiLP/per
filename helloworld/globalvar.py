x = "awesome"


def myfunc():
    print("Python is " + x)


myfunc()

y = "awesome"


def myfunc():
    y = "fantastic"
    print("Python is " + y)


myfunc()

print("Python is " + y)


#global keyword

def myfunc():
    global z
    z = "fantastic"


myfunc()

print("Python is " + z)

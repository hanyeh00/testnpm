#not optimize example of prime number

def prime(number):

  for i in range(2, int(number/2)+1):
    if (number / i).is_integer():
      return False
  return True

x=12
prime(x)
#false

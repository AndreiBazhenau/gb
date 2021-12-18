#Return a List of Primes.
# A prime can only be divided by 1 and itself. 5 is prime because 1 and 5 are its only positive
# factors. 6 is a composite because it is divisible by 1, 2, 3 and 6. We'll receive a request
# for primes up to the input value. We’ll then use a for loop and check if modulus == 0 for
# every value up to the number to check. If modulus == 0 that means the number isn't prime.
# prime - простое число

def is_prime(num):
    for i in range(2,num):
        if (num % i) == 0:
            return False
    return True

def get_primes(max_number):
    list_of_primes = []
    for num1 in range(2, max_number):
        if is_prime(num1):
            list_of_primes.append(num1)
    return list_of_primes
max_number = 5
list_of_primes = get_primes(max_number)
for prime in list_of_primes:
    print(prime)
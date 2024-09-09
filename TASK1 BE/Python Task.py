import math

def nottext(text: str) -> bool:
    for i in text:
        if not i.isalpha():
            return True
    return False

def is_palidrome(text):
    if nottext(text):
        raise ValueError("input is not a text")

    check =  ( text == text[::-1] )
    textdict ={}
    for i in text:
        if i in textdict:
            textdict[i] += 1
        else:
            textdict[i] = 1
    return (check, textdict)


def is_prime(num):
    result = []
    sqrt_num = int(math.sqrt(num))
    if 2 > sqrt_num :
        result.append((False, 2))
    else:
        for i in range(2, sqrt_num+1):
            check =  num % i == 0
            result.append((check, i))
    
    return result

def main():
    log = []
    result1 = None
    result2 = None
    for attempt in range(3):
        try:
            print("Check if a word is a palindrome")
            word = input("Enter a word: ")
            result1 = is_palidrome(word)
            break
        except ValueError as e:
            log.append({word , e.args})
        


    for attempt in range(3):
        try:
            print("check if number is prime")
            num = input("Enter a number: ")
            num = int(num)
            result2 = is_prime(num)
            break
        except ValueError as e:
            log.append({num , e.args})
    
    result = {
        "word": word,
        "number": num,
        "is_palindrome": result1,
        "is_prime": result2
    }
    print(result)
    

if __name__ == "__main__":
    main()
  
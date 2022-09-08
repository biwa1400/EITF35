if __name__ == "__main__":
    f = open("stimuli.txt",'r')
    a = str(f.read()).strip().split()
    byte_str = ""
    count = 0
    for i in a:
        byte_str = byte_str+'{:04b}'.format(int(i))[::-1]
    for i in range(len(byte_str)-3):
        print(byte_str[i:i+4])
        if byte_str[i:i+4] == "1001":
            count = count +1
    print(count)
            
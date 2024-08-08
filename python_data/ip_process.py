import sys
def example(pub_ip):
    print(type(pub_ip))
    return pub_ip


if __name__ == "__main__":
    pub_ip = sys.argv[1]
    print(example(pub_ip))

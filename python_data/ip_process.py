import sys
def deploy_app(pub_ip):
    print(pub_ip)

if __name__ == "__main__":
    pub_ip = sys.argv[1]
    deploy_app(pub_ip)
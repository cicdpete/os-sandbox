import argparse

# args
arg_parser = argparse.ArgumentParser("Argument parser for scratch python script.")
arg_parser.add_argument("arg1", type=str, help="placeholder arg")
args = arg_parser.parse_args()

def load_args():
    # retrieve args
    arg1 = args.arg1
    return arg1

def main():
    arg1 = load_args()
    print(arg1)

if __name__ == "__main__":
    main()
import os, sys, argparse


parser = argparse.ArgumentParser()
parser.add_argument('--word', '-w')
parser.add_argument('--folder', '-f')
parser.add_argument('--mode', '-m')
args = parser.parse_args(sys.argv[1:])

def main(word, folder, mode):
    if mode == 'titles':
        print(titles(word, folder))
    else:
        print(content(word, folder))

def titles(word, folder):
    list_titles = []
    count = 0
    for root, dirs, files in os.walk(folder):
        [list_titles.append(i) for i in dirs]
        [list_titles.append(i) for i in files]
    for i in list_titles:
        if word.lower() in i.lower():
            count += 1
    return count

def content(word, folder):
    list_files = []
    count = 0
    for root, dirs, files in os.walk(folder):
        for name in files:
            list_files.append(root + '/' + name)
    for f in list_files:
        with open(f, 'r') as file:
            try:
                for line in file.readlines():
                    count += line.lower().count(word.lower())
            except:
                pass
    return count


main(args.word, args.folder, args.mode)

# Search in titles:
# python3 script.py -w [word] -f [folder] -m titles
# Search in files:
# python3 script.py -w [word] -f [folder]

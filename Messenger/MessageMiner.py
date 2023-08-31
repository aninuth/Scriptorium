# This script is designed to extract just my sent message contents from my Messenger history. I used it as fodder for https://github.com/eschluntz/compress in the hopes of improving my typing efficiency, but it can be used for any type of linguistic analysis.
# To run the script, get your Facebook data (https://www.facebook.com/help/212802592074644) and store this script in the 'messages' directory.
# The script will create a text file containing all the messages you've sent.

import os
import json

inbox_dirs = ['./archived_threads', './inbox'] #these are the standard from the Messenger export, verify and add additional as necessary
output_file = 'compilation.txt' #modify to change the name of the resulting file

#Function that will read each json file, extract messages sent by the user, and append it to the file
def process_json_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as json_file:
        data = json.load(json_file)
        for message in data['messages']:
            sender_name = message.get('sender_name')
            content = message.get('content')
            if sender_name == 'aninuth' and content: #replace the name of the user here
                with open(output_file, 'a', encoding='utf-8') as out_file:
                    out_file.write(content + '\n')

#Function that navigates through the directories, identifies json files to be parsed
def process_directories(directory_paths):
    for directory_path in directory_paths:
        for root, dirs, files in os.walk(directory_path):
            for file in files:
                if file.startswith('message_') and file.endswith('.json'):
                    file_path = os.path.join(root, file)
                    process_json_file(file_path)


if __name__ == '__main__':        
    process_directories(inbox_dirs)
    print("Compilation completed.")

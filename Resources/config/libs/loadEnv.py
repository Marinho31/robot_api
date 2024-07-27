from dotenv import load_dotenv
import os

def load_env():
    if os.path.exists('.env'):
        load_dotenv(override=False)
from slacker import Slacker

def sendMessage():
    slack = Slacker('xoxb-57348209414-Jc4RwqzA8i0Ue6HNhRUJmkQi')
    slack.chat.post_message('#bruno-bot-test', 'beep boop')

sendMessage()
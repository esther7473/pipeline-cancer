from atproto import Client

client = Client()
client.login('handle.example.com', 'hunter2')



# data = client.get_timeline(cursor='...', limit=30)

# feed = data.feed
# next_page = data.cursor
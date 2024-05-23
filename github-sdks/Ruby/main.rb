require 'octokit'

client = Octokit::Client.new(access_token: ENV['GH_TOKEN'])

# Create the new branch
client.create_ref(
"alsuppes/Github-Foundations-Practice", 
"refs/heads/sdks", 
"e13a01297f1b704b0a45a6cb7770ad9fb066bd98")
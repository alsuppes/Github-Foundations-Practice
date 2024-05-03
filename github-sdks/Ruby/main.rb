require 'octokit'

client = Octokit::Client.new

repo = "Anna-S-Test/Github-Foundations-Practice"
new_branch_name = "ruby"
base_branch = "master"


# Get the latest commit SHA of the base branch
sha_latest_commit = client.commits(repo, base_branch).first.sha

# Create the new branch
client.create.ref(repo, "refs/heads/#{new_branch_name}", sha_latest_commit)
const { Octokit, App } = require("octokit");
console.log(`TOKEN:${process.env.GH_TOKEN}`)
const octokit = new Octokit({
    auth: process.env.GH_TOKEN
  })
  
octokit.request('POST /repos/{owner}/{repo}/git/refs', {
    owner: 'alsuppes',
    repo: 'Github-Foundations-Practice',
    ref: 'refs/heads/sdksjs',
    sha: 'e13a01297f1b704b0a45a6cb7770ad9fb066bd98',
    headers: {
      'X-GitHub-Api-Version': '2022-11-28'
    }
  })
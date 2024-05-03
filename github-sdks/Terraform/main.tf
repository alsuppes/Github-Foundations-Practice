terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.2.1"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_branch" "development" {
  repository = "Github-Foundations-Practice"
  branch     = "sdks"
}
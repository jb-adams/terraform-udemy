terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "~> 5.0"
        }
    }
}

# Configure the Github Provider
provider "github" {
    token = var.github_token
}

resource "github_repository" "terraform-test-repo" {
    name = "terraform-test-repo"
    description = "Test repository created using terraform"
    visibility = "private"
}
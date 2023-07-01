pipeline {

  agent {
    dockerfile {
      filename 'Dockerfile'
    }
  }

  triggers {
    // Once a week on Sundays between 1 and 6 AM.
    cron('H H(1-6) * * 0')
  }

  options {
    ansiColor('xterm')
    timestamps()
    timeout(30)
    buildDiscarder logRotator(numToKeepStr: '3')
  }

  environment {
    GIT_AUTHOR_NAME = 'Andre Meyering (Jenkins)'
    GIT_AUTHOR_EMAIL = 'info@andremeyering.de'
  }

  stages {

    stage("Checkout") {
      steps {
        checkout scm
        sh '''
           git config --global user.name "${GIT_AUTHOR_NAME}"
           git config --global user.email "${GIT_AUTHOR_EMAIL}"
           '''
        // Ensure that gh-pages is available.
        // Requires that the ref-spec is configured as
        //   +refs/heads/*:refs/remotes/@{remote}/*
        sh '''
           if ! git rev-parse --verify gh-pages; then
             git branch gh-pages origin/gh-pages;
           fi
           '''
      }
    }

    stage('Build and Publish Documentation') {
      when { branch 'master' }
      steps {
        withCredentials([gitUsernamePassword(credentialsId: 'mediaelch-org-github', gitToolName: 'Default')]) {
          sh './update_github_pages.sh'
        }
      }
    }

  }
}

pipeline {

  agent {
    dockerfile {
      filename 'Dockerfile'
    }
  }

  options {
    skipDefaultCheckout true
    ansiColor('xterm')
    timestamps()
    timeout(30)
  }

  environment {
    GIT_AUTHOR_NAME = 'Andre Meyering (Jenkins)'
    GIT_AUTHOR_EMAIL = 'info@andremeyering.de'
  }

  stages {

    stage("Checkout") {
      when { branch 'jenkins' }
      steps {
        checkout scm
        // Ensure that gh-pages is available.
        sh '''
          if ! git rev-parse --verify gh-pages; then
            git branch gh-pages origin/gh-pages;
          fi
        '''
      }
    }

    stage('Build and Publish Documentation') {
      steps {
        withCredentials([gitUsernamePassword(credentialsId: 'ef9dd6c5-be4f-405a-922e-536b5d7114de', gitToolName: 'Default')]) {
          sh './update_github_pages.sh'
        }
      }
    }

  }
}

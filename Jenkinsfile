pipeline {

  agent {
    dockerfile {
      filename 'Dockerfile'
    }
  }

  options {
    ansiColor('xterm')
    timestamps()
    timeout(30)
  }

  stages {

    stage('Build') {
      when { branch 'master' }
      steps {
        echo "Not implemented, yet."
      }
    }

    stage('Publish') {
      when { branch 'master' }
      steps {
        echo "Not implemented, yet."
      }
    }

  }
}

pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/SzymonFed/Jenkins_sandbox.git'
      }
    }

    stage('Set up Python Environment') {
      steps {
        // Use virtualenv to isolate dependencies
        sh '''
          python3 -m venv venv
          . venv/bin/activate
          pip install --upgrade pip
          pip install -r requirements.txt
        '''
      }
    }

    stage('Run Tests') {
      steps {
        sh '''
          . venv/bin/activate
          pytest
        '''
      }
    }

    stage('Build') {
      steps {
        echo 'If you have a build step, add it here.'
        // For example, packaging the app, creating wheels, etc.
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying application...'
        // Add your deployment scripts here, e.g. scp, ssh, or cloud deploy commands
        sh './deploy.sh' 
      }
    }
  }

  post {
    always {
      echo 'Pipeline finished.'
    }
    success {
      echo 'Build and tests passed!'
    }
    failure {
      echo 'Build or tests failed.'
    }
  }
}

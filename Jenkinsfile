pipeline {
  agent any
  parameters { 
      string(name: 'PAGE_TITLE', defaultValue: 'My Page')
      file('index.html') 
  }
  stages {
    stage('Modify HTML') {
      steps {
        sh """
            ls -al 
            pwd
            printenv
            sed -i 's#<title>.*</title>#<title>${params.PAGE_TITLE}</title>#' index.html
            echo 'Build Number: ${BUILD_NUMBER}' >> body.txt
            rm -rf *
        """
      }
    }
  }
  post { always { echo "Build: ${BUILD_NUMBER}" } }
}

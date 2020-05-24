node{
    stage('Python-Docker'){
        echo 'Hello World'
    }
    stage('SCM Checkout'){
        git 'https://github.com/anurag4418/python-flask-docker.git'
    }
	stage('python-flask-build'){
	    sshPublisher(publishers: [sshPublisherDesc(configName: 'docker_host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'docker build -t anuragjunghare/python-flask:${BUILD_NUMBER} .', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//home//anurag_junghare', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'Dockerfile, app.py')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
	}
	stage('python-flask-run'){
	    sshPublisher(publishers: [sshPublisherDesc(configName: 'docker_host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'docker rm -f python-flask-app || true', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//home//anurag_junghare', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'Dockerfile, app.py'), sshTransfer(cleanRemote: false, excludes: '', execCommand: 'docker run -d -p 8080:8080 --name python-flask-app anuragjunghare/python-flask:${BUILD_NUMBER}', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '//home//anurag_junghare', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
	}
}

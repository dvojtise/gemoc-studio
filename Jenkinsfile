pipeline {
	agent any
	options {
		buildDiscarder( logRotator(numToKeepStr:'5'), disableConcurrentBuilds())
	}
	stages {
		stage('Prepare') {
			steps {
				// Wipe the workspace so we are building completely clean
  		  		// deleteDir()
				cleanWs()
				//git url: 'https://github.com/eclipse/aCute.git'
				//checkout scm
				// Get code from GitHub repositories
	
			    // this will check if there is a branch with the same name as the current branch (ie. the branch containing this Jenkinsfile) and use that for the checkout, but if there is no
			    // branch with the same name it will fall back to the master branch
			    dir('gemoc-studio') {
			    	def gemocstudioScm = resolveScm source: [$class: 'GitSCMSource', credentialsId: '', id: '_', remote: 'https://github.com/eclipse/gemoc-studio.git', traits: [[$class: 'BranchDiscoveryTrait']]], targets: [BRANCH_NAME, 'master']
			        checkout gemocstudioScm
				}
				dir('gemoc-studio-modeldebugging') {
					def gemocstudiomodeldebuggingScm = resolveScm source: [$class: 'GitSCMSource', credentialsId: '', id: '_', remote: 'https://github.com/eclipse/gemoc-studio-modeldebugging.git', traits: [[$class: 'BranchDiscoveryTrait']]], targets: [BRANCH_NAME, 'master']
					checkout gemocstudiomodeldebuggingScm
				}
			    echo 'Content of the workspace'
				sh "ls"
			}

		}
	}
}


pipeline {
	agent any
	options {
		buildDiscarder( logRotator(numToKeepStr:'5'))
	}
	stages {
		stage('Prepare') {
			steps {
				// Wipe the workspace so we are building completely clean
  		  		deleteDir()
				//cleanWs()
				
				// Get code from GitHub repositories				
			    // this will check if there is a branch with the same name as the current branch (ie. the branch containing this Jenkinsfile) and use that for the checkout, but if there is no
			    // branch with the same name it will fall back to the master branch
			    dir('gemoc-studio') {
			    
    				//	checkout resolveScm(source: git('https://github.com/eclipse/gemoc-studio.git'), targets: [BRANCH_NAME,'master'])
			    	script {
	         			def gemocstudioScm = resolveScm source: [$class: 'GitSCMSource', credentialsId: '', id: '_', remote: 'https://github.com/eclipse/gemoc-studio.git', traits: [[$class: 'BranchDiscoveryTrait']]], targets: [BRANCH_NAME, 'master']
	         			checkout gemocstudioScm
	         		}
				}
				dir('gemoc-studio-modeldebugging') {
    				script {
	         			def gemocstudiomodeldebuggingScm = resolveScm source: [$class: 'GitSCMSource', credentialsId: '', id: '_', remote: 'https://github.com/eclipse/gemoc-studio-modeldebugging.git', traits: [[$class: 'BranchDiscoveryTrait']]], targets: [BRANCH_NAME, 'master']
	         			checkout gemocstudiomodeldebuggingScm
	         		}
				}
			    echo 'Content of the workspace'
				sh "ls"
			}
		}
	    stage('Build and verify') {
	   		script {
		    	def studioVariant
		      	if(  env.JENKINS_URL.contains("https://hudson.eclipse.org/gemoc/")){
		      		studioVariant = "Official build"
		      	} else {
		      		studioVariant = "${JENKINS_URL}"
		      	}
	      	}
	      	// Run the maven build with tests  
	      	withEnv(["STUDIO_VARIANT=${studioVariant}","BRANCH_VARIANT=${BRANCH_NAME}"]){ 
	        	sh 'printenv'         
		      	dir ('gemoc-studio/dev_support/full_compilation') {
		        	wrap([$class: 'Xvnc', takeScreenshot: false, useXauthority: true]) {
		              // sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean verify --errors -P ignore_CI_repositories,!use_CI_repositories"
		              sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore \"-Dstudio.variant=${studioVariant}\" -Dbranch.variant=${BRANCH_VARIANT} clean verify --errors "
		        	}
		    	}      
	    	}  
	 	}
		stage('Upload') {
			when {
        		// skip this stage unless on Master branch
        		branch "master"
			}
		    steps {
		        echo "Deploy to download.eclipse.org"
		    }
		}
		stage("Archive") {
      		when {
        		// skip this stage unless branch is NOT master
        		not {
          			branch "master"
		        }
		      }
		      steps {
		        echo "archive artifact"
		      }
		}
	}
	post { 
        always { 
            echo 'I will always say Hello again!'
            
            //step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 'didier.vojtisek@inria.fr', sendToIndividuals: true])
            step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: "didier.vojtisek@gmail.com", sendToIndividuals: true])
            //mail bcc: '', body: 'this is the body', cc: '', from: '', replyTo: '', subject: 'This is a test', to: 'didier.vojtisek@inria.fr' 
            echo 'end of always' 
        }
        changed {
            step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: "didier.vojtisek@inria.fr", sendToIndividuals: true])
        }
        unstable {
            echo 'Unstable start'
            step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: "didier.vojtisek@inria.fr", sendToIndividuals: true])
            echo 'Unstable ends'
        }
        failure {
            echo 'failure start'
            step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: "didier.vojtisek@inria.fr", sendToIndividuals: true])
            echo 'failure ends'
        }
    }
}


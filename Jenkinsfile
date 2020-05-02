pipeline {

    agent {
        label 'armhf'
    }

    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')
    }

    triggers {
        GenericTrigger (
            causeString: 'Push by: $ACTOR on Ref: $REF',
            genericVariables: [
                [defaultValue: '', key: 'ACTOR', regexpFilter: '', value: '$.pusher.username'],
                [defaultValue: '', key: 'REF', regexpFilter: '', value: '$.ref'],
            ],
            regexpFilterExpression: '',
            regexpFilterText: '',
            token: '1612d51ccb91ad61b7345e56f4f5a8b4d0070b06' )
    }

    stages {
        stage ('Build stretch base image') {
            steps {
                /* Build stretch base image */
                sh 'sudo /usr/sbin/debootstrap --variant=minbase stretch stretch'
                sh 'sudo tar -C stretch -c . | docker import - kdedesign/debian-stretch:latest'
            }
        }
        stage ('Publish stretch base docker image to Docker Hub') {
            steps {
                /* Docker push buildresult to Docker Hub*/
                withDockerRegistry(credentialsId: 'dockerhubaccount', url: '') {
                    sh "docker push kdedesign/debian-stretch:latest"
                }
            }
        }
    }
}
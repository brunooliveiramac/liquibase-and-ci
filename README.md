Sample project: liquibase with gradle and jenkins pipeline


Pipeline:


 node {
    
    
    stage 'checkout'
    git 'https://github.com/brunooliveiramac/liquibase-and-ci.git'
    
    
    stage 'liquibase migrate local'
    
    try{
        sh './gradlew migrate-local liquibasedropall liquibaseupdate'
    } catch (err){
        echo "Caught: ${err}"
        currentBuild.result = 'FAILURE'
    }
    
 }
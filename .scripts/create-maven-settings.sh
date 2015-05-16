#!/bin/bash
# This script creates the Maven settings file
# This includes the connection settings, which are loaded from the server's environment

{
   echo "<settings>";
   # Servers settings
   echo "<servers>";
   # Site FTP
   echo "<server>";
      echo "<id>site</id>";
      echo "<username>\${env.REPO_SITE_USER}</username>";
      echo "<password>\${env.REPO_SITE_PASSWORD}</password>";
   echo "</server>";
   # Development site FTP
   echo "<server>";
      echo "<id>site-development</id>";
      echo "<username>\${env.REPO_SITE_DEVELOP_USER}</username>";
      echo "<password>\${env.REPO_SITE_DEVELOP_PASSWORD}</password>";
   echo "</server>";
   
   echo "</servers>";
   
   # Active profile
   if [ "$TRAVIS_BRANCH" == "develop" ]; then
      echo "<activeProfiles>"
         echo "<activeProfile>development</activeProfile>"
      echo "</activeProfiles>"
   fi
   
   echo "</settings>";
} >> ~/settings.xml
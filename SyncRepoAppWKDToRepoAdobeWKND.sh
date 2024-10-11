date=$(date '+%d-%m-%y')


echo "[1] Cheking Repo WKND backend branch develop"
git fetch origin feature/backend-frontend
git checkout feature/backend-frontend
git pull origin feature/backend-frontend


#Write-Output "[2] Testing Repo WKND backend using Maven"
#mvn test 


echo "[3] Synchronizing Repository WKND To Repository Adobe WKND"


echo "[3.1] Adding Remote Repository Adobe WKND backend"
git remote remove wknd-backend
git remote add wknd-backend https://git.cloudmanager.adobe.com/compassoptrsd/wknd-backend/


echo "[3.2] Pushing branch develop to Repository Adobe"
git push -f wknd-backend develop
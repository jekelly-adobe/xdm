echo "triggering visual build."
git clone https://jwen-adobe:0205f8284bbed31765660d7e63bc7638621ba0a2@github.com/adobe/xdmVisualization.git
cd xdmVisualization
git remote add origin https://jwen-adobe:0205f8284bbed31765660d7e63bc7638621ba0a2@github.com/adobe/xdmVisualization.git
echo "triggered" > triggeredBuild.log
currentBranch=$(git status|grep "On branch"|cut -c11-100)
echo $currentBranch
git add .
git commit -m "trigger a visualization build for master branch"
git push origin
cd ..
rm -rf xdmVisualization
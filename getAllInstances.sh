. ~/bin/setenv.sh preprod
echo ----------------------------------- > ~/data/awsUtils/instances.dat
echo preprod:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo preprod:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

. ~/bin/setenv.sh prod
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
echo prod:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo prod:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

. ~/bin/setenv.sh gio
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
echo gio:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo gio:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

. ~/bin/setenv.sh sersol-dev
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
echo sersol-dev:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo sersol-dev:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

. ~/bin/setenv.sh sersol-stage
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
echo sersol-stage:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo sersol-stage:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

. ~/bin/setenv.sh sersol-prod
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
echo sersol-prod:us-east-1 >> ~/data/awsUtils/instances.dat
echo ----------------------------------- >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-east-1 --output text >> ~/data/awsUtils/instances.dat
echo sersol-prod:us-west-2 >> ~/data/awsUtils/instances.dat
aws ec2 describe-instances --region us-west-2 --output text >> ~/data/awsUtils/instances.dat

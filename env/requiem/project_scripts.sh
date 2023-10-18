#!bin/zsh

# Start the Data Requiem local API
function start_api() {
    cd ~/Documents/Development/requiem/services/requiem-api/
    poetry run uvicorn --app-dir src --reload --port 5000 app.main:app
}

# Start the Data Requiem local UI
function start_ui() {
    cd ~/Documents/Development/requiem/services/requiem-ui/
    yarn dev
}

function generate_requiem_models() {
    cd ~/Documents/Development/requiem/libraries/models-py/scripts/
    poetry run sh scripts/generate.sh
}

function secretsyml() {
    $EDITOR /etc/requiem/secrets.yml
}

function settingsyml() {
    $EDITOR /etc/requiem/settings.yml
}

export RQ_EC2_NAME="jarmendariz-dev" # replace with your instance name
export RQ_EC2_PEM="~/.ssh/jarmendariz-macbookpro.pem" # replace with your .pem name

function rq::ec2::start() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Starting EC2 instance $instance_name"
    aws ec2 describe-instances \
        --filters "Name=tag:Name,Values=$instance_name" \
 --query "Reservations[0].Instances[0].InstanceId" | \
 xargs -I {} aws ec2 start-instances \
 --instance-ids {}
}

function rq::ec2::stop() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Stopping EC2 instance $instance_name"
    aws ec2 describe-instances \
        --filters "Name=tag:Name,Values=$instance_name" \
 --query "Reservations[0].Instances[0].InstanceId" | \
 xargs -I {} aws ec2 stop-instances \
 --instance-ids {}
}

function rq::ec2::status() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Checking status of EC2 instance $instance_name"
    aws ec2 describe-instances \
        --filters "Name=tag:Name,Values=$instance_name" \
 --query "Reservations[0].Instances[0].State.Name" \
 --output text
}

function rq::ec2::info() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Checking details of EC2 instance $instance_name"
    aws ec2 describe-instances \
        --filters "Name=tag:Name,Values=$instance_name"
}

function rq::ec2::ssh() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Connecting to EC2 instance $instance_name"
    ip=`aws ec2 describe-instances --filters "Name=tag:Name,Values=$instance_name" --query "Reservations[0].Instances[0].PublicIpAddress" --output text`
echo $ip
    ssh -i ~/.ssh/jarmendariz-macbookpro.pem ubuntu@$ip
}

function rq::ec2::docker_context() {
instance_name=${1:-$RQ_EC2_NAME}
echo "Setting up docker context to EC2 instance $instance_name"
    ip=`aws ec2 describe-instances --filters "Name=tag:Name,Values=$instance_name" --query "Reservations[0].Instances[0].PublicIpAddress" --output text`
docker context use default
docker context remove $instance_name || true
    docker context create $instance_name --docker host=ssh://ubuntu@$ip
docker context use $instance_name
}


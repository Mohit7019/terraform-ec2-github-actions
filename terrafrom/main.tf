terrafrom 
{ 
    backend "s3" {
        bucket = "terrafrom-state-mohit-gowda"
        key = "ec2/terrafrom.tf.state"
        region = "us-east-1"
        dynamodb_table = "terrafrom-locks"
        encrypt = true
    }
}

provider "aws"
{
    region = var.aws_region
    
}

resource "aws_instance" "ec2"
{
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
}

tags = {
    Name = "GitHub-Actions-EC2"
}

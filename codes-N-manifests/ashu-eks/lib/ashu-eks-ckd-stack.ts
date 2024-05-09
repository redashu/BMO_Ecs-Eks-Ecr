import * as cdk from 'aws-cdk-lib';
import { Construct } from 'constructs';
import * as ec2 from 'aws-cdk-lib/aws-ec2'
import * as iam from 'aws-cdk-lib/aws-iam'
// import * as sqs from 'aws-cdk-lib/aws-sqs';

export class AshuEksCkdStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // pointing existing pvc 
    const vpc = ec2.Vpc.fromVpcAttributes(this,'ashuexistingVpc',{
      vpcId: 'vpc-0613e72a46c8cb335',
      availabilityZones: ['us-east-1a','us-east-1b','us-east-1c'],
      publicSubnetIds: ['subnet-0ffbfed9bbfa3b0ee','subnet-09d3a6a43989df57c','subnet-0c9c5ffeeb6764a07']
    });
    // creating IAM role for EKS cluster -- control plane 
    const ashuEKSadminRole = new iam.Role(this,'ashueksadmin',{
      assumedBy: new iam.AccountRootPrincipal()
      
    });
    // creating EKS cluster 
  }
}

The Great Men Web Application
==================================================

Architecture
-----------
This includes:

* AWS CloudStar Java Spring Web Application
* Launched with ElasticBeanstalk environment 
* A simple Launch Configruation and Auto Scaling Group on a single t2.micro EC2 instance (want to keep everything free :D)
* A Route53 Alias Record to my own domain loganferrera.com which is pointed to the ElasticBeanstalk DNS name.
* Fully automated Code Pipeline that recieves inputs from this GitHub repository when changes are committed.

Note: 
This project is not meant to show off my AWS Architecting -- there is not much to show off here -- rather it is to help me improve my skills with html and css. 
I wanted to keep it as cheap as possible and as a result I did not implement any CloudWatch alarms or SNS notifications or any 
failover policies in case the website encounters an error and I am not able to manually fix it right away. 
(Even something simple like having Route53 check instance health automatically begins to cost quite a bit monthly).


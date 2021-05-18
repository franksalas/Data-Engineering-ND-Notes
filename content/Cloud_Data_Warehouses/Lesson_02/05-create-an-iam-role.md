# Section: Cdw
# Lesson: w`02
# 05 Create An Iam Role
## 2021-05-05
---

# Create an IAM Role
Here you will create an IAM role that you woll later attach to your Redshift cluster to enable your cluster to load data from Amazon S3 Bucket

1. once you have signed into the AWS management colsole, navigate to the IAM service dashboard
2. in the left nab panel, choose roles
3. create a role
4. in the **aws service** group as the trusted entity, and choose reshift service.
5. under **select your use case** choose **Redshift - customizable**, and then **Next: Permission.**
6. On the **attach permissions polices** page, search for and select the **AmazonS3ReadOnlyAccess** policy and then click on teh **NextL Tabs** abutton
7. Tags are optional Click on the **Next: Review** Button
8. For Role name, enter `myRedshiftrole`, and then choose **Create Role**
9. You will see a cyccess message when the new role will be created

![](https://video.udacity-data.com/topher/2021/March/605d4a73_screenshot-2021-03-26-at-8.08.09-am/screenshot-2021-03-26-at-8.08.09-am.png)

![](https://video.udacity-data.com/topher/2019/February/5c6c41c9_redshift-customizable/redshift-customizable.png)

![](https://video.udacity-data.com/topher/2019/February/5c6c41e2_s3policy/s3policy.png)

![](https://video.udacity-data.com/topher/2019/February/5c6c41fb_name-redshift-role/name-redshift-role.png)


![](https://video.udacity-data.com/topher/2021/March/605d4d33_screenshot-2021-03-26-at-8.24.15-am/screenshot-2021-03-26-at-8.24.15-am.png)
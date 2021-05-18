# Section: Cdw
# Lesson: 03
# 12 Redshift Etl Examples
## 2021-05-05
---

# Common prefix example

```bash
COPY target_table_rds FROM 's3:/bucket-lab/loc/spam.part'
CREDENTIALS 'aws_iam_role-arn:aws:iam::3453453535:role/dwhRole'
gzip Delimeter ';' REGION 'us-west-2';
```

![](https://i.imgur.com/WJ5y087.png)


## Manifest file example


![](https://i.imgur.com/BTGw8Hi.png)

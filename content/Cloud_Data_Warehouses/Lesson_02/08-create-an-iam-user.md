# Section: Cdw
# Lesson: 02
# 08 Create An Iam User
## 2021-05-05
---

<div class="_main--content-container--ILkoI"><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h1 id="create-an-iam-user">Create an IAM User</h1>
<p>Here, you'll create an IAM user that you will use to access your Redshift cluster.</p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol>
<li>Navigate to the <a target="_blank" href="https://console.aws.amazon.com/iam/">IAM console</a>. In the left navigation pane, choose <strong>Users</strong>, and click on the <strong>Add User</strong> button. It will launch a new wizard. </li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605db6d9_screenshot-2021-03-26-at-3.47.21-pm/screenshot-2021-03-26-at-3.47.21-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>IAM Users dashboard</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="2">
<li><strong>Set user details</strong><br> Enter a name for your user , say <em>airflow_redshift_user</em>, and choose <strong>Programmatic access</strong>. Then click on the <strong>Next: Permissions</strong> button.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c5aa6bd_user-specifications/user-specifications.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create IAM users → Set user details</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="3">
<li><p><strong>Set permissions</strong><br> Choose <strong>Attach existing policies directly</strong> option.</p>
<ul>
<li>Search for redshift and select <strong>AmazonRedshiftFullAccess</strong>. </li>
<li>Then, search for S3 and select <strong>AmazonS3ReadOnlyAccess</strong>. </li>
</ul>
<p>After selecting both policies, choose <strong>Next: Tags</strong>. Skip this page and choose <strong>Next: Review</strong>.</p>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c5aa7b7_redshift-policy/redshift-policy.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create IAM user → Set permissions → Select <em>AmazonRedshiftFullAccess</em></p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c5aa7bf_s3-policy/s3-policy.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create IAM user → Set permissions → Select <em> AmazonS3ReadOnlyAccess</em></p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="4">
<li><strong>Review</strong> your choices and finally click on the <strong>Create user</strong> button.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c5aa90a_review-user/review-user.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Review the new IAM user details</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="5">
<li><strong>Save your credentials!</strong><br> This is the only time you can view or download these credentials on AWS. Choose <strong>Download .csv</strong> to download these credentials and then save this file to a safe location. You'll need to copy and paste this <strong>Access key ID</strong> and <strong>Secret access key</strong> in the next step.</li>
</ol>
<blockquote>
<p>We <strong>strongly advise</strong> you to keep this  <strong>Access key ID</strong> and <strong>Secret access key</strong> closely guarded, including not putting them in a GitHub public repo, etc.</p>
</blockquote>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c5aa94b_credentials/credentials.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>User created successfully. <br><strong>Copy the Access key Is and Secret access key.</strong></p>
</div></div></div></div></div><span></span></div></div></div></div>
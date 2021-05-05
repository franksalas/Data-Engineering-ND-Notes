# Section: Cdw
# Lesson: 02
# 10 S3 Create A Bucket
## 2021-05-05
---

<div class="_main--content-container--ILkoI"><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Let's learn how to create a bucket in <a href="https://docs.aws.amazon.com/AmazonS3/latest/gsg/GetStartedWithS3.html" target="_blank">Amazon S3</a>, and view a few properties of an existing bucket. </p>
<h2 id="create-a-bucket">Create a Bucket</h2>
<ol>
<li>Navigate to the <a href="console.aws.amazon.com/s3/home" target="_blank">S3 dashboard</a>, and click on the <strong>Create bucket</strong> button. It will launch a new wizard.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe37ba_screenshot-2020-11-25-at-4.06.17-pm/screenshot-2020-11-25-at-4.06.17-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>S3 service → Buckets dashboard. <br>View all of the S3 buckets in your account <br><em>(S3 is a global service, not a region-specific). </em></p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><p>We create a bucket first, and later we upload files and folders to it. </p>
<ol start="2">
<li><strong>General configuration</strong><br> Provide the bucket-name and the region where you want to locate the bucket. The bucket name must be unique worldwide, and must not contain spaces or uppercase letters.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3a31_screenshot-2020-11-25-at-4.07.11-pm/screenshot-2020-11-25-at-4.07.11-pm.png" alt="" width="500px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a bucket - Provide general details</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="3">
<li><strong>Public Access settings</strong><br>
You can choose public visibility. Let's uncheck the <em>Block all public access</em> option. </li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3a6e_screenshot-2020-11-25-at-4.07.33-pm/screenshot-2020-11-25-at-4.07.33-pm.png" alt="" width="500px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a bucket - Make it public</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="4">
<li><strong>Bucket Versioning and Encryption</strong><br><ul>
<li>Bucket Versioning - Keep it disabled.</li>
<li>Encryption -  If enabled, it will encrypt the files being stored in the bucket.</li>
<li>Object Lock - If enables, it will prevent the files in the bucket from being deleted or modified.</li>
</ul>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3aab_screenshot-2020-11-25-at-4.07.54-pm/screenshot-2020-11-25-at-4.07.54-pm.png" alt="" width="500px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a bucket - Provide additional details</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><p>In the snapshots above, we have created a public bucket. Let's see <strong>how to upload files and folders to the bucket</strong>, and configure additional settings.</p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h2 id="upload-file-folders-to-the-bucket">Upload File/Folders to the Bucket</h2>
<p>From the <a target="_blank" href="console.aws.amazon.com/s3/home">S3 dashboard</a>, click on the name of the bucket you have created in the step above. </p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3ad2_screenshot-2020-11-25-at-4.12.35-pm/screenshot-2020-11-25-at-4.12.35-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Details of an existing bucket. Upload files/folders to this bucket.</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><p>In the snapshot above, it shows that the bucket is in the Region: <code>US East (Ohio) us-east-2</code>, and it has a unique Amazon resource name (ARN): <code>arn:aws:s3:::mtvbucket</code>. You can view more details of the bucket, in the tabs next to the bucket overview: <strong>Objects, Properties, Permissions, Metrics, 
Management,</strong> and <strong>Access points</strong>.  Leet's upload a sample file to the bucket:</p>
<ol>
<li>Click on the <strong>Upload</strong> button to upload files and folders into the current bucket. In the snapshot below, we have uploaded a <strong>Sample.txt</strong> file. </li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3e6d_screenshot-2020-11-25-at-4.52.03-pm/screenshot-2020-11-25-at-4.52.03-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>A sample file in the bucket</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="2">
<li>Click on the file name to view the file-specific details, as shown below.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe3ec1_screenshot-2020-11-25-at-4.53.35-pm/screenshot-2020-11-25-at-4.53.35-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Details of an individual file (object)</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h2 id="details-of-an-existing-bucket">Details of an Existing Bucket</h2>
<h3 id="1-properties">1. Properties</h3>
<p>There are several properties that you can set for S3 buckets, such as:</p>
<ul>
<li>Bucket Versioning - Allows you to keep multiple versions of an object in the same bucket. </li>
<li>Static website hosting - Mark if the bucket is used to host a website. S3 is a very cost-effective and cheap solution for serving up static web content.</li>
<li>Requester pays - Make the requester pays for requests and data transfer costs. </li>
<li>Server access logging - Log requests for access to your bucket.</li>
<li><strong>Permissions</strong></li>
</ul>
<p>It shows who has access to the S3 bucket, and who has access to the data within the bucket. In the example snapshots above, the bucket is public, meaning anyone can access it. Here, we can write an access policy (in JSON format) to provides access to the objects stored in the bucket.</p>
<h3 id="2-metrics">2. Metrics</h3>
<p>View the metrics for usage, request, and data transfer activity within your bucket, such as, total bucket size, total number of objects, and storage class analysis. </p>
<h3 id="3-management">3. Management</h3>
<p>It allows you to create life cycle rules to help manage your objects. It includes rules such as transitioning objects to another storage class, archiving them, or deleting them after a specified period of time.</p>
<h3 id="4-access-points">4. Access points</h3>
<p>Here, you can create access endpoints for sharing the bucket at scale. Using an endpoint, you can perform all regular operations on the bucket.</p>
</div></div><span></span></div></div></div></div>
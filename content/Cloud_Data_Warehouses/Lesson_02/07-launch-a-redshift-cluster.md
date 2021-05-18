# Section: Cdw
# Lesson: 02
# 07 Launch A Redshift Cluster
## 2021-05-05
---

<div class="_main--content-container--ILkoI"><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h1 id="launch-a-redshift-cluster">Launch a Redshift Cluster</h1>
<blockquote>
<p><strong>WARNING:</strong> The cluster that you are about to launch will be live, and you will be charged the standard Amazon Redshift usage fees for the cluster until you delete it. <strong>Make sure to delete your cluster each time you're finished working to avoid large, unexpected costs for yourself.</strong> Instructions on deleting your cluster are included on the last page in this lesson. You can always launch a new cluster, so don't leave your Redshift cluster running overnight or throughout the week if you don't need to.</p>
</blockquote>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol>
<li>Sign in to the AWS Management Console and open the Amazon Redshift console at <a target="_blank" href="https://console.aws.amazon.com/redshift/">https://console.aws.amazon.com/redshift/</a>.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d8c81_screenshot-2021-03-26-at-12.55.05-pm/screenshot-2021-03-26-at-12.55.05-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Navigate to a new service</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="2">
<li>On the Amazon Redshift Dashboard, choose <strong>Create cluster</strong>. It will launch the <em>Create cluster</em> wizard.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d8d28_screenshot-2021-03-26-at-12.57.40-pm/screenshot-2021-03-26-at-12.57.40-pm.png" alt="Amazon Redshift dashboard" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Amazon Redshift dashboard</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="3">
<li><strong>Cluster configuration</strong><br>Provide a unique identifier, such as <code>redshift-cluster-1</code>, and choose the <strong>Free trial</strong> option.  It will automatically, choose the following configuration:<ul>
<li>1 node of <code>dc2.large</code> hardware type. It is a high performance with fixed local SSD storage</li>
<li>2 vCPUs</li>
<li>160 GB storage capacity</li>
</ul>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9461_screenshot-2021-03-26-at-1.28.49-pm/screenshot-2021-03-26-at-1.28.49-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Cluster's basic configuration</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="4">
<li><strong>Database configurations</strong><br>
A few fields will be already filled up by default. Ensure to have to the following values:</li>
</ol>
<center>

<div class="index-module--table-responsive--1zG6k"><table class="index-module--table--8j68C index-module--table-striped--3HHC-">
<thead>
<tr>
<th><strong>Field</strong></th>
<th><strong>Value</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Database name</td>
<td><code>dev</code></td>
</tr>
<tr>
<td>Database port</td>
<td><code>5439</code></td>
</tr>
<tr>
<td>Master user name</td>
<td><code>awsuser</code></td>
</tr>
<tr>
<td>Master user password</td>
<td>Enter a password of your choice</td>
</tr>
</tbody>
</table>
</div><p></p></center><p></p>
<blockquote>
<p><strong>Please note:</strong> We <strong>strongly advise</strong> you to keep these passwords closely guarded, including not putting them in your GitHub public repo, etc. </p>
</blockquote>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9600_screenshot-2021-03-26-at-1.06.48-pm/screenshot-2021-03-26-at-1.06.48-pm.png" alt="Database configurations" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Database configurations</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="5">
<li><strong>Cluster permissions (optional)</strong><br>
Choose the IAM role created earlier, <em>myRedshiftRole</em>, from the drop-down and click on the <em>Associate IAM role</em> button.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d973e_screenshot-2021-03-26-at-1.07.07-pm/screenshot-2021-03-26-at-1.07.07-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Cluster permissions </p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="6">
<li><strong>Additional configurations</strong><br>
Toggle the button to turn off the "use defaults" feature, and expand the <strong>Network and security</strong> section. Choose the following values:</li>
</ol>
 <center>

<div class="index-module--table-responsive--1zG6k"><table class="index-module--table--8j68C index-module--table-striped--3HHC-">
<thead>
<tr>
<th><strong>Field</strong></th>
<th><strong>Value</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Virtual private cloud (VPC)</td>
<td>Default VPC<br> If you are not able to view/select the default VPC, <br>refer to the resolution given <a target="_blank" href="https://aws.amazon.com/premiumsupport/knowledge-center/vpc-redshift-associate/">here</a>. <br>You will have to <a target="_blank" href="https://docs.aws.amazon.com/redshift/latest/mgmt/managing-cluster-subnet-group-console.html#create-cluster-subnet-group">create a cluster subnet group</a>. <br><em>(It's easy, see the snapshots below)</em></td>
</tr>
<tr>
<td>VPC security groups</td>
<td>Choose the <em>redshift_security_group</em> created earlier.</td>
</tr>
<tr>
<td>Cluster subnet group</td>
<td>Choose the default<br>It is the one you have just created.</td>
</tr>
<tr>
<td>Availability Zone</td>
<td>No preference</td>
</tr>
<tr>
<td>Enhanced VPC routing</td>
<td>Disabled</td>
</tr>
<tr>
<td>Publicly accessible</td>
<td>Enable</td>
</tr>
</tbody>
</table>
</div><p></p></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leave the rest of the values as default.<p></p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9ae2_screenshot-2021-03-26-at-1.20.29-pm/screenshot-2021-03-26-at-1.20.29-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Network and security section</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9a3a_screenshot-2021-03-26-at-1.13.54-pm/screenshot-2021-03-26-at-1.13.54-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Amazon Redshift →     Configurations →     Subnet groups</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9bb4_screenshot-2021-03-26-at-1.16.21-pm/screenshot-2021-03-26-at-1.16.21-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a cluster subnet group from a default VPC</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="6">
<li>Review your Cluster configuration and click on the <strong>Create cluster</strong> button at the bottom. It will take a few minutes to finish and show you a <strong>Complete</strong> status.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9ce9_screenshot-2021-03-26-at-1.56.22-pm/screenshot-2021-03-26-at-1.56.22-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Success message/Complete status</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="8">
<li>Click on the <strong>Clusters</strong> menu item from the left navigation pane, and look at the cluster that you just launched. Make sure that the <strong>Status</strong> is <strong>Available</strong> before you try to connect to the database later. You can expect this to take 5-10 minutes.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d9e10_screenshot-2021-03-26-at-2.10.06-pm/screenshot-2021-03-26-at-2.10.06-pm.png" alt="" width="700px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Cluster is ready to be connectedd</p>
</div></div></div></div></div><span></span></div></div></div></div>
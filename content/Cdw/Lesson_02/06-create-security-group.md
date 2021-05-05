# Section: Cdw
# Lesson: 02
# 06 Create Security Group
## 2021-05-05
---

# Create Security Group

<div class="_main--content-container--ILkoI"><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h1 id="create-security-group">Create Security Group</h1>
<p>Here, you'll create a security group you will later use to authorize access to your Redshift cluster.</p>
<blockquote>
<p>A security group will act as firewall rules for your Redshift cluster to control inbound and outbound traffic. </p>
</blockquote>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol>
<li>Navigate to the <a target="_blank" href="https://console.aws.amazon.com/ec2">EC2 service</a></li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d4e81_screenshot-2021-03-26-at-8.29.42-am/screenshot-2021-03-26-at-8.29.42-am.png" alt="" width="700px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Navigate to any service</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="2">
<li>Under <strong>Network and Security</strong> in the left navigation pane, select <strong>Security Groups</strong>. Click the <strong>Create Security Group</strong> button to launch a wizard.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d4f21_screenshot-2021-03-26-at-8.33.27-am/screenshot-2021-03-26-at-8.33.27-am.png" alt="" width="700px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a new security group</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="3">
<li>In the <em>Create security group</em> wizard, enter the basic details.</li>
</ol>
<center>

<div class="index-module--table-responsive--1zG6k"><table class="index-module--table--8j68C index-module--table-striped--3HHC-">
<thead>
<tr>
<th><strong>Section</strong></th>
<th><strong>Field</strong></th>
<th><strong>Value</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Basic details</td>
<td>Security group name</td>
<td><code>redshift_security_group</code></td>
</tr>
<tr>
<td></td>
<td>Description</td>
<td><code>Authorise redshift cluster access</code></td>
</tr>
<tr>
<td></td>
<td>VPC</td>
<td>Choose the default VPC<br>It is a VPC in a default region, <br>and has a public subnet in each Availability Zone.<br>If a default VPC doesn't show up, <a target="_blank" href="https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-vpc">create a default VPC</a></td>
</tr>
</tbody>
</table>
</div><center></center></center></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/January/600695f3_screenshot-2021-01-19-at-12.58.53-pm/screenshot-2021-01-19-at-12.58.53-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Create a default VPC, if not available already</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/January/6006d5c6_screenshot-2021-01-19-at-6.20.22-pm/screenshot-2021-01-19-at-6.20.22-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Info about a default VPC</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d552c_screenshot-2021-03-26-at-8.58.11-am/screenshot-2021-03-26-at-8.58.11-am.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Basic details</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="4">
<li>In the <em>Inbound rules</em> section, click on <strong>Add Rule</strong> and enter the following values:</li>
</ol>
<center>

<div class="index-module--table-responsive--1zG6k"><table class="index-module--table--8j68C index-module--table-striped--3HHC-">
<thead>
<tr>
<th><strong>Section</strong></th>
<th><strong>Field</strong></th>
<th><strong>Value</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Inbound rules</td>
<td>Type</td>
<td>Custom TCP Rule</td>
</tr>
<tr>
<td></td>
<td>Protocol</td>
<td>TCP</td>
</tr>
<tr>
<td></td>
<td>Port range</td>
<td>5439<br>The default port for Amazon Redshift is 5439, <br>but your port might be different.</td>
</tr>
<tr>
<td></td>
<td>Source type</td>
<td>Custom</td>
</tr>
<tr>
<td></td>
<td>Source</td>
<td><code>0.0.0.0/0</code><br><em>(Anywhere in the world)</em></td>
</tr>
</tbody>
</table>
</div><p></p></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p></p>
<blockquote>
<p><strong>Important: Using <code>0.0.0.0/0</code> is not recommended for anything other than demonstration purposes because it allows access from any computer on the internet.</strong> In a real environment, you would create inbound rules based on your own network settings.</p>
</blockquote>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d5555_screenshot-2021-03-26-at-8.58.03-am/screenshot-2021-03-26-at-8.58.03-am.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Inbound rules</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="5">
<li>Outbound rules allow traffic to anywhere by default.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d559a_screenshot-2021-03-26-at-8.58.46-am/screenshot-2021-03-26-at-8.58.46-am.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Outbound rules</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="6">
<li>Click on the <em>Create security group</em> button at the bottom. You will see a success message. </li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605d5641_screenshot-2021-03-26-at-9.03.54-am/screenshot-2021-03-26-at-9.03.54-am.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Details of a security group </p>
</div></div></div></div></div><span></span></div></div></div></div>
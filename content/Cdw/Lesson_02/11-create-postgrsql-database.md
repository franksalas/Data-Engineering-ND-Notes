# Section: Cdw
# Lesson: 02
# 11 Create Postgrsql Database
## 2021-05-05
---

<div class="_main--content-container--ILkoI"><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><p>According to AWS:</p>
<blockquote>
<p><a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html" target="_blank">Amazon RDS</a> is a relational database service that manages common database administration tasks, resizes automatically, and is cost-friendly.  </p>
</blockquote>
<p>Let's see how to create a PostgresSQL database, and view the details of an existing database.</p>
<h2 id="rds-dashboard">RDS Dashboard</h2>
<p>Navigate to the <a href="https://console.aws.amazon.com/rds/home" target="_blank">RDS dashboard</a>. 
It shows the database-resources summary, such as the count of database instances, the health of the database service, reserved instances, snapshots. You can also view the portion of the allocated storage. You can launch the <strong>Create database</strong> wizard from here.</p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2020/November/5fbe80f9_screenshot-2020-11-25-at-8.43.57-pm/screenshot-2020-11-25-at-8.43.57-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>RDS dashboard</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><h2 id="create-a-postgresql-db">Create a PostgreSQL DB</h2>
<p>If you haven't launched already, choose the <strong>Databases</strong> menu item on the left navigation pane, and click on the <strong>Create Database</strong> button.</p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c6ce3ce_02-rds-postgres/02-rds-postgres.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Amazon RDS service → Databases dashboard</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol>
<li><p><strong>Choose a database creation method</strong><br>AWS provides two options to choose from:</p>
<ul>
<li><strong>Standard create</strong> - You have set all of the configuration options, including ones for availability, security, backups, and maintenance.</li>
<li><strong>Easy create</strong> - You use the industry best-practice configurations. All configuration options, except the Encryption and VPC details, can be changed after the database is created.</li>
</ul>
<p>The steps below will show you the <strong>Standard create</strong> fields/options.</p>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dcfee_screenshot-2021-03-26-at-5.42.42-pm/screenshot-2021-03-26-at-5.42.42-pm.png" alt="" width="500px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Choose a database creation method</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="2">
<li><strong>Engine options</strong><br>Select <strong>PostgreSQL</strong> option. It will pick up the latest stable release by default, though you can select a version of your choice as well. </li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dd063_screenshot-2021-03-26-at-5.44.33-pm/screenshot-2021-03-26-at-5.44.33-pm.png" alt="" width="500px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Engine options</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="3">
<li><strong> Templates</strong><br>
Use either the <strong>RDS Free Tier </strong>or <strong>Dev/Test </strong>template. On free-tier resources, you can develop and test applications to gain hands-on experience with Amazon RDS.<br>The free tier will offer you 750 hrs of Amazon RDS in a Single-AZ <code>db.t2.micro</code> Instance, 20 GB of General Purpose Storage (SSD), and 20 GB for automated backup storage and any user-initiated DB Snapshots.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dd3b4_screenshot-2021-03-26-at-5.57.51-pm/screenshot-2021-03-26-at-5.57.51-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Templates</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="4">
<li><p><strong>Settings</strong><br>
Provide a <em>DB instance identifier</em>, such as <em>postgreSQL-test</em>, and master credentials (username and a password). Take note of this password, as it is useful for future steps. You will be able to find this password and change it later in the console.  </p>
<p>Alternatively, you can auto-generate the password. In this case, AWS will show you the password once you create the database successfully. </p>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dd755_screenshot-2021-03-26-at-6.02.43-pm/screenshot-2021-03-26-at-6.02.43-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Settings</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="5">
<li><strong>DB instance class</strong><br>
The options here present the options for processing power and memory requirements. Since we have selected the Free tier option above, the only available option is <code>db.t2.micro</code>, which has 1 vCPU, and 1 GiB RAM.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dd83d_screenshot-2021-03-26-at-6.18.41-pm/screenshot-2021-03-26-at-6.18.41-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>DB instance class</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="6">
<li><strong> Storage</strong> and <strong>Availability &amp; durability</strong><br>
Choose the default values for both these sections. It will offer you 20 GiB SSD storage, expandable up to 1000 GiB, by default. 
For <em>Availability &amp; durability</em> section, it will not offer us to have a Multi-AZ deployment.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605dd953_screenshot-2021-03-26-at-6.23.29-pm/screenshot-2021-03-26-at-6.23.29-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Storage and Availability &amp; durability</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="7">
<li><strong> Connectivity</strong> <br>
Choose/ensure the following values:</li>
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
<td>VPC</td>
<td>Default VPC</td>
</tr>
<tr>
<td>Subnet group</td>
<td>default</td>
</tr>
<tr>
<td>Public access</td>
<td>YES<br>Once you get familiar, choose NO next time.<br>You will need additional configuration to do so.</td>
</tr>
<tr>
<td>VPC security group</td>
<td>Either choose default or <br>create a new one</td>
</tr>
<tr>
<td>Availability Zone</td>
<td>No preferencce</td>
</tr>
<tr>
<td>Database port</td>
<td><code>5432</code> (default)</td>
</tr>
</tbody>
</table>
</div><p></p></center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Leave the values default for the Database authentication section.</strong><p></p>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605ddc0f_screenshot-2021-03-26-at-6.35.07-pm/screenshot-2021-03-26-at-6.35.07-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Connectivity</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="8">
<li><strong>Additional configuration</strong><br><ul>
<li>Provide the database name. If you do not specify a database name, Amazon RDS will not create a database.</li>
<li>In the <em>Backup</em> section and select <em>1 day</em>, since this is for demonstration purposes.</li>
<li>Leave the default values for the rest and click on the <strong>Create database</strong> button on the bottom right.</li>
</ul>
</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605de3d6_screenshot-2021-03-26-at-7.01.27-pm/screenshot-2021-03-26-at-7.01.27-pm.png" alt="" width="600px"></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605de3f0_screenshot-2021-03-26-at-7.01.40-pm/screenshot-2021-03-26-at-7.01.40-pm.png" alt="" width="600px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Additional configuration</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><ol start="9">
<li><strong>Success</strong> <br>You should land on a confirmation page. It will take a few minutes to launch the database. Wait a few minutes for the status to change to <strong>Available</strong>.</li>
</ol>
</div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2019/February/5c6ce3d4_11-rds-postgres/11-rds-postgres.png" alt="" width="700px"></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div><div role="button" tabindex="0" aria-label="Show Image Fullscreen" class="image-atom--image-atom--1XDdu"><div class="image-atom-content--CDPca"><div class="image-and-annotations-container--1U01s"><img class="image--26lOQ" src="https://video.udacity-data.com/topher/2021/March/605de596_screenshot-2021-03-26-at-7.15.31-pm/screenshot-2021-03-26-at-7.15.31-pm.png" alt="" width="700px"></div><div class="caption--2IK-Y"><div class="index-module--markdown--2MdcR ureact-markdown "><p>Wait a few minutes for the status to change to <strong>Available</strong>.</p>
</div></div></div></div></div><span></span></div></div></div><div><div class="index--container--2OwOl"><div class="index--atom--lmAIo layout--content--3Smmq"><div class="ltr"><div class="index-module--markdown--2MdcR ureact-markdown "><blockquote>
<p>For each database in the list above,  you can see the Region and availability zone it's running in, the size, and the status that it's up and running. You can also see the percentage utilization of the underlying CPU.   </p>
</blockquote>
</div></div><span></span></div></div></div></div>
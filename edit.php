<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>View Account Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"> 
    </head>
    <body>
        <div class="header">
            <div class="inner-header">
                <div class="logo"> 
                    <a href="index.html">TSF Bank
                    </a>
                </div>
                <div class="header-link">
                    <a href="">About
                    </a>
                </div>
                    
            </div>
        </div>
        <div class="content">
            <div class="banner-picture">
                <div class="inner-banner-image">
                    
                    <center>
                    <div class="banner_content">
                    <h2>Customer Details</h2>
                    <form action="transfer.php" method="POST">
	<?php
	$id=$_GET['id'];
	$con=mysqli_connect("localhost", "root", "","banking","3308");
	$query="select * from customers where c_id='$id'";
	$result=mysqli_query($con,$query);
	if($result) {
		while($row=mysqli_fetch_array($result))
		{
                                        $dbid=$row['c_id'];
					$dbname=$row['name'];
					$dbemail=$row['email'];
					$dbaccount=$row['account_no'];
					$dbcur_balance=$row['cur_balance'];
	?>
        <center>
            
            <table border="2" class="table_size">
		
		<tr>
			<td>Customer Name</td>
			<td><?php echo $dbname; ?></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><?php echo $dbemail; ?></td>
		</tr>
		<tr>
			<td>Account No.</td>
			<td><?php echo $dbaccount; ?></td>
		</tr>
                <tr>
			<td>Current Balance</td>
			<td><?php echo $dbcur_balance; ?></td>
		</tr>
		<?php

                }
                    }
                ?>
                </table>
            <div>
            
                <input type="submit" value="Transfer Money" class="button">
                <input type="hidden" name="h" value="<?php echo $id ?>">
            
            </div>
                </center>
                    </form>   
                        
                    </div>
                    </center>
                </div>
            </div>
            </div>
        <div class="footer">
            <div class="container">
                <p class="content_center" >
                     © Bhagyashree Bhagyalaxmi | GRIPJUL21 | Contact Us: +91 96000 00000
                </p>
            </div>
        </div>
    </body>
</html>


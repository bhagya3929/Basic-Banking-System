<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>View All Customers</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
        <style>
            table{
                width: 70%;
                text-align: center;
                opacity: 0.95;
                color: black;
            }
            tr{
                width: 35%;
            }
        </style>
        
    </head>
    <body class="banner-picture2">
        <div class="header">
            <div class="inner-header">
                <div class="logo">
                    <a href="index.html" style="font: " >TSF Bank
                    </a>
                </div>
                <div class="header-link">
                    <a href="">About
                    </a>
                </div>
                   
            </div>
        </div>
        <center>
            <h1 style="color: white" >
                All Customers
            </h1>
        </center>
    <div class="display_table">
            
            <div class="center_div">
                <div class="table-responsive">
        <center>
        <form>
            
            <table border="1" style="background: white">
		<tr style="background: blueviolet;color: white;font-size: 18px; ">
			<td>ID</td>
			<td>Name</td>
			<td>Email</td>
			<td>Account No.</td>
			<td>Current Balance</td>
                        <td>Operation</td>
		</tr>
		<tr>
        <?php
        $con=mysqli_connect("localhost", "root", "","banking","3308");
			$query="select * from customers";
			$result=mysqli_query($con,$query);
			if($result) {
				while ($row=mysqli_fetch_array($result))
				 {
					$dbid=$row['c_id'];
					$dbname=$row['name'];
					$dbemail=$row['email'];
					$dbaccount=$row['account_no'];
					$dbcur_balance=$row['cur_balance'];
					//$t = date("Y-m-d H:i:s");
        ?>
                                        <td><?php echo $dbid; ?></td>
					<td><?php echo $dbname; ?></td>
					<td><?php echo $dbemail; ?></td>
					<td><?php echo $dbaccount; ?></td>
					<td><?php echo $dbcur_balance; ?></td>
					
                                        <td><a href="edit.php?id=<?php echo $dbid; ?>" style="color: blue ">
                                                edit
                                            </a> </td>
				</tr>
                                <?php
				}
			}
		?>
        </table>
        </form>
        </center>
                </div>
            </div>
        </div>
        <footer class="footer1" >
            <div class="container">
                <p class="content_center" >
                    © Bhagyashree Bhagyalaxmi | GRIPJUL21 | Contact Us: +91 96000 00000</p>
            </div>
        </footer>
    </body>
</html>

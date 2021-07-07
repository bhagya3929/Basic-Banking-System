<!DOCTYPE html>
<html>
    <head>
        <title>Transaction</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"> 
    </head>
    <body style="background-image: url('img/back.jpg');">
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
        <div>
            <?php
                $s_id=$_REQUEST["s_id"];
                $s_name=$_REQUEST["s_name"];
                $s_bal=$_REQUEST["s_bal"];
                $s_account=$_REQUEST["s_account"];
                $amount=$_REQUEST["amount"];
                $r_id=$_REQUEST["r_id"];

                if($amount>$s_bal)
                {
                    echo "Transaction denied due to insufficient amount!";
                }
                else 
                {
                    $con=mysqli_connect("localhost", "root", "","banking","3308");
                    $query="select * from customers where c_id='$r_id'";
    
                    $result=mysqli_query($con,$query);
			if($result) 
                        {
                                
				while ($row=mysqli_fetch_array($result))
				{
                                        $r_name = $row['name'];
					$r_account=$row['account_no'];
					$r_bal=$row['cur_balance'];
                                   
                                
                $s_bal = $s_bal - $amount;
                $r_bal = $r_bal + $amount;
    
                $up_query1="update customers set cur_balance = '$s_bal' where c_id = '$s_id'";
                $up_query2="update customers set cur_balance = '$r_bal' where c_id = '$r_id'";
                date_default_timezone_set("Asia/Kolkata");
                $t = date("Y-m-d H:i:s");
    
                $in_query1 = "insert into  transaction (sender_id, sender_account, receiver_id, receiver_account, amount, transfer_time)
                values ('$s_id','$s_account','$r_id', '$r_account', '$amount', '$t')";

    if (mysqli_query($con,$up_query1)) 
    {
	if(mysqli_query($con,$up_query2))
        {
            if(mysqli_query($con,$in_query1))
            {
                ?>
                <center>
                <div class="display_table">
                <div class="center_div">
                <div class="table-responsive">
                <a href="#" >
                    <img src="img/right.jpeg" height="15%" width="15%" alt="" class="thumbnail" style="margin-right: 30px">
                    <div class="caption"><br><br>
                <h2>Done!</h2>
                <h2>Transaction is successful!</h2>
                <center>
                <table style="background: wheat;color: blue;padding: 10px;margin-bottom: 20px; text-align: center" border="1">
                    <tr style="padding: 5px">
                        <td>Sender Name</td>
                        <td><?php echo "$s_name";?></td>
                    </tr>
                    <tr style="padding: 5px">
                        <td>Sender Account No.</td>
                        <td><?php echo "$s_account";?></td>
                    </tr>
                    <tr style="padding: 5px">
                        <td>Receiver Name</td>
                        <td><?php echo "$r_name";?></td>
                    </tr>
                    <tr style="padding: 5px">
                        <td>Receiver Account No.</td>
                        <td><?php echo "$r_account";?></td>
                    </tr>
                    <tr style="padding: 5px">
                        <td>Transfer Amount</td>
                        <td><?php echo "Rs." . "$amount";?></td>
                    </tr>
                    <tr style="padding: 5px">
                        <td>Transfer Time</td>
                        <td><?php echo "$t";?></td>
                    </tr>
                    
                </table>
                </center>
                <u><h4 style="margin-bottom: 70px"><a href="index.html" style="color: yellow">Click here to go to Home Page</a></h4></u>
                </div>
                </a>
                </div>
                </div>
                </div>
                </center>
                
                <?php
            }
            else 
            {
                echo "Transaction denied!";
            }
        }
        else 
        {
            echo "Transaction denied!";
        }
    }
    else 
    {
	echo "Transaction denied!";
    }
                                }
                        }
		
}

?>
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

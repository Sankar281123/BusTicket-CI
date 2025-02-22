<html lang="en" moznomarginboxes mozdisallowselectionprint>
<head><!-- Log on to codeastro.com for more projects -->
    <title>Ticket Sales Report</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/laporan.css')?>"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
		<!--
		CSS
		============================================= -->
		<?php $this->load->view('frontend/include/base_css'); ?>
</head>
<body onload="window.print()" >
<div id="laporan">
<table align="center" style="width:900px; border-bottom:3px double;border-top:none;border-right:none;border-left:none;margin-top:5px;margin-bottom:20px;">
<!--<tr>
    <td><img src="<?php// echo base_url().'assets/img/kop_surat.png'?>"/></td>
</tr>-->
</table>

<table border="0" align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:0px;">
<tr>
    <td colspan="2" style="width:800px;paddin-left:20px;"><center><h4>TICKET SALE REPORT</h4></center><br/></td>
</tr>
                       
</table>
 
<table border="0" align="center" style="width:900px;border:none;">
        <tr>
            <th style="text-align:left"></th>
        </tr>
</table>
<table border="1" align="center" class="table table-bordered table-striped" style="width:900px;margin-bottom:20px;">
<thead>
<tr>
<th colspan="11" style="text-align:left;">Report From Date: <?php echo $mulai ?> to <?php echo $sampai ?> </th>
</tr>
    <tr>
        <th>Ticket Number</th>
        <th>Order</th>
        <th>Customer </th>
        <th>Age</th>
        <th>Seat</th>
        <th>Price</th>
    </tr>
</thead>
<tbody>
    <?php foreach ($laporan as $row) { ?>
    <tr>
        <td style="text-align:center;"><?php echo $row['kd_tiket'];?></td>
        <td style="padding-left:5px;"><?php echo $row['kd_order'];?></td>
        <td style="text-align:center;"><?php echo $row['nama_tiket'];?></td>
        <td style="text-align:center;"><?php echo $row['umur_tiket'];?></td>
        <td style="text-align:center;"><?php echo $row['kursi_tiket'];?></td>
        <td style="text-align:left;"><?php echo '₹'.number_format($row['harga_tiket']);?></td>
    </tr>
    <?php } ?>
</tbody>
<tfoot>

    <tr>
        <td colspan="5" style="text-align:right;"><b>Total: </b></td>
        <td style="text-align:left;"><b><?php echo '₹'.number_format($total);?></b></td>
    </tr>
</tfoot>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td></td>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <td align="right"> <?php echo date('d-M-Y')?></td>
    </tr>
    <tr>
        <td align="right"></td>
    </tr>
   
    <tr>
    <td><br/><br/></td>
    </tr>    
    <tr>
        <td align="right">( <?php echo $this->session->userdata('username_admin');?> )</td>
    </tr>
    <tr>
        <td align="center"></td>
    </tr>
</table>
<table align="center" style="width:800px; border:none;margin-top:5px;margin-bottom:20px;">
    <tr>
        <th><br/><br/></th>
    </tr>
    <tr>
        <th align="left"></th>
    </tr>
</table>
</div>
</body>
</html>
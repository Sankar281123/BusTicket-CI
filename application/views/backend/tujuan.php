<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?= $title ?></title>
    <!-- css -->
    <?php $this->load->view('backend/include/base_css'); ?>
  </head>
  <body id="page-top">
    <!-- navbar --><!-- Log on to codeastro.com for more projects -->
    <?php $this->load->view('backend/include/base_nav'); ?>
    <!-- Begin Page Content -->
    <div class="container-fluid">
      <h1 class="h5 text-gray-800">Destination/Terminal Management</h1>
      <!-- DataTales Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#ModalTujuan">
          Add Destination
          </button>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr align="center">
                  <th>#</th>
                  <th>Code</th>
                  <th>Destination City</th>
                  <th>Terminal Info</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php $i = 1 ; foreach ($tujuan as $row ) { ?>
                <tr>
                  <td><?= $i++; ?></td>
                  <td><?= $row['kd_tujuan']; ?></td>
                  <td><?= strtoupper($row['kd_des']); ?></td>
                  <td><?=  substr($row['kd_des'], 0, 15); ?></td>
                  <td align="center"><a href="<?= base_url('backend/rute/viewrute/'.$row['kd_tujuan']) ?>" class="btn btn-info">View</a></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
    </div><!-- Log on to codeastro.com for more projects -->
    <!-- /.container-fluid -->
  </div>
  <!-- End of Main Content -->
  <!-- Footer -->
  <?php $this->load->view('backend/include/base_footer'); ?>
  <!-- End of Footer -->
</div>
<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>
<!-- Modal -->
<div class="modal fade" id="ModalTujuan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Add Destination</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <form action="<?= base_url() ?>backend/rute/tambahtujuan" method="post" >
        <div class="form-group">
          <div class="form-label-group">
            <input type="text" id="tujuan" name="tujuan" class="form-control" placeholder="Destination" required="required" autofocus="autofocus">
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="text" id="terminal" name="terminal" class="form-control" placeholder="Info Terminal" required="required" autofocus="autofocus">
          </div>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button class="btn btn-success">Add</button>
      </div>
      </form>
    </div>
  </div>
</div>
</div>
<!-- js -->
<?php $this->load->view('backend/include/base_js'); ?>
</body>
</html>
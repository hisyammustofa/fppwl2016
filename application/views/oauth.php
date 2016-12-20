
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Komentar</title>
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="panel-body">
      <form class="form-horizontal" action="<?php echo base_url(); ?>feedback/tambah" enctype="multipart/form-data" method="post">
        <fieldset>
          <!-- Name input-->
          <div class="form-group">
            <label class="col-md-3 control-label" for="name">Nama</label>
            <div class="col-md-5">
            <input id="name" name="name" type="text" value="<?php echo $data_nama; ?>" class="form-control" readonly>
            </div>
          </div>

          <!-- Email input-->
          <div class="form-group">
            <label class="col-md-3 control-label" for="email">Your E-mail</label>
            <div class="col-md-5">
              <input id="email" name="email" type="text" value="<?php echo $data_email; ?>" class="form-control" readonly>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label" for="foto">Foto</label>
            <div class="col-md-5">
              <img src="<?php echo $data_foto; ?>" alt="">
              <input type="hidden" name="imgtesti" value="<?php echo $data_foto; ?>" />
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label" for="divisi">Divisi</label>
            <div class="col-md-5">
            <select class="form-control" name="divisi">
              <?php foreach ($divisi as $divi): ?>
              <option value="<?php echo $divi['id_divisi']; ?>"><?php echo $divi['nama_divisi']; ?></option>
              <?php endforeach;  ?>
            </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label" for="komentar">Komentar</label>
            <div class="col-md-5">
            <textarea class="form-control" name="komentar" id="komentar" rows="3" placeholder="berikan feedback anda"></textarea>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label" for="imagecaptcha"></label>
            <div class="col-md-5">
               <td><?=$img;?>&nbsp;<a href="#" onclick="parent.window.location.reload(true)">[refresh]</a></td>
                <?php if ($this->session->flashdata('message'))echo $this->session->flashdata('message');?>
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-3 control-label" for="captcha">Captcha</label>
            <div class="col-md-5">
              <input id="email" name="captcha" type="text" class="form-control" placeholder="Masukkan Captcha">
            </div>
          </div>

          <br />
          <!-- Form actions -->
          <div class="form-group">
            <div class="col-md-8 widget-right">
              <button type="submit" id="submit" name="submit" class="btn btn-info btn-md pull-right">Submit</button>
            </div>
          </div>
        </fieldset>
      </form>

      <div class="form-group">
        <div class="col-md-8 widget-right">
          <a href='?logout=true'><button class="btn btn-danger btn-md pull-left">Logout</button></a>
        </div>
      </div>
    </div>
  </body>
</html>

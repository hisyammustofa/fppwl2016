<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg><?php echo $form_title; ?></div>
					<div class="panel-body">
						<form class="form-horizontal" action="<?php echo base_url(); ?>admin/member/tambah" enctype="multipart/form-data" method="post">
							<fieldset>
								<!-- Name input-->
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Nama</label>
									<div class="col-md-9">
									<input id="name" name="name" type="text" placeholder="Nama Member" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="alamat">Alamat</label>
									<div class="col-md-9">
									<input id="name" name="alamat" type="text" placeholder="Alamat Member" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" telp="alamat">No Telp.</label>
									<div class="col-md-9">
									<input id="name" name="telp" type="text" placeholder="No Telp." class="form-control">
									</div>
								</div>

								<!-- Email input-->
								<div class="form-group">
									<label class="col-md-3 control-label" for="email">Your E-mail</label>
									<div class="col-md-9">
										<input id="email" name="email" type="text" placeholder="Your email" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="foto">Upload Foto</label>
									<div class="col-md-9">
										<div id="my-dropzone" class="dropzone"></div>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="divisi">Divisi</label>
									<div class="col-md-9">
									<select class="form-control" name="divisi">
										<?php foreach ($divisi as $divi): ?>
										<option value="<?php echo $divi['id_divisi'];?>"><?php echo $divi['nama_divisi']; ?></option>
										<?php endforeach;  ?>
									</select>
									</div>
								</div>

								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										<button type="submit" id="submit" name="submit" class="btn btn-default btn-md pull-right">Submit</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>

			

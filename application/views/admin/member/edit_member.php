<div class="panel panel-default">
					<div class="panel-heading"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg><?php echo $form_title; ?></div>
					<div class="panel-body">
						<form class="form-horizontal" action="<?php echo base_url(); ?>admin/member/edit" enctype="multipart/form-data" method="post">
							<fieldset>
								<!-- Name input-->
								<div class="form-group">
									<label class="col-md-3 control-label" for="name">Nama</label>
									<div class="col-md-9">
									<input id="name" name="name" type="text" class="form-control" value="<?php echo $detail['nama']; ?>">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="alamat">Alamat</label>
									<div class="col-md-9">
									<input id="name" name="alamat" type="text" placeholder="Alamat Member" class="form-control" value="<?php echo $detail['alamat']; ?>">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" telp="alamat">No Telp.</label>
									<div class="col-md-9">
									<input id="name" name="telp" type="text" placeholder="No Telp." class="form-control" value="<?php echo $detail['no_telp']; ?>">
									</div>
								</div>

								<!-- Email input-->
								<div class="form-group">
									<label class="col-md-3 control-label" for="email">Your E-mail</label>
									<div class="col-md-9">
										<input id="email" name="email" type="text" placeholder="Your email" class="form-control" value="<?php echo $detail['email']; ?>">
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="foto">Upload Foto</label>
									<div class="col-md-9">
										<input type="file" name="foto">
									</div>
                  <img src="<?php echo base_url(); ?>uploads/<?php echo $detail['foto']; ?>" alt="" height="84" width="84">
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" for="divisi">Divisi</label>
									<div class="col-md-9">
									<select class="form-control" name="divisi">
										<?php foreach ($divisi as $divi): ?>
                      <?php if ($divi['id_divisi'] === $detail['id_divisi']):?>
										    <option value="<?php echo $divi['id_divisi'];?>" selected="selected"><?php echo $divi['nama_divisi']; ?></option>
                      <?php else: ?>
                      <option value="<?php echo $divi['id_divisi'];?>"><?php echo $divi['nama_divisi']; ?></option>
                      <?php endif; ?>
                    <?php endforeach;  ?>
									</select>
									</div>
								</div>

								<div class="form-group">
									<input name="id_member" type="hidden" id="id_member" value="<?php echo $detail['id_member'] ?>">
								</div>
								<!-- Form actions -->
								<div class="form-group">
									<div class="col-md-12 widget-right">
										<button type="submit" class="btn btn-default btn-md pull-right">Submit</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>

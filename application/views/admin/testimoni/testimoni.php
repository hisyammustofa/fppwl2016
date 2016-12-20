
<div class="row">
			<div class="always">
			<div class="col-lg-12">
				<h2>Recent Feedbacks</h2>
			</div>

			<div class="col-md-12">
				<div class="form-group">
						<label>Selects</label>
						<select id="seleksi" name="nama_divisi" class="form-control">
							<?php foreach ($divisi as $divi):?>
							  <option value="<?php echo $divi['id_divisi']; ?>"><?php echo $divi['nama_divisi']; ?></option>
							<?php endforeach; ?>
						</select>
				</div>
			</div>
			</div>

			<?php foreach ($feedbacks as $komen):?>
				<div class="<?php echo $komen['nama_divisi']; ?>" style="display: none;">
				<?php if ($komen['polarity'] > 0): ?>
					<div class="col-md-12">
						<div class="alert bg-success" role="alert">
							from: <?php echo $komen['email_testimoner']; ?> <br /><br />
							<svg class="glyph stroked two-messages"><use xlink:href="#stroked-two-messages"></use></svg><?php echo $komen['respon_testimoner']; ?> <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
						</div>
					</div>
				<?php elseif($komen['polarity'] < 0): ?>
					<div class="col-md-12">
						<div class="alert bg-danger" role="alert">
							from: <?php echo $komen['email_testimoner']; ?> <br /><br /><?php echo $komen['nama_divisi'];?>
							<svg class="glyph stroked two-messages"><use xlink:href="#stroked-two-messages"></use></svg><?php echo $komen['respon_testimoner']; ?> <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
						</div>
					</div>
				<?php else: ?>
					<div class="col-md-12">
						<div class="alert bg-info" role="alert">
							from: <?php echo $komen['email_testimoner']; ?> <br /><br />
							<svg class="glyph stroked two-messages"><use xlink:href="#stroked-two-messages"></use></svg><?php echo $komen['respon_testimoner']; ?> <a href="#" class="pull-right"><span class="glyphicon glyphicon-remove"></span></a>
						</div>
					</div>
				<?php endif; ?>
				</div>
			<?php endforeach; ?>

		</div><!--/.row-->

		<div class="divisi testing" style="display: none;">
			testing
		</div>
		<script>
		var str;
			$( "select" )
			.change(function() {
				$(str).hide();
				str = ".";
				$( "select option:selected" ).each(function() {
					str += $( this ).text() + "";
				});
				str = str.replace(/\s+/g, '.');
				
			$(str).show();
			})
			.trigger( "change" );
		</script>

<div class="row">
			<div class="col-lg-12">
				<h2>Charts</h2>
			</div>

			<div class="col-md-11">
				<div class="form-group">
					<form class="" action="<?php echo base_url(); ?>admin/charts/" method="post">
						<label>Selects</label>
						<select id="seleksi" name="nama_divisi" class="form-control" onchange='this.form.submit()'>
							<?php foreach ($divisi as $divi):?>
								<?php if($divi['id_divisi'] == $terselek): ?>
							  <option value="<?php echo $divi['id_divisi']; ?>" selected><?php echo $divi['nama_divisi']; ?></option>
							<?php else: ?>
								<option value="<?php echo $divi['id_divisi']; ?>"><?php echo $divi['nama_divisi']; ?></option>
							<?php endif; ?>
							<?php endforeach; ?>
						</select>
					</form>
				</div>
			</div>

			<div class="col-md-11">
				<?php

				include("lib/gcharts.php");

				$gcharts = new Gcharts();

				$gcharts->load(array('graphic_type' => 'LineChart'));

				$gcharts->set_options(array(  'title' => 'Opinion Analisis',
													'vAxis' => array('title' => "Opinion Rangking",
																	 'titleTextStyle' => array('color' => 'red')),
													'hAxis' => array('title' => 'Bulan',
																	 'titleTextStyle' => array('color' => 'red'))));

				$array = array(
				array('Bulan', 'positif', 'negatif', 'netral'),
				);

				foreach ($opini as $val) {
					array_push($array, array($val['bulan'], (int)$val['positif'], (int)$val['negatif'], (int)$val['netral']));
				}

				echo $gcharts->generate($array);
				$gcharts->load(array('graphic_type' => 'BarChart'));

				$gcharts->set_options(array(  'title' => 'Opinion Analisis',
													'vAxis' => array('title' => "Opinion Rangking",
																	 'titleTextStyle' => array('color' => 'red')),
													'hAxis' => array('title' => 'Bulan',
																	 'titleTextStyle' => array('color' => 'red'))));

				$array = array(
				array('Bulan', 'positif', 'negatif', 'netral'),
				);

				foreach ($opini as $val) {
					array_push($array, array($val['bulan'], (int)$val['positif'], (int)$val['negatif'], (int)$val['netral']));
				}

				echo $gcharts->generate($array);


				?>
		</div>
</div>

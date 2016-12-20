<div class="row">
			<div class="col-lg-12">
				<h2>Charts</h2>
			</div>

			<div class="col-md-12">
				<?php

				include("lib/gcharts.php");

				$gcharts = new Gcharts();

				$gcharts->load(array('graphic_type' => 'LineChart'));

				$gcharts->set_options(array(  'title' => 'Teste Without Dashboard',
													'vAxis' => array('title' => "Opinion Rangking",
																	 'titleTextStyle' => array('color' => 'red')),
													'hAxis' => array('title' => 'Bulan',
																	 'titleTextStyle' => array('color' => 'red'))));

				$arr = array('Bulan');
				foreach ($divisi as $divi) {
					array_push($arr, $divi['nama_divisi']);
				}

				print_r($arr);

				$array = array(
				$arr,
				array('Januari',1000,400, 0, 0),
				array('Februari',1170,460, 0, 0),
				array('Maret',660,1120, 0, 0),
				array('April',0,540, 0, 0),
				array('Mei',0,1325, 0, 0));

				echo $gcharts->generate($array);

				print_r($array);
				echo "<br><br>";
				print_r($divisi);

				?>

				<?php
				$gcharts->load(array('graphic_type' => 'ColumnChart','dashboard_div' => TRUE, 'filter_div' => TRUE));


				$gcharts->set_options(array(  'title' => 'Teste With Dashboard',
													'vAxis' => array('title' => "Name",
																	 'titleTextStyle' => array('color' => 'red')),
													'hAxis' => array('title' => 'Donuts yang dimakan',
																	 'titleTextStyle' => array('color' => 'red'))));

				$gcharts->set_control_options(array('filterColumnLabel' => 'Donuts yang dimakan'));

				$array = array(array('Name','Donuts yang dimakan'),array('Michael',5),array('Elisa',7),array('Robert',3), array('John',2),array('Jessica',6),array('Aaron',1),array('Margareth',8));

				echo $gcharts->generate($array);


				?>
		</div>
</div>

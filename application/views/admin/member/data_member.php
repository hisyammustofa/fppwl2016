<div class="row">
	<div class="col-lg-12">
		<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large">Admin</div>
							<div class="text-muted">Data Member</div>
						</div>
					</div>
				</div>
			</div>
		<div class="panel panel-default">
			<div class="panel-body">
					<table data-toggle="table"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						<thead>
							<tr>
								<th data-field="nama" data-sortable="true">Nama</th>
						    <th data-field="alamat" data-sortable="true">Alamat</th>
						    <th data-field="no telepon"  data-sortable="true">No telepon</th>
						    <th data-field="email" data-sortable="true">Email</th>
								<th data-field="edit" data-sortable="true">Edit</th>
								<th data-field="remove" data-sortable="true">Remove</th>
						  </tr>
						</thead>
						<?php foreach ($member as $list): ?>
						<tr>
							<td><?php echo $list['nama']; ?></td>
							<td><?php echo $list['alamat']; ?></td>
							<td><?php echo $list['no_telp']; ?></td>
							<td><?php echo $list['email']; ?></td>
							<td><a href="<?php echo base_url(); ?>admin/member/edit/<?php echo $list['id_member']; ?>">EDIT</a></td>
							<td>Remove</td>
						</tr>
						<?php endforeach; ?>
					</table>
					<a href="<?php echo base_url(); ?>admin/member/tambah"><button type="insert" class="btn btn-primary">Insert New Member</button></a>
				</div>
		</div>
	</div>
</div>
</div>

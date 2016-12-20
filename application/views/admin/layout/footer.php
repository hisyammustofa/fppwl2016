
<script src="<?php echo base_url(); ?>assets/js/dropzone.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery-1.11..min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/chart.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/chart-data.js"></script>
<script src="<?php echo base_url(); ?>assets/js/easypiechart.js"></script>
<script src="<?php echo base_url(); ?>assets/js/easypiechart-data.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap-table.js"></script>

<script>
	Dropzone.autoDiscover = false;
	var myDropzone = new Dropzone("#my-poto", {
		url: "<?php echo site_url("admin/galeri/upload") ?>",
		acceptedFiles: "image/*",
		addRemoveLinks: true,
		removedfile: function(file) {
			var name = file.name;

			$.ajax({
				type: "post",
				url: "<?php echo base_url("admin/galeri/remove") ?>",
				data: { file: name },
				dataType: 'html'
			});
			var previewElement;
			return (previewElement = file.
				previewElement) != null ? (
				previewElement.parentNode.removeChild(
				file.previewElement)) : (void 0);
		},
		init: function() {
			var me = this;
			$.get("<?php echo site_url('admin/galeri/list_files') ?>", function(data) {
				  if (data.length > 0) {
						$.each(data, function(key, value) {
							var mockFile = value;
							me.emit("addedfile", mockFile);
							me.emit("thumbnail", mockFile, "<?php echo base_url(); ?>uploads/galeri/" + value.name);
							me.emit("complete", mockFile);
						});
					}
			});
		}
	});
</script>

<script>
 function readURL(input) {

	 if (input.files && input.files[0]) {
				var reader = new FileReader();

			reader.onload = function (e) {
					$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function(){
		readURL(this);
	});
</script>

<script>
	$('#calendar').datepicker({
	});

	!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){
					$(this).find('em:first').toggleClass("glyphicon-minus");
			});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
	}(window.jQuery);

	$(window).on('resize', function () {
		if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
	})
	$(window).on('resize', function () {
		if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
	})
</script>
</body>

</html>

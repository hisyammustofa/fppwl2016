<div class="footer">
			<div class="container">
				<div class="col-md-7 footer-left">
					<p>Template by <a href="http://w3layouts.com/">Queny</a></p>
				</div>
				<div class="col-md-5 footer-right text-left">
					<!--<p>Subscribe our email newsletter.</p>
					<form>
						<input type="text" value="Your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your email';}"><br /> <br />
						​<textarea id="txtArea" rows="5" cols="35" style="border-radius: 5px;"></textarea><br /> <br />
						<input type="submit" value="Submit" />
					</form>
					-->
				</div>
				<div class="clearfix"> </div>
			</div>
			<a href="#top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			<!---- start-smoth-scrolling---->
			<script type="text/javascript">
				$(function() {
				  $('a[href*=#]:not([href=#])').click(function() {
				    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

				      var target = $(this.hash);
				      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				      if (target.length) {
				        $('html,body').animate({
				          scrollTop: target.offset().top
				        }, 1000);
				        return false;
				      }
				    }
				  });
					});
			</script>
		</div>
	</body>
</html>

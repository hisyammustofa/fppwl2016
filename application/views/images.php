<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Images</title>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/dropzone.css">
  </head>
  <body>
    
    <form id="my-awesome-dropzone" class="dropzone" action="<?php echo base_url(); ?>images/upload" enctype="multipart/form-data">
      <div class="dropzone-previews"></div> <!-- this is were the previews should be shown. -->

  <!-- Now setup your input fields -->
      <input type="email" name="username" />
      <input type="password" name="password" />

      <button type="submit">Submit data and files!</button>
    </form>

    <script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/dropzone.js"></script>
    <script>
    Dropzone.options.myAwesomeDropzone = { // The camelized version of the ID of the form element

// The configuration we've talked about above
    autoProcessQueue: false,
    uploadMultiple: true,
    parallelUploads: 100,
    maxFiles: 100,

// The setting up of the dropzone
    init: function() {
    var myDropzone = this;

  // First change the button to actually tell Dropzone to process the queue.
    this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
    // Make sure that the form isn't actually being sent.
    e.preventDefault();
    e.stopPropagation();
    myDropzone.processQueue();
    });

  // Listen to the sendingmultiple event. In this case, it's the sendingmultiple event instead
  // of the sending event because uploadMultiple is set to true.
    this.on("sendingmultiple", function() {
      // Gets triggered when the form is actually being sent.
      // Hide the success button or the complete form.
    });
    this.on("successmultiple", function(files, response) {
    // Gets triggered when the files have successfully been sent.
    // Redirect user or notify of success.
    });
    this.on("errormultiple", function(files, response) {
        // Gets triggered when there was an error sending the files.
        // Maybe show form again, and notify user of error
      });
    }

    }
    </script>
  </body>
</html>

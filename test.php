<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Asu</title>
</head>
<body>
  <H1><FONT="TIMES ROMAN" FONT-COLOR="BLUE" > SELECT An subject:</H1>

  <select id ="dropDownId"> <!-- give an id to select box-->

      <option value="">Select Option</option>
      <option value="https://www.google.com/maps/dir//Bandung+Planning+Gallery,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.9102644,107.5747878,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e639d51dbb33:0x34de3eedb5e0444d!2m2!1d107.6098076!2d-6.9103509!3e0">Mobil</option>
      <option value="https://www.google.com/maps/dir//Bandung+Planning+Gallery,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.9102644,107.5747878,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e639d51dbb33:0x34de3eedb5e0444d!2m2!1d107.6098076!2d-6.9103509!3e3">Umum</option>

  </select>
  <br>
  <input class="SubmitButton" type="submit" name="SUBMITBUTTON"  value="Submit" style="font-size:20px; " />
</div>
<script src = "//code.jquery.com/jquery-3.0.0.min.js"></script> <!-- add jquery library-->
<script type = "text/javascript">
$('.SubmitButton').click(function(){ // on submit button click

    var urldata = $('#dropDownId :selected').val(); // get the selected  option value
    window.open(urldata) // open a new window. here you need to change the url according to your wish.
});

</script>
</body>
</html>
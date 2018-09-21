<div class="wrapper wrapper-content  animated fadeInRight">
<div class="col-lg-6">
  <div class="ibox">
    <div class="ibox-title">
    </div>

    <div class="ibox-content">

       <form role="form" method="POST" action="<?php ?>" enctype="multipart/formdata">
          <div class="form-group">
            <label>Greenbook</label>
            <select class="form-control m-b" name="kode_gb" id="kode_gb_1">
              <option value=""> Silahkan Pilih </option>
             <?php foreach ($greenbook as $key => $value) { ?>

                <option value="<?php echo $value['id']; ?>"> <?php echo $value['nama']; ?></option>';
              <?php } ?>
            </select>
          </div>

          <div class="form-group">
            <label>Group By</label>
            <select class="form-control m-b" name="kode_gb" id="group_by_1">
              <option value=""> Silahkan Pilih </option>
              <option value=1> Lender </option>
              <option value=2> Bluebook </option>
              <option value=3> Program </option>
              <option value=4> Kementerian/Lembaga </option>
              <option value=5> Sektor </option>
           
            </select>
          </div>
          <button id="submit_btn_1" class="btn btn-primary">Submit</button>
      
        </form>

        <div id="tabel_1"></div>
        <div id="tabel_1_1"></div>
        <div id="tabel_1_2"></div>


        
      

    </div>

  </div>
  
</div>

<div class="col-lg-6">

  <div class="ibox">
    <div class="ibox-title">
    </div>

    <div class="ibox-content">
      
      <form role="form" method="POST" action="<?php ?>" enctype="multipart/formdata">
          <div class="form-group">
            <label>Greenbook</label>
            <select class="form-control m-b" name="kode_gb" id="kode_gb_2">
              <option value=""> Silahkan Pilih </option>
               <?php foreach ($greenbook as $key => $value) { ?>

                <option value="<?php echo $value['id']; ?>"> <?php echo $value['nama']; ?></option>';
              <?php } ?> 
            </select>
          </div>

          <div class="form-group">
            <label>Group By</label>
            <select class="form-control m-b" name="kode_gb" id="group_by_2">
              <option value=""> Silahkan Pilih </option>
              <option value=1> Lender </option>
              <option value=2> Bluebook </option>
              <option value=3> Program </option>
              <option value=4> Kementerian/Lembaga </option>
              <option value=5> Sektor </option>
            </select>
          </div>
          <button id="submit_btn_2" class="btn btn-primary">Submit</button>
         
        </form>

        <div id="tabel_2">
          
          <p>tes</p>

        </div>


    </div>

  </div>
  
</div>
</div>

<script src="<?php echo base_url(); ?>assets/select2/js/select2.js"></script>
<script>

$(document).ready(function(){

$("#kode_gb_1").select2({
            placeholder: "Pilih Greenbook",
            width: "100%"
});

$("#kode_gb_2").select2({
            placeholder: "Pilih Greenbook",
            width: "100%"
});

$("#group_by_1").select2({
            placeholder: "Group By",
            width: "100%"
});

$("#group_by_2").select2({
            placeholder: "Group By",
            width: "100%"
});

  /*function fresh_(){
    $.get("<?php echo base_url(); ?>loan_aggr/tampilkan_la_list", function(data) {
      $("#tabel_2").html(data);
    });
  }

  function fresh_2(){
    $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel", function(data) {
      $("#tabel_1").html(data);
    });
  }

  fresh_2();
  fresh_();
*/
  console.log("tes keluar tulisan");

  return false;
});

$('#submit_btn_1').click(function(){
      
      var id = $("#kode_gb_1").val();
      var group = $("#group_by_1").val();


      //kumpulkan berdasarkan lender
      if (group === '1') {
         var id = $("#kode_gb_1").val();
        var group = $("#group_by_1").val();

            function fresh_(){
              $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender/"+id/+group, function(data) {
                $("#tabel_1").html(data);
                console.log(data);
              });
            }
      }

      //kumpulkan berdasarkan bluebook
      else if (group === '2') {

        function fresh_(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender/"+id/+group, function(data) {
            $("#tabel_1").html(data);
          });
        }


      }


      //kumpulkan berdasarkan program
       else if (group === '3') {

         

        console.log(id);
        console.log(group);

        function fresh_(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_program/"+id/+group, function(isi) {
            $("#tabel_1").html(isi);
            console.log(isi);
          });


        }

      }

      fresh_();

     
      console.log(id);
      console.log("diatas ini kode bb");
      
     

      return false;
    });




</script>

  


	

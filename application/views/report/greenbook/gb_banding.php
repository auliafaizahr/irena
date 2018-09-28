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

      if (group === '1') {

       
          function fresh_(){
              $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender/"+id/+group, function(data) {
                $("#tabel_1").html(data);
                console.log(data);
              });
            }

      
      } else if (group === '2') {

        if (id === '1') {

          function fresh_(){
            $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender/"+id, function(data) {
              $("#tabel_1").html(data);
            });
          }

        }

      }  else if (group === '3') {

     

          function fresh_(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_program/"+id, function(isi) {
            $("#tabel_1").html(isi);
            console.log(isi);
          });


        }

      } else if (group === '4') {

     

          function fresh_(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_kl/"+id, function(isi) {
            $("#tabel_1").html(isi);
            console.log(isi);
          });


        }

      } else if (group === '5') {

     

          function fresh_(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_sektor/"+id, function(isi) {
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




$('#submit_btn_2').click(function(){
      
      var id_2 = $("#kode_gb_2").val();
      var group_2 = $("#group_by_2").val();

      if (group_2 === '1') {

       
          function fresh_2(){
              $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender_2/"+id_2, function(data) {
                $("#tabel_2").html(data);
                console.log(data);
              });
            }

      
      } else if (group_2 === '2') {

        if (id === '1') {

          function fresh_2(){
            $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_lender_2/"+id_2, function(data) {
              $("#tabel_2").html(data);
            });
          }

        }

      }  else if (group_2 === '3') {

     

          function fresh_2(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_program_2/"+id_2, function(isi) {
            $("#tabel_2").html(isi);
            console.log(isi);
          });


        }

      } else if (group_2 === '4') {

     

          function fresh_2(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_kl_2/"+id_2, function(isi) {
            $("#tabel_2").html(isi);
            console.log(isi);
          });


        }

      } else if (group_2 === '5') {

     

          function fresh_2(){
          $.get("<?php echo base_url(); ?>greenbook/tampilkan_tabel_group_sektor_2/"+id_2, function(isi) {
            $("#tabel_2").html(isi);
            console.log(isi);
          });


        }

      }

      fresh_2();

     
      console.log(id);
      console.log("diatas ini kode bb");
      
     

      return false;
    });





</script>

  


	

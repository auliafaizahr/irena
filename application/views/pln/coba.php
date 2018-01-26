<html>
    <head>
        <meta charset="utf-8"> 
        <title>Pop up </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        // btn di dalam table nya kan
        <a href='' id='btn-edit' data-id='<?php echo $row->activity_detail_id; ?>'class="btn btn-outline btn-circle btn-sm purple" ><i class="fa fa-edit"></i> Edit </a>
        //

//ini modal nya kan
        <div class="modal fade left" id="modal"> 
            <div class="modal-dialog"> 
                <div class="modal-content"> 

                    <div class="modal-header"> 
                        <h3 class="pull-left no-margin">Edit Activity</h3>
                        <button type="button" class="close" data-dismiss="modal" title="Close"><span class="glyphicon glyphicon-remove"></span>
                        </button> 
                    </div> 
                    <div class="modal-body">

                        <form class="form-horizontal" role="form" method="post" action="<?php echo base_url(); ?>input_activity/update"> 

                            <div class="form-group"> 
                                <label for="name" class="col-sm-3 control-label">Kategori:</label> 
                                <div class="col-sm-9"> 

                                    <?php
                                    $attributes = 'class = "form-control" id = "actype"';
                                    echo form_dropdown('actype', $actype, set_value('actype', $detail[0]->activity_type), $attributes);
                                    ?>
                                </div> 
                            </div> 
                            <div class="form-group"> 
                                <label for="activity" class="col-sm-3 control-label">Rincian Kegiatan: </label> 
                                <div class="col-sm-9"> 
                                    <textarea class="form-control" rows="3" name="activity_name"  required><?php echo $detail[0]->activity_name; ?></textarea>
                                </div> 
                            </div> 
                            <div class="form-group"> 
                                <label for="project" class="col-sm-3 control-label">Peruntukkan:</label> 
                                <div class="col-sm-9"> 
                                    <?php
                                    $attributes = 'class = "form-control" id = "project"';
                                    echo form_dropdown('project', $project, set_value('project', $detail[0]->project_id), $attributes);
                                    ?>

                                </div> 
                            </div> 
                            <div class="form-group"> 
                                <label for="portion" class="col-sm-3 control-label">Bobot:</label> 
                                <div class="col-sm-4"> 

                                    <input class="form-control" name="portion" value="<?php echo $detail[0]->portion; ?>" required>
                                    <input name="activity_detail_id" type="hidden" id="activity_detail_id" value="<?php echo $detail[0]->activity_detail_id; ?>">
                                </div> 
                            </div> 
                            <div class="form-group"> 
                                <div class="col-md-offset-3 col-md-5">
                                    <button type="submit" class="btn green">
                                        <i class="fa fa-save"></i> Update</button>
                                    <button type="button" class="btn default" data-dismiss="modal">Cancel</button>
                                </div>
                            </div> 
                        </form>

                    </div>
                    <div class="modal-footer"> 

                    </div> 
                </div>

                <script>
                    $(function () {
                        $('#btn-edit').click(function (e) {
                            e.preventDefault();
                            $('#modal').modal({
                                backdrop: 'static',
                                show: true
                            });
                            id = $(this).data('id');
                            // mengambil nilai data-id yang di click
                            $.ajax({
                                url: 'input_activity/edit/' + id,
                                success: function (data) {
                                    $("select[name='actype']").val(data.actype);
                                    $("input[name='activity_name']").val(data.activity_name);
                                    $("select[name='project']").val(data.project);
                                    $("textarea[name='portion']").val(data.portion);

                                    console.log("hehehehe");
                                }
                            });
                        });
                    });
                </script>

                
                </body>
                </html>
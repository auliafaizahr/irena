<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Usulan</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan daftar usulan proyek ke Direktorat Perencanaan Pembangunan
			</li>
		</ol>
	</div>
	<div class="col-lg-2">

	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
					<?php
					    $xcrud = Xcrud::get_instance();
					    $xcrud->table('irena_usulan_pln');
					    $xcrud->change_type('judul_proyek(ID)','textarea');
					    echo $xcrud->render('create');
					?>
				</div>
			
			</div>	

		</div>
	</div>
</div>

<!-- Mainly scripts -->
    <script src="assets/inspinia/js/jquery-2.1.1.js"></script>
    <script src="assets/inspinia/js/bootstrap.min.js"></script>
    <script src="assets/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/inspinia/js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="assets/inspinia/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="assets/inspinia/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="assets/inspinia/js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="assets/inspinia/js/plugins/dataTables/dataTables.tableTools.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="assets/inspinia/js/inspinia.js"></script>
    <script src="assets/inspinia/js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {
            $('.dataTables-example').dataTable({
                responsive: true,
                "dom": 'T<"clear">lfrtip',
                "tableTools": {
                    "sSwfPath": "irena/assets/inspinia/js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });

            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable( '../example_ajax.php', {
                "callback": function( sValue, y ) {
                    var aPos = oTable.fnGetPosition( this );
                    oTable.fnUpdate( sValue, aPos[0], aPos[1] );
                },
                "submitdata": function ( value, settings ) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition( this )[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            } );


        });

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData( [
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row" ] );

        }
    </script>
<style>
    body.DTTT_Print {
        background: #fff;

    }
    .DTTT_Print #page-wrapper {
        margin: 0;
        background:#fff;
    }

    button.DTTT_button, div.DTTT_button, a.DTTT_button {
        border: 1px solid #e7eaec;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }
    button.DTTT_button:hover, div.DTTT_button:hover, a.DTTT_button:hover {
        border: 1px solid #d2d2d2;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }

    .dataTables_filter label {
        margin-right: 5px;

    }
</style>


 <div class="ibox-content">

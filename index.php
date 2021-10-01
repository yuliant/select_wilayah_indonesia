CONTROLLER -->
Controller Provinsi ikut view

public function index()
{
$data['provinsi'] = $this->M_Welcome->get_provinsi();
$this->load->view("index", $data);
}

public function welcome_kabupaten()
{
$this->load->database();
$this->load->model('M_welcome');

$id_provinsi = $this->input->post('id_provinsi');
$x = $this->M_welcome->get_kabupaten($id_provinsi);

echo "<option value=''>--PILIH KABUPATEN--</option>";
foreach ($x->result() as $a) {
echo "<option value=".$a->id.">".$a->id.".&nbsp;".$a->nama_kabupaten."</option>";
}
}

public function welcome_kecamatan()
{
$this->load->database();
$this->load->model('M_welcome');

$id_kabupaten = $this->input->post('id_kabupaten');
$x = $this->M_welcome->get_kecamatan($id_kabupaten);

echo "<option value=''>--PILIH KECAMATAN--</option>";
foreach ($x->result() as $a) {
echo "<option value=".$a->id.">".$a->id.".&nbsp;".$a->nama_kecamatan."</option>";
}
}

<!-- CONTROLLER -->


<!-- MODEL -->
public function get_provinsi()
{
return $this->db->get("tbl_provinsi");
}

public function get_kabupaten($id_provinsi)
{
return $this->db->get_where("tbl_kabupaten", array("id_provinsi" => $id_provinsi));
}

public function get_kecamatan($id_kabupaten)
{
return $this->db->get_where("tbl_kecamatan", array("id_kabupaten" => $id_kabupaten));
}
<!-- MODEL -->

<!-- JS -->
site_url mengarah ke routes dan di masukkan pada config.php (csrf_exclude_uris)
$(document).ready(function(){

$("#id_provinsi").change(function(){
$.ajax({
type : 'POST',
url : '<?php echo site_url('welcome_kabupaten'); ?>',
data : {
id_provinsi : $(this).val()
},
success : function(data){
$("select#id_kabupaten").html(data);
}
});
});

$("#id_kabupaten").change(function(){
$.ajax({
type : 'POST',
url : '<?php echo site_url('welcome_kecamatan'); ?>',
data : {
id_kabupaten : $(this).val()
},
success : function(option){
$("select#id_kecamatan").html(option);
}
});
});
});
<!-- JS -->

<!-- VIEW -->
<select name="id_provinsi" id="id_provinsi">
	<!-- foreach biasa -->
</select>

<select name="id_kabupaten" id="id_kabupaten">
	<!-- foreach dari JS (KOSONGIN AJA)-->
</select>

<select name="id_kecamatan" id="id_kecamatan">
	<!-- foreach dari JS (KOSONGIN AJA)-->
</select>
<!-- VIEW -->
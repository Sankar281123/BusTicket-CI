<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {
	function __construct(){
	parent::__construct();
		$this->load->helper('tglindo_helper');
		$this->load->model('getkod_model');
		$this->getsecurity();
		date_default_timezone_set("Asia/Jakarta");
	}
	function getsecurity($value=''){
		$username = $this->session->userdata('username_admin');
		if (empty($username)) {
			$this->session->sess_destroy();
			redirect('backend/login');
		}
	}
	/* Log on to codeastro.com for more projects */
	public function index(){
		$data['title'] = 'Report';
		$data['bulan'] = $this->db->query("SELECT DISTINCT DATE_FORMAT(create_tgl_tiket,'%M %Y') AS bulan FROM tbl_tiket")->result_array();
		$this->load->view('backend/laporan', $data);
	}
	public function laportanggal($value='') {
		$data['mulai'] = $this->input->post('mulai');
		$data['sampai'] = $this->input->post('sampai');
		$data['laporan'] = $this->db->query("SELECT * FROM tbl_tiket WHERE (create_tgl_tiket BETWEEN '".$data['mulai']."' AND '".$data['sampai']."') AND status_tiket = 2")->result_array();
		
		$total = array(); // Initialize $total array
	
		foreach ($data['laporan'] as $laporan_item) {
			$total[] = $laporan_item['harga_tiket'];
		}
		
		$data['total'] = array_sum($total);
		$this->load->view('backend/laporan/laporan_pertanggal', $data);
	}
	
	public function laporbulan($value='') {
		$data['bulan'] = $this->input->post('bln');
		$data['laporan'] = $this->db->query("SELECT create_tgl_tiket, DATE_FORMAT(create_tgl_tiket,'%M %Y') AS bulan, DATE_FORMAT(create_tgl_tiket,'%d %M %Y') FROM tbl_tiket WHERE DATE_FORMAT(create_tgl_tiket,'%M %Y') = '".$data['bulan']."' ORDER BY kd_tiket DESC")->result_array();
		
		// Uncomment the above line and correct the query
		
		// die(print_r($data)); // You can uncomment this line for debugging
		
		// for ($i=0; $i < count($data['laporan']) ; $i++) { 
		//     $total[$i] = $data['laporan'][$i]['harga_tiket'];
		// }
		// $data['total'] = array_sum($total);
		// $this->load->view('backend/laporan/laporan_pertanggal', $data);
	}
	
}

/* End of file Laporan.php */
/* Log on to codeastro.com for more projects */
/* Location: ./application/controllers/backend/Laporan.php */
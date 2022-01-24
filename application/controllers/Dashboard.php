<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends Render_Controller
{

	public function index()
	{
		// Page Settings
		$this->title = 'Dashboard';
		$this->navigation = ['Dashboard'];
		$this->plugins = ['datatables'];

		// Breadcrumb setting
		$this->breadcrumb_1 = 'Dashboard';
		$this->breadcrumb_1_url = '#';

		$this->content      = 'dashboard_home';


		$this->data['jenisAsuransi'] = $this->model->jenisAsuransi();
		$this->data['kolektibilitas'] = $this->model->kolektibilitas();
		$this->data['nasabah'] = $this->model->nasabah();

		// Send data to view
		$this->render();
	}

	function __construct()
	{
		parent::__construct();
		$this->sesion->cek_session();
		$this->default_template = 'templates/dashboard';
		$this->load->library('plugin');
		$this->load->helper('url');
		$this->level = $this->session->userdata('data')['level'];
		$this->id = $this->session->userdata('data')['id'];
		// Cek session

		// model
		$this->load->model("DashboardModel", 'model');
	}
}

/* End of file Dashboard.php */
/* Location: ./application/controllers/Dashboard.php */
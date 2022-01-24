<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Analisis extends Render_Controller
{

    public function index()
    {
        // Page Settings
        $this->title = 'Analisis';
        $this->navigation = ['Analisis Data'];
        $this->plugins = ['datatables'];

        // Breadcrumb setting
        $this->breadcrumb_1 = 'Dashboard';
        $this->breadcrumb_1_url = base_url() . 'admin/dashboard';
        $this->breadcrumb_3 = 'Analisis';
        $this->breadcrumb_3_url = '#';
        // content

        $this->content      = 'analisis';

        $this->data['kolektibilitas'] = $this->model->getKolektibilitas();
        $this->data['jml_nasabah'] = $this->model->getCountNasabat();
        $this->data['analisis_data'] = $this->model->getAnalisisData($this->data['kolektibilitas'],  $this->data['jml_nasabah']);
        // Send data to view
        $this->render();
    }

    function __construct()
    {
        parent::__construct();
        $this->sesion->cek_session();
        $akses = ['Super Admin'];
        $get_lv = $this->session->userdata('data')['level'];
        if (!in_array($get_lv, $akses)) {
            redirect('my404', 'refresh');
        }
        $this->id = $this->session->userdata('data')['id'];
        $this->photo_path = './files/product/category/';
        $this->load->model("AnalisisModel", 'model');
        $this->default_template = 'templates/dashboard';
        $this->load->library('plugin');
        $this->load->helper('url');
    }
}

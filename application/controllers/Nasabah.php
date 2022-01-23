<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Nasabah extends Render_Controller
{

    public function index()
    {
        // Page Settings
        $this->title = 'Nasabah';
        $this->navigation = ['Nasabah'];
        $this->plugins = ['datatables'];

        // Breadcrumb setting
        $this->breadcrumb_1 = 'Dashboard';
        $this->breadcrumb_1_url = base_url() . 'admin/dashboard';
        $this->breadcrumb_3 = 'Nasabah';
        $this->breadcrumb_3_url = '#';

        $this->data['jenis_asuransis'] = $this->model->getJenisAsuransi();

        // content
        $this->content      = 'nasabah';

        // Send data to view
        $this->render();
    }

    public function ajax_data()
    {
        $order = ['order' => $this->input->post('order'), 'columns' => $this->input->post('columns')];
        $start = $this->input->post('start');
        $draw = $this->input->post('draw');
        $draw = $draw == null ? 1 : $draw;
        $length = $this->input->post('length');
        $cari = $this->input->post('search');

        if (isset($cari['value'])) {
            $_cari = $cari['value'];
        } else {
            $_cari = null;
        }

        $data = $this->model->getAllData($draw, $length, $start, $_cari, $order)->result_array();
        $count = $this->model->getAllData(null, null, null, $_cari, $order, null)->num_rows();

        $this->output_json(['recordsTotal' => $count, 'recordsFiltered' => $count, 'draw' => $draw, 'search' => $_cari, 'data' => $data]);
    }

    public function getList()
    {
        $result = $this->model->getList();
        $code = $result ? 200 : 500;
        $this->output_json($result, $code);
    }

    public function insert()
    {
        $this->db->trans_start();
        $nama = $this->input->post("nama");
        $keterangan = $this->input->post("keterangan");
        $no_rek = $this->input->post("no_rek");
        $jenis_asuransi_id  = $this->input->post("jenis_asuransi_id");
        $tenggat = $this->input->post("tenggat");
        $status = $this->input->post("status");
        $result = $this->model->insert($nama, $keterangan, $no_rek, $jenis_asuransi_id, $tenggat, $status);

        $this->db->trans_complete();
        $code = $result ? 200 : 500;
        $this->output_json(["data" => $result], $code);
    }

    public function update()
    {
        $id = $this->input->post("id");
        $nama = $this->input->post("nama");
        $keterangan = $this->input->post("keterangan");
        $no_rek = $this->input->post("no_rek");
        $jenis_asuransi_id  = $this->input->post("jenis_asuransi_id");
        $tenggat = $this->input->post("tenggat");
        $status = $this->input->post("status");
        $result = $this->model->update($id, $nama, $keterangan, $no_rek, $jenis_asuransi_id, $tenggat, $status);
        $code = $result ? 200 : 500;
        $this->output_json(["data" => $result], $code);
    }

    public function delete()
    {
        $id = $this->input->post("id");
        $result = $this->model->delete($id);
        $code = $result ? 200 : 500;
        $this->output_json(["data" => $result], $code);
    }

    public function cari()
    {
        $key = $this->input->post('q');
        // jika inputan ada
        if ($key) {
            $this->output_json([
                "results" => $this->model->cari($key)
            ]);
        } else {
            $this->output_json([
                "results" => []
            ]);
        }
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
        $this->load->model("NasabahModel", 'model');
        $this->default_template = 'templates/dashboard';
        $this->load->library('plugin');
        $this->load->helper('url');
    }
}

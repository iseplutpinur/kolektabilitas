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

        $this->data['kolektibilitas'] = $this->getKolektibilitas();
        $this->data['jml_nasabah'] = $this->getCountNasabat();
        $this->data['analisis_data'] = $this->getAnalisisData($this->data['kolektibilitas'],  $this->data['jml_nasabah']);
        // Send data to view
        $this->render();
    }

    public function getKolektibilitas()
    {
        $query = $this->db->select("k.*, (select count(*) FROM nasabah as n WHERE n.tenggat >= k.dari and n.tenggat <= k.sampai and n.status = 1) as jml_nasabah,
            , IF(k.status = '0' , 'Tidak Digunakan', IF(k.status = '1' , 'Digunakan', 'Tidak Diketahui')) as status_str
        ")
            ->from('kolektibilitas as k')
            ->order_by('k.dari')
            ->get()
            ->result_array();

        return $query;
    }

    public function getCountNasabat()
    {
        $query = $this->db->select('count(*) as total')
            ->from('nasabah')
            ->where('status', 1)
            ->get()
            ->row_array();

        $query = isset($query['total']) ? $query['total'] : 0;

        return (int)$query;
    }

    public function getAnalisisData($kolektibilitas, $total)
    {
        if (is_array($kolektibilitas)) {
            // get sum range yang sudah di tetapkan dengan kolektibilitas status = 1
            $sum = 0;
            $sum_element = '';
            $sum_element_num = '';
            foreach ($kolektibilitas as $ko) {
                if ($ko['status'] == 1) {
                    $sum += $ko['jml_nasabah'];
                    // rumus
                    $ket = '(' . $ko['nama'] . ' (' . $ko['dari'] . '-' . $ko['sampai'] . ' Hari))';
                    $sum_element .= ($sum_element != '') ? (' + ' . $ket) : $ket;

                    // perhitungan
                    $sum_element_num .= ($sum_element_num != '') ? (' + ' . $ko['jml_nasabah']) : $ko['jml_nasabah'];
                }
            }

            $sum_element = "sum($sum_element)/jumlah nasabah";
            $sum_element_num = "($sum_element_num)/$total";

            $persentase_hasil = ($sum / $total) * 100;

            $output = [
                'sum' => $sum,
                'jml_nasabah' => $total,
                'persentase' => $persentase_hasil,
                'sum_element' => $sum_element,
                'sum_element_num' => $sum_element_num,
            ];
            // 1. if(sum(1+2) >= 70% dari total banyak data) then = Dampak bagi perusahaan adalah baik
            if ($persentase_hasil >= 70) {
                return array_merge([
                    "kode" => 1,
                    "message" => "Baik",
                    "text_color" => "success",
                    'sum' => $sum,
                ], $output);
            }
            // 2. if(sum(1+2) >= 60% and < 70% total data nasabah) then = Dampak bagi perusahaan adalah Tidak baik
            else if ($persentase_hasil >= 60 && $persentase_hasil < 70) {
                return array_merge([
                    "kode" => 2,
                    "message" => "Kurang Baik",
                    "text_color" => "warning",
                    'sum' => $sum,
                ], $output);
            }
            // 3. Jika tidak kedua diatas maka tidak baik
            else {
                return array_merge([
                    "kode" => 4,
                    "message" => "Tidak Baik",
                    "text_color" => "danger",
                    'sum' => $sum,
                ], $output);
            }
        } else {
            return [
                "kode" => 4,
                "message" => "Tidak Diketahui",
                "text_color" => "dark",
                'sum' => 0,
                'jml_nasabah' => 0,
                'persentase' => 0,
                'sum_element' => '',
                'sum_element_num' => '',
            ];
        }
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
        $no_urut = $this->input->post("no_urut");
        $dari = $this->input->post("dari");
        $sampai = $this->input->post("sampai");
        $status = $this->input->post("status");
        $result = $this->model->insert($nama, $keterangan, $no_urut, $dari, $sampai, $status);
        $this->db->trans_complete();
        $code = $result ? 200 : 500;
        $this->output_json(["data" => $result], $code);
    }

    public function update()
    {
        $id = $this->input->post("id");
        $nama = $this->input->post("nama");
        $keterangan = $this->input->post("keterangan");
        $no_urut = $this->input->post("no_urut");
        $dari = $this->input->post("dari");
        $sampai = $this->input->post("sampai");
        $status = $this->input->post("status");
        $result = $this->model->update($id, $nama, $keterangan, $no_urut, $dari, $sampai, $status);
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
        // $this->load->model("AnalisisModel", 'model');
        $this->default_template = 'templates/dashboard';
        $this->load->library('plugin');
        $this->load->helper('url');
    }
}

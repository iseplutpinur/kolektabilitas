<?php
defined('BASEPATH') or exit('No direct script access allowed');

class KolektibilitasModel extends Render_Model
{
    public function getAllData($draw = null, $show = null, $start = null, $cari = null, $order = null)
    {
        // select tabel
        $this->db->select("a.*, IF(a.status = '0' , 'Tidak Digunakan', IF(a.status = '1' , 'Digunakan', 'Tidak Diketahui')) as status_str");
        $this->db->from("kolektibilitas a");

        // order by
        if ($order['order'] != null) {
            $columns = $order['columns'];
            $dir = $order['order'][0]['dir'];
            $order = $order['order'][0]['column'];
            $columns = $columns[$order];

            $order_colum = $columns['data'];
            $this->db->order_by($order_colum, $dir);
        }

        // initial data table
        if ($draw == 1) {
            $this->db->limit(10, 0);
        }

        // pencarian
        if ($cari != null) {
            $this->db->where("(
                a.nama LIKE '%$cari%' or
                a.no_urut LIKE '%$cari%' or
                a.dari LIKE '%$cari%' or
                a.sampai LIKE '%$cari%' or
                IF(a.status = '0' , 'Tidak Digunakan', IF(a.status = '1' , 'Digunakan', 'Tidak Diketahui')) LIKE '%$cari%' or
                a.keterangan LIKE '%$cari%'
            )");
        }

        // pagination
        if ($show != null && $start != null) {
            $this->db->limit($show, $start);
        }

        $result = $this->db->get();
        return $result;
    }

    public function insert($nama, $keterangan, $no_urut, $dari, $sampai, $status)
    {
        $data = [
            'nama' => $nama,
            'keterangan' => $keterangan,
            'no_urut' => $no_urut,
            'dari' => $dari,
            'sampai' => $sampai,
            'status' => $status,
        ];
        // Insert users
        $execute = $this->db->insert('kolektibilitas', $data);
        $execute = $this->db->insert_id();
        return $execute;
    }

    public function update($id, $nama, $keterangan, $no_urut, $dari, $sampai, $status)
    {
        $data = [
            'nama' => $nama,
            'keterangan' => $keterangan,
            'no_urut' => $no_urut,
            'dari' => $dari,
            'sampai' => $sampai,
            'status' => $status,
        ];
        // Update users
        $execute = $this->db->where('id', $id);
        $execute = $this->db->update('kolektibilitas', $data);
        return  $execute;
    }

    public function delete($id)
    {
        // Delete users
        $exe = $this->db->where('id', $id)->delete('kolektibilitas');
        return $exe;
    }

    public function getList()
    {
        return $this->db->select('id, nama as text')
            ->from('kolektibilitas')
            ->where('status', 1)
            ->get()->result_array();
    }
}

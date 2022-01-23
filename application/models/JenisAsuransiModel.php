<?php
defined('BASEPATH') or exit('No direct script access allowed');

class JenisAsuransiModel extends Render_Model
{
    public function getAllData($draw = null, $show = null, $start = null, $cari = null, $order = null)
    {
        // select tabel
        $this->db->select("a.*");
        $this->db->from("jenis_asuransi a");

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

    public function insert($nama, $keterangan)
    {
        $data = [
            'nama' => $nama,
            'keterangan' => $keterangan,
        ];
        // Insert users
        $execute = $this->db->insert('jenis_asuransi', $data);
        $execute = $this->db->insert_id();
        return $execute;
    }

    public function update($id, $nama, $keterangan)
    {
        $data = [
            'nama' => $nama,
            'keterangan' => $keterangan,
        ];
        // Update users
        $execute = $this->db->where('id', $id);
        $execute = $this->db->update('jenis_asuransi', $data);
        return  $execute;
    }

    public function delete($id)
    {
        // Delete users
        $exe = $this->db->where('id', $id)->delete('jenis_asuransi');
        return $exe;
    }

    public function getList()
    {
        return $this->db->select('id, nama as text')
            ->from('jenis_asuransi')
            ->where('status', 1)
            ->get()->result_array();
    }
}

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class NasabahModel extends Render_Model
{
    public function getAllData($draw = null, $show = null, $start = null, $cari = null, $order = null)
    {
        // select tabel
        $this->db->select("a.*, IF(a.status = '0' , 'Tidak Aktif', IF(a.status = '1' , 'Aktif', 'Tidak Diketahui')) as status_str, b.nama as jenis_asuransi");
        $this->db->from("nasabah a");
        $this->db->join('jenis_asuransi b', 'a.jenis_asuransi_id = b.id', 'left');

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
                a.no_rek LIKE '%$cari%' or
                a.jenis_asuransi_id  LIKE '%$cari%' or
                a.tenggat LIKE '%$cari%' or
                IF(a.status = '0' , 'Tidak Aktif', IF(a.status = '1' , 'Aktif', 'Tidak Diketahui')) LIKE '%$cari%' or
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

    public function insert($nama, $keterangan, $no_rek, $jenis_asuransi_id, $tenggat, $status, $id = null)
    {
        $data = [
            'id' => $id,
            'nama' => $nama,
            'keterangan' => $keterangan,
            'no_rek' => $no_rek,
            'jenis_asuransi_id ' => $jenis_asuransi_id,
            'tenggat' => $tenggat,
            'status' => $status,
        ];
        // Insert users
        $execute = $this->db->insert('nasabah', $data);
        $execute = $this->db->insert_id();
        return $execute;
    }

    public function update($id, $nama, $keterangan, $no_rek, $jenis_asuransi_id, $tenggat, $status)
    {
        $data = [
            'nama' => $nama,
            'keterangan' => $keterangan,
            'no_rek' => $no_rek,
            'jenis_asuransi_id ' => $jenis_asuransi_id,
            'tenggat' => $tenggat,
            'status' => $status,
        ];
        // Update users
        $execute = $this->db->where('id', $id);
        $execute = $this->db->update('nasabah', $data);
        return  $execute;
    }

    public function delete($id)
    {
        // Delete users
        $exe = $this->db->where('id', $id)->delete('nasabah');
        return $exe;
    }

    public function deleteAll()
    {
        // Delete users
        $exe = $this->db->empty_table('nasabah');
        return $exe;
    }

    public function getList()
    {
        return $this->db->select('id, nama as text')
            ->from('nasabah')
            ->where('status', 1)
            ->get()->result_array();
    }

    public function all()
    {
        return $this->db->select('n.*, ja.nama as asuransi')
            ->from('nasabah n')
            ->order_by('n.tenggat')
            ->join('jenis_asuransi ja', 'n.jenis_asuransi_id = ja.id', 'left')
            ->get()->result_array();
    }

    public function getJenisAsuransi()
    {
        return $this->db->select('id, nama as text')
            ->from('jenis_asuransi')
            ->get()->result_array();
    }
}

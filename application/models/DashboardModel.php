<?php
defined('BASEPATH') or exit('No direct script access allowed');

class DashboardModel extends Render_Model
{
    public function jenisAsuransi()
    {
        $return = $this->db->select('count(*) as jumlah')->from('jenis_asuransi')->get()->row_array();
        $return = is_null($return) ? 0 : $return['jumlah'];
        return $return;
    }

    public function kolektibilitas()
    {
        $return = $this->db->select('count(*) as jumlah')->from('kolektibilitas')->get()->row_array();
        $return = is_null($return) ? 0 : $return['jumlah'];
        return $return;
    }

    public function nasabah()
    {
        $return = $this->db->select('count(*) as jumlah')->from('nasabah')->get()->row_array();
        $return = is_null($return) ? 0 : $return['jumlah'];
        return $return;
    }
}

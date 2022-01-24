<?php
defined('BASEPATH') or exit('No direct script access allowed');

class AnalisisModel extends Render_Model
{
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
}

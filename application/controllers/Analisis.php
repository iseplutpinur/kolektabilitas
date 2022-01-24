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

    public function export_pdf()
    {
        // document name
        $doc_name = "Hasil Analisis";

        // set table header
        $headers = [
            'No',
            'Nama',
            'Jml. Nasabah',
            'Status',
        ];
        $thead_title = '';
        $thead_number = '';
        foreach ($headers as $i => $head) {
            $num = $i + 1;
            $thead_title .= "<th style=\"text-align:center\">$head</th>";
            $thead_number .= "<th style=\"background-color:#E5E7EB; text-align:center; padding-top:2px; padding-bottom:2px;\">$num</th>";
        }
        $thead_title = "<tr>$thead_title</tr>";
        $thead_number = "<tr>$thead_number</tr>";
        // set body table
        // data body
        $order = [
            'order' => $this->input->post('order'),
            'columns' => $this->input->post('columns')
        ];
        $details = $this->model->getKolektibilitas();
        $jml_nasabah =  $this->model->getCountNasabat();
        $analisis_data = $this->model->getAnalisisData($details,  $jml_nasabah);

        $body_table = '';
        foreach ($details as $i => $detail) {
            $num = $i + 1;
            $detail = (object)$detail;
            $body_table .= '<tr>';
            $body_table .= "<td style=\"text-align:center\">{$num}</td>";
            $body_table .= "<td>$detail->nama ($detail->dari - $detail->sampai Hari)</td>";
            $body_table .= "<td>{$detail->jml_nasabah}</td>";
            $body_table .= "<td>{$detail->status_str}</td>";
            $body_table .= '</tr>';
        }


        // insert html
        $tanggal = date("d-m-Y H:i:s");
        $body_head = '<div style="text-align:center">';
        $build_html = '
                        <h3><span style="text-align:center; ">Hasil Analisis</span></h3>' . "
        <table>
        $thead_title
        $thead_number
        $body_table
        </table>

        <hr>
        <p style='text-align:left'><strong>Jumlah Semua Nasabah:</strong> $jml_nasabah Nasabah</p>

        <p style='text-align:left'><strong>Rumus:</strong>{$analisis_data['sum_element']}</p>
        <p style='text-align:left'><strong>Perhitungan:</strong>{$analisis_data['sum_element_num']}</p>
        <p style='text-align:left'>:{$analisis_data['sum']} / {$analisis_data['jml_nasabah']}</p>
        <p style='text-align:left'>:{$analisis_data['sum_div_total']}</p>
        <p style='text-align:left'>:{$analisis_data['sum_div_total']} * 100 = {$analisis_data['persentase']}%</p>

        <p style='text-align:left'><strong>Rules:</strong> (hasil >= 70%) = <strong style=\"color:#28a745\">Baik</strong></p>
        <p style='text-align:left'><strong>:</strong> (hasil >= 60% and hasil < 60%)=<strong style=\"color:#ffc107\">Kurang Baik</strong></p>
        <p style='text-align:left'><strong>:</strong> (else)= <strong style=\"color:#dc3545\">Tidak Baik</strong></p>

        <p style='text-align:left'><strong>Kesimpulan:</strong> Dampak bagi perusahaan adalah <strong style=\"color:{$analisis_data['text_color_css']}\">{$analisis_data['message']}</strong></p>


        <br>
        <br>
        <span style='text-align:left'>Data ini diambil pada tanggal dan waktu: $tanggal</span>
        ";

        $footer = '</div>';
        $this->create_pdf([
            'html' => $body_head . $build_html . $footer,
            'doc_name' => $doc_name,
            'orientation' => 'potrait'
        ]);
    }

    public function export_excel()
    {
        // data body
        $details = $this->model->getKolektibilitas();
        $jml_nasabah =  $this->model->getCountNasabat();
        $analisis_data = $this->model->getAnalisisData($details,  $jml_nasabah);
        $bulan_array = [
            1 => 'Januari',
            2 => 'February',
            3 => 'Maret',
            4 => 'April',
            5 => 'Mei',
            6 => 'Juni',
            7 => 'Juli',
            8 => 'Agustus',
            9 => 'September',
            10 => 'Oktober',
            11 => 'November',
            12 => 'Desember',
        ];
        $today_m = (int)Date("m");
        $today_d = (int)Date("d");
        $today_y = (int)Date("Y");

        $last_date_of_this_month =  date('t', strtotime(date("Y-m-d")));

        $date = $today_d . " " . $bulan_array[$today_m] . " " . $today_y;

        // laporan baru
        $row = 1;
        $col_start = "A";
        $col_end = "D";
        $title_excel = "Hasil Analisis";
        // Header excel ================================================================================================
        $spreadsheet = new PhpOffice\PhpSpreadsheet\Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Dokumen Properti
        $spreadsheet->getProperties()
            ->setCreator("Administrator")
            ->setLastModifiedBy("Administrator")
            ->setTitle($title_excel)
            ->setSubject("Administrator")
            ->setDescription("LIst Company $date")
            ->setKeywords("Laporan, Report")
            ->setCategory("Laporan, Report");
        // set default font
        $spreadsheet->getDefaultStyle()->getFont()->setName('Calibri');
        $spreadsheet->getDefaultStyle()->getFont()->setSize(11);


        // header 2 ====================================================================================================
        $row += 1;
        $sheet->mergeCells($col_start . $row . ":" . $col_end . $row)
            ->setCellValue("A$row", "Daftar Jenis Asuransi");
        $sheet->getStyle($col_start . $row . ":" . $col_end . $row)->applyFromArray([
            "font" => [
                "bold" => true,
                "size" => 13
            ],
            "alignment" => [
                "horizontal" => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
            ],
        ]);

        // Tabel =======================================================================================================
        // Tabel Header
        $row += 2;
        $styleArray = [
            'font' => [
                'bold' => true,
            ],
            'alignment' => [
                'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
            ],
            'borders' => [
                'allBorders' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
            ],
            'fill' => [
                'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                'startColor' => [
                    'rgb' => '93C5FD',
                ]
            ],
        ];
        $sheet->getStyle($col_start . $row . ":" . $col_end . $row)->applyFromArray($styleArray);
        $row++;
        $styleArray['fill']['startColor']['rgb'] = 'E5E7EB';
        $sheet->getStyle($col_start . $row . ":" . $col_end . $row)->applyFromArray($styleArray);

        // poin-poin header disini
        $headers = [
            'No',
            'Nama',
            'Jml. Nasabah',
            'Status',
        ];

        // apply header
        for ($i = 0; $i < count($headers); $i++) {
            $sheet->setCellValue(chr(65 + $i) . ($row - 1), $headers[$i]);
            $sheet->setCellValue(chr(65 + $i) . $row, ($i + 1));
        }

        // tabel body
        $styleArray = [
            'borders' => [
                'allBorders' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ],
            "alignment" => [
                'wrapText' => TRUE,
                'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_TOP
            ]
        ];
        $start_tabel = $row + 1;
        foreach ($details as $detail) {
            $c = 0;
            $row++;
            $detail = (object)$detail;
            $sheet->setCellValue(chr(65 + $c) . "$row", ($row - 5));
            $sheet->setCellValue(chr(65 + ++$c) . "$row", "$detail->nama ($detail->dari - $detail->sampai Hari)");
            $sheet->setCellValue(chr(65 + ++$c) . "$row", $detail->jml_nasabah);
            $sheet->setCellValue(chr(65 + ++$c) . "$row", $detail->status_str);
        }
        // format
        // nomor center
        $sheet->getStyle($col_start . $start_tabel . ":" . $col_start . $row)
            ->getAlignment()
            ->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        // border all data
        $sheet->getStyle($col_start . $start_tabel . ":" . $col_end . $row)
            ->applyFromArray($styleArray);

        $spreadsheet->getActiveSheet()->getStyle('B' . $start_tabel . ":B" . $row)->getNumberFormat()
            ->setFormatCode('0');

        $row++;
        $sheet->setCellValue("B" . "$row", "Jumlah Semua Nasabah: $jml_nasabah Nasabah");
        $row++;
        $sheet->setCellValue("B" . "$row", "Rumus: {$analisis_data['sum_element']}");
        $row++;
        $sheet->setCellValue("B" . "$row", "Perhitungan: {$analisis_data['sum_element_num']}");
        $row++;
        $sheet->setCellValue("B" . "$row", ": {$analisis_data['sum']} / {$analisis_data['jml_nasabah']}");
        $row++;
        $sheet->setCellValue("B" . "$row", ": {$analisis_data['sum_div_total']}");
        $row++;
        $sheet->setCellValue("B" . "$row", ": {$analisis_data['sum_div_total']} * 100 = {$analisis_data['persentase']}%");
        $row++;
        $sheet->setCellValue("B" . "$row", "Rules: (hasil >= 70%) = Baik");
        $row++;
        $sheet->setCellValue("B" . "$row", ": (hasil >= 60% and hasil < 60%)= Kurang Baik");
        $row++;
        $sheet->setCellValue("B" . "$row", ": (else)=Tidak Baik");
        $sheet->setCellValue("B" . "$row", "Kesimpulan: Dampak bagi perusahaan adalah {$analisis_data['message']}");

        // function for width column
        function w($width)
        {
            return 0.71 + $width;
        }

        // set width column
        $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);

        // set  printing area
        $spreadsheet->getActiveSheet()->getPageSetup()->setPrintArea($col_start . '1:' . $col_end . $row);
        $spreadsheet->getActiveSheet()->getPageSetup()
            ->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_PORTRAIT);
        $spreadsheet->getActiveSheet()->getPageSetup()
            ->setPaperSize(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::PAPERSIZE_A4);

        // margin
        $spreadsheet->getActiveSheet()->getPageMargins()->setTop(1);
        $spreadsheet->getActiveSheet()->getPageMargins()->setRight(0);
        $spreadsheet->getActiveSheet()->getPageMargins()->setLeft(0);
        $spreadsheet->getActiveSheet()->getPageMargins()->setBottom(0);

        // page center on
        $spreadsheet->getActiveSheet()->getPageSetup()->setHorizontalCentered(true);
        $spreadsheet->getActiveSheet()->getPageSetup()->setVerticalCentered(false);

        // $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
        // $writer->save($title_excel);
        // header("Location: " . base_url($title_excel));
        $writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);


        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $title_excel . '.xlsx"');
        header('Cache-Control: max-age=0');
        $writer->save('php://output');
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

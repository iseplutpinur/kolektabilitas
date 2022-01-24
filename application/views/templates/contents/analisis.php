<div class="card card-primary card-outline">
  <div class="card-header">
    <div class="d-flex justify-content-between w-100">
      <h3 class="card-title">Analisis Perhitungan Data</h3>
      <div class="text-right">
        <a href="<?= base_url() ?>Analisis/export_pdf" class="my-1 btn btn-danger btn-sm"><i class="fas fa-file-pdf"></i> Export PDF</a>
        <a href="<?= base_url() ?>Analisis/export_excel" class="my-1 btn btn-success btn-sm"><i class="fas fa-file-excel"></i> Export Excel</a>
      </div>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <label for="dt_kolektibilitas">Tabel Kolektibilitas</label>
    <table id="dt_kolektibilitas" class="table table-bordered table-striped table-hover">
      <thead>
        <tr>
          <th style="max-width: 50px;">No</th>
          <th>Nama</th>
          <th>Jml. Nasabah</th>
          <th>status</th>
        </tr>
      </thead>
      <tbody>
        <?php $number = 0;
        foreach ($kolektibilitas as $ko) : ?>
          <tr <?= $ko['status'] == '1' ? 'class="bg-success"' : '' ?>>
            <td><?= ++$number ?></td>
            <td><?= $ko['nama'] . ' (' . $ko['dari'] . '-' . $ko['sampai'] . ' Hari)' ?></td>
            <td><?= $ko['jml_nasabah'] ?></td>
            <td><?= $ko['status_str'] ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
    <hr>
    <p><strong>Jumlah Semua Nasabah:</strong> <?= $jml_nasabah ?> Nasabah</p>
    <p><strong>Rumus:</strong> <?= $analisis_data['sum_element'] ?></p>
    <p><strong>Perhitungan:</strong> <?= $analisis_data['sum_element_num'] ?></p>
    <p>: <?= $analisis_data['sum'] . '/' . $analisis_data['jml_nasabah'] ?></p>
    <p>: <?= ((int)$analisis_data['sum'] / (int)$analisis_data['jml_nasabah']) ?></p>
    <p>: <?= ((int)$analisis_data['sum'] / (int)$analisis_data['jml_nasabah']) . ' * 100 = ' . (int)$analisis_data['persentase'] . '%' ?></p>

    <p><strong>Rules:</strong> (hasil >= 70%) = <strong class="text-success">Baik</strong></p>
    <p><strong>:</strong> (hasil >= 60% and hasil < 60%)=<strong class="text-warning">Kurang Baik</strong></p>
    <p><strong>:</strong> (else)=<strong class="text-danger">Tidak Baik</strong></p>

    <p><strong>Kesimpulan:</strong> Dampak bagi perusahaan adalah <strong class="text-<?= $analisis_data['text_color'] ?>"><?= $analisis_data['message'] ?></strong></p>
  </div>
  <!-- /.card-body -->
</div>

<!-- view foto -->
<div class="modal fade" id="tambahModal" tabindex="-1" role="dialog" aria-labelledby="tambahModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header outline-info">
        <h5 class="modal-title text-center" id="tambahModalTitle"></h5>
      </div>
      <div class="modal-body">
        <form action="" id="fmain" method="post">
          <input type="hidden" id="id" name="id">
          <input type="hidden" id="temp_foto" name="temp_foto">
          <div class="form-group">
            <label for="nama">Nama Kolektibilitas</label>
            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Kolektibilitas" required />
          </div>
          <div class="form-group">
            <label for="no_urut">Nomor Urut</label>
            <input type="number" class="form-control" id="no_urut" name="no_urut" placeholder="Nomor Urut" required />
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="dari">Dari</label>
                <input type="number" class="form-control" id="dari" name="dari" placeholder="Dari" required />
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label for="sampai">Sampai</label>
                <input type="number" class="form-control" id="sampai" name="sampai" placeholder="Sampai" required />
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="keterangan">Keterangan</label>
            <textarea cols="3" rows="4" class="form-control" id="keterangan" name="keterangan" placeholder="Keterangan"></textarea>
          </div>
          <div class="form-group">
            <label for="status">Status</label>
            <select name="status" id="status" class="form-control">
              <option value="1">Digunakan</option>
              <option value="0">Tidak Digunakan</option>
            </select>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary btn-ef btn-ef-3 btn-ef-3c" type="submit" form="fmain"><i class="fa fa-save"></i> Simpan</button>
        <button class="btn btn-success btn-ef btn-ef-3 btn-ef-3c" data-dismiss="modal"><i class="fa fa-arrow-left"></i> Kembali</button>
      </div>
    </div>
  </div>
</div>
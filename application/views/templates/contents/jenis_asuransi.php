<div class="card card-primary card-outline">
  <div class="card-header">
    <div class="d-flex justify-content-between w-100">
      <h3 class="card-title">List Jenis Asuransi</h3>
      <div class="text-right">
        <a href="<?= base_url() ?>JenisAsuransi/export_pdf" class="my-1 btn btn-danger btn-sm"><i class="fas fa-file-pdf"></i> Export PDF</a>
        <button class="my-1 btn btn-info btn-sm" data-toggle="modal" data-target="#inportExcel" id="btn-import"><i class="fas fa-file-upload"></i></i> Import Excel</button>
        <a href="<?= base_url() ?>JenisAsuransi/export_excel" class="my-1 btn btn-success btn-sm"><i class="fas fa-file-excel"></i> Export Excel</a>
        <button type="button" class="my-1 btn btn-primary btn-sm" data-toggle="modal" data-target="#tambahModal" id="btn-tambah"><i class="fa fa-plus"></i> Tambah</button>
      </div>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <table id="dt_basic" class="table table-bordered table-striped table-hover">
      <thead>
        <tr>
          <th style="max-width: 50px;">No</th>
          <th>ID</th>
          <th>Nama</th>
          <th>Keterangan</th>
          <th>Aksi</th>
        </tr>
      </thead>
    </table>
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
            <label for="nama">Nama Jenis Asuransi</label>
            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Jenis Asuransi" required />
          </div>
          <div class="form-group">
            <label for="keterangan">Keterangan</label>
            <textarea cols="3" rows="4" class="form-control" id="keterangan" name="keterangan" placeholder="Keterangan"></textarea>
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

<div class="modal fade" id="inportExcel" tabindex="-1" role="dialog" aria-labelledby="inportExcelLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header outline-info">
        <h5 class="modal-title text-center" id="inportExcelTitle">Import Data Jenis Asuransi Dari Excel</h5>
      </div>
      <div class="modal-body">
        <form action="" id="fimport" method="post">
          <div class="form-group">
            <label for="file">File Jenis Asuransi <a href="<?= base_url() ?>JenisAsuransi/form_import_excel" class="text-link">Format Import Excel</a></label>
            <input type="file" class="form-control" id="file" name="file" required />
          </div>
        </form>
        <strong class="text-danger">Peringatan</strong>
        <p>Dengan mengimport data dari excel maka data sebelumnya di database akan diganti dengan data yang di import. untuk keamanan silahkan eksprot terlebih dahulu. Dengan mengimport data ini juga akan mempengaruhi data nasabah yang sudah ada. harap export data nasabah terlebih dahulu juga.</p>

        <strong class="text-success">Perhatian</strong>
        <p>Format file import excel sama dengan file export excel <a href="<?= base_url() ?>JenisAsuransi/export_excel" class="text-link">disini</a></p>

      </div>
      <div class="modal-footer">
        <button class="btn btn-primary btn-ef btn-ef-3 btn-ef-3c" type="submit" form="fimport"><i class="fa fa-save"></i> Simpan</button>
        <button class="btn btn-success btn-ef btn-ef-3 btn-ef-3c" data-dismiss="modal"><i class="fa fa-arrow-left"></i> Kembali</button>
      </div>
    </div>
  </div>
</div>
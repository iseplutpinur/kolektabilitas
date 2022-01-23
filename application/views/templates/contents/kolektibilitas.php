<div class="card card-primary card-outline">
  <div class="card-header">
    <div class="d-flex justify-content-between w-100">
      <h3 class="card-title">List Kolektibilitas</h3>
      <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#tambahModal" id="btn-tambah"><i class="fa fa-plus"></i> Tambah</button>
    </div>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <table id="dt_basic" class="table table-bordered table-striped table-hover">
      <thead>
        <tr>
          <th style="max-width: 50px;">No</th>
          <th>Nama</th>
          <th>No Urut</th>
          <th>Dari</th>
          <th>Sampai</th>
          <th>Keterangan</th>
          <th>status</th>
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
              <option value="1">Aktif</option>
              <option value="0">Tidak Aktif</option>
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
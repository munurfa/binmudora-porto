<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Nama</label>
	<div class="col-sm-8">
		
		{!!Form::text('nama', null, ["class"=>"form-control1","placeholder"=>"Masukkan Nama Event"])!!}
	</div>
</div>
	<div class="form-group">
		<label for="focusedinput" class="col-sm-2 control-label">Tahun</label>
		<div class="col-sm-8" >
			
			{!!Form::text('tahun', null, ["class"=>"form-control1","style"=>"width:20%","placeholder"=>"Tahun"])!!}
		</div>
		
	</div>
	<div class="form-group">
		<label for="focusedinput" class="col-sm-2 control-label">Deskripsi</label>
		<div class="col-sm-8" >
			
			{!!Form::textarea('deskripsi', null, ["class"=>"form-control1","placeholder"=>"Masukkan Deskripsi Event","style"=>"height:200px"])!!}
			
		</div>
		
	</div>
	
</div>
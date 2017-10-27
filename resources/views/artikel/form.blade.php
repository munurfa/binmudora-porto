
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Judul</label>
	<div class="col-sm-8">
		
		{!!Form::text('judul', null, ["class"=>"form-control1","placeholder"=>"Masukkan Judul Artikel"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Kategori</label>
	<div class="col-sm-8" >
		{!!Form::select('kategori', ["berita" => "Berita","berita utama" => "Berita Utama", "halaman" => "Halaman"], null, ['class' => 'form-control1'])!!}
	</div>
</div>

<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Fitur Image</label>
	<div class="col-sm-8">
		
		{!!Form::file('image', ["class"=>"form-control1"])!!}
	</div>
	
</div>
<div class="form-group">
	<label for="focusedinput" class="col-sm-2 control-label">Isi</label>
	<div class="col-sm-8" data-target="#editor">
		
		{!!Form::textarea('isi', null, ["class"=>"form-control1","placeholder"=>"Masukkan Isi Artikel","style"=>"height:500px","id"=>"editor"])!!} 
		
	</div>
	
</div>


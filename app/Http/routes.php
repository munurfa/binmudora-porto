
<?php

Route::get('/', function ()
{
	return redirect()->intended('auth/login');
});
Route::get('auth/login', 'LogController@getLogin');
Route::post('auth/login', 'LogController@postLogin');
Route::get('auth/logout', 'LogController@postLogout');

Route::get('dashboard', 'DashController@index');
Route::get('dashboard/edit', 'DashController@edit');
Route::put('dashboard/edit', 'DashController@update');

Route::resource('atlit', 'AtlitController',['except'=>'show']);
Route::get('atlit/cari/{cari}','AtlitController@cari');
Route::get('atlit/sortby/{sort}','AtlitController@sort');

Route::get('atlit/event/{id}','AtlitController@event');
Route::get('atlit/event/{id}/create','AtlitController@eventCreate');
Route::post('atlit/event','AtlitController@eventStore');
Route::get('atlit/event/{id}/edit','AtlitController@eventEdit');
Route::patch('atlit/event/{id}','AtlitController@eventUpdate');
Route::delete('atlit/event/{id}','AtlitController@eventDelete');

Route::resource('pelatih', 'PelatihController',['except'=>'show']);
Route::get('pelatih/cari/{cari}','PelatihController@cari');
Route::get('pelatih/sortby/{sort}','PelatihController@sort');
//event pelatih
Route::get('pelatih/event/{id}','PelatihController@event');
Route::get('pelatih/event/{id}/create','PelatihController@eventCreate');
Route::post('pelatih/event','PelatihController@eventStore');
Route::get('pelatih/event/{id}/edit','PelatihController@eventEdit');
Route::patch('pelatih/event/{id}','PelatihController@eventUpdate');
Route::delete('pelatih/event/{id}','PelatihController@eventDelete');
//sertifikasi pelatih
Route::get('pelatih/serti/{id}','PelatihController@serti');
Route::get('pelatih/serti/{id}/create','PelatihController@sertiCreate');
Route::post('pelatih/serti','PelatihController@sertiStore');
Route::get('pelatih/serti/{id}/edit','PelatihController@sertiEdit');
Route::patch('pelatih/serti/{id}','PelatihController@sertiUpdate');
Route::delete('pelatih/serti/{id}','PelatihController@sertiDelete');
//Riwayat pelatih
Route::get('pelatih/riwayat/{id}','PelatihController@riwayat');
Route::get('pelatih/riwayat/{id}/create','PelatihController@riwayatCreate');
Route::post('pelatih/riwayat','PelatihController@riwayatStore');
Route::get('pelatih/riwayat/{id}/edit','PelatihController@riwayatEdit');
Route::patch('pelatih/riwayat/{id}','PelatihController@riwayatUpdate');
Route::delete('pelatih/riwayat/{id}','PelatihController@riwayatDelete');


Route::resource('wasit', 'WasitController',['except'=>'show']);
Route::get('wasit/cari/{cari}','WasitController@cari');
Route::get('wasit/sortby/{sort}','WasitController@sort');
//event wasit
Route::get('wasit/event/{id}','WasitController@event');
Route::get('wasit/event/{id}/create','WasitController@eventCreate');
Route::post('wasit/event','WasitController@eventStore');
Route::get('wasit/event/{id}/edit','WasitController@eventEdit');
Route::patch('wasit/event/{id}','WasitController@eventUpdate');
Route::delete('wasit/event/{id}','WasitController@eventDelete');
//sertifikasi wasit
Route::get('wasit/serti/{id}','WasitController@serti');
Route::get('wasit/serti/{id}/create','WasitController@sertiCreate');
Route::post('wasit/serti','WasitController@sertiStore');
Route::get('wasit/serti/{id}/edit','WasitController@sertiEdit');
Route::patch('wasit/serti/{id}','WasitController@sertiUpdate');
Route::delete('wasit/serti/{id}','WasitController@sertiDelete');

Route::resource('koni', 'KoniController',['except'=>'show']);
Route::get('koni/cari/{cari}','KoniController@cari');
Route::get('koni/struktur/{id}','KoniController@struktur');
Route::get('koni/struktur/{id}/create','KoniController@strukturCreate');
Route::post('koni/struktur','KoniController@strukturStore');
Route::get('koni/struktur/{id}/edit','KoniController@strukturEdit');
Route::patch('koni/struktur/{id}','KoniController@strukturUpdate');
Route::delete('koni/struktur/{id}','KoniController@strukturDelete');

Route::resource('sarana/keolahragaan', 'SarprasORController',['except'=>'show']);
Route::post('sarana/keolahragaan/cari','SarprasORController@cari');

Route::resource('sarana/kepemudaan', 'SarprasMudaController',['except'=>'show']);
Route::post('sarana/kepemudaan/cari','SarprasMudaController@cari');

Route::resource('sarana/public', 'SarprasPublicController',['except'=>'show']);
Route::post('sarana/public/cari','SarprasPublicController@cari');

Route::resource('sarana/asset', 'SarprasAssetController',['except'=>'show']);
Route::post('sarana/asset/cari','SarprasAssetController@cari');

Route::resource('event', 'KompetisiController',['except'=>'show']);
Route::post('event/cari','KompetisiController@cari');

Route::get('report/olahraga', 'ReportController@setOR');
Route::post('report/olahraga', 'ReportController@getOR');
Route::get('report/olahraga/{pilih}/{cabang}', 'ExportController@getOREx');


Route::get('report/sarana', 'ReportController@setSarana');
Route::post('report/sarana', 'ReportController@getSarana');
Route::get('report/sarana/{pilih}', 'ExportController@getSaranaEx');

Route::get('report/kepemudaan', 'ReportController@setMuda');
Route::post('report/kepemudaan', 'ReportController@getMuda');
Route::get('report/kepemudaan/{pilih}', 'ExportController@getMudaEx');

Route::resource('okp', 'OkpController',['except'=>'show']);
Route::get('okp/struktur/{id}','OkpController@struktur');
Route::get('okp/struktur/{id}/create','OkpController@strukturCreate');
Route::post('okp/struktur','OkpController@strukturStore');
Route::get('okp/struktur/{id}/edit','OkpController@strukturEdit');
Route::patch('okp/struktur/{id}','OkpController@strukturUpdate');
Route::delete('okp/struktur/{id}','OkpController@strukturDelete');

Route::resource('knpi', 'KnpiController',['except'=>'show']);
Route::get('knpi/struktur/{id}','KnpiController@struktur');
Route::get('knpi/struktur/{id}/create','KnpiController@strukturCreate');
Route::post('knpi/struktur','KnpiController@strukturStore');
Route::get('knpi/struktur/{id}/edit','KnpiController@strukturEdit');
Route::patch('knpi/struktur/{id}','KnpiController@strukturUpdate');
Route::delete('knpi/struktur/{id}','KnpiController@strukturDelete');

Route::resource('sp', 'SarjanaController',['except'=>'show']);
Route::get('sp/event/{id}','SarjanaController@event');
Route::get('sp/event/{id}/create','SarjanaController@eventCreate');
Route::post('sp/event','SarjanaController@eventStore');
Route::get('sp/event/{id}/edit','SarjanaController@eventEdit');
Route::patch('sp/event/{id}','SarjanaController@eventUpdate');
Route::delete('sp/event/{id}','SarjanaController@eventDelete');

Route::resource('kepanduan', 'PramukaController',['except'=>'show']);
Route::get('kepanduan/struktur/{id}','PramukaController@struktur');
Route::get('kepanduan/struktur/{id}/create','PramukaController@strukturCreate');
Route::post('kepanduan/struktur','PramukaController@strukturStore');
Route::get('kepanduan/struktur/{id}/edit','PramukaController@strukturEdit');
Route::patch('kepanduan/struktur/{id}','PramukaController@strukturUpdate');
Route::delete('kepanduan/struktur/{id}','PramukaController@strukturDelete');
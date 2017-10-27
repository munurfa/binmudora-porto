<style>
#container {
	width:9cm;
	height:13cm;
	font-family:Arial, Helvetica, sans-serif;
	background-image:url({{url("images/card.jpg")}});
}

.dinas {
	color:white;
	font-size:14px;
	margin-bottom:20px;
	padding-top:30px;
	font-weight:bold;
	text-align:center;
}

.event {
	color:yellow;
	font-size:14px;
	margin-bottom:20px;
	font-weight:bold;
	text-align:center;
}
.level {
	color:yellow;
	font-size:18px;
	font-weight:bold;
	text-align:center;
}
.atlit {
	color:yellow;
	font-size:28px;
	font-weight:bold;
	text-align:center;
	font-style:italic;
	margin-bottom:10px;
}
.foto {
	text-align:center;
	margin-bottom:20px;
}
.data table {
	color:black;
	font-size:14px;
	font-weight:bold;
}
.logo {
	padding-top:15px;
	padding-left:20px;
	float:left;
	width:50px;
}

</style>

<div id="container">
	<div class="logo">
	    <img src="{{url("images/logo.png")}}" width="50" height="55" />
    </div>
	<div class="dinas">
    	DINAS PENDIDIKAN, PEMUDA DAN OLAHRAGA<br />KABUPATEN PEMALANG
    </div>
    <div class="event">
		{{$kon->nama}}<br><div class='level'>{{$kon->level}}</div></div>
    <div class='atlit'>{{$kon_st->jabatan}}</div>	
    	<div class="foto">
    			@if($kon_st->foto == "")
			<img src="{{asset("images/no_user.jpg")}}">
		@else
			<img src="{{asset("public/foto/kontingen/".$kon_st->foto)}}" width="120px" height="160px">
		@endif 
    	</div>
    <div class="data">
    <table width="90%" border="0" cellspacing="1" cellpadding="5" align="center">
      <tr>
        <td width="32%">NAMA</td>
        <td width="68%">: {{$kon_st->nama_kontingen}}</td>
      </tr>
      <tr>
        <td>CABOR</td>
        <td>: 
		{{$kon_st->cabang}}</td>
      </tr>
      <tr>
        <td>KAB / KOTA</td>
        <td>: 
KAB.  PEMALANG</td>
      </tr>
    </table>
    </div>
</div>
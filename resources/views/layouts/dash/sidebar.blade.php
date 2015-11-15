<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="{{url('dashboard')}}"><i class="fa fa-dashboard fa-fw nav_icon"></i>DASHBOARD</a>
            </li>
               {{--  <li>
                    <a href="#"><i class="fa fa-newspaper-o  nav_icon"></i>MENU & ARTICLE<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">ARTICLE</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li> --}}
                <li>
                    <a href="#"><i class="fa fa-futbol-o nav_icon"></i>KEOLAHRAGAAN<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{url('atlit')}}">ATLIT</a>
                        </li>
                        <li>
                            <a href="{{url('pelatih')}}">PELATIH</a>
                        </li>
                        <li>
                            <a href="{{url('wasit')}}">WASIT</a>
                        </li>
                        <li>
                            <a href="{{url('koni')}}">KONI</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-motorcycle nav_icon"></i>KEPEMUDAAN<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{url("okp")}}">ORGANISASI KEPEMUDAAN</a>
                        </li>
                        <li>
                            <a href="{{url("knpi")}}">KNPI</a>
                        </li>
                        <li>
                            <a href="{{url("sp")}}">SARJANA PENGGERAK PEMBANGUNAN</a>
                        </li>
                        <li>
                            <a href="{{url("kepanduan")}}">KEPRAMUKAAN</a>
                        </li>
                     {{--    <li>
                            <a href="#">KEWIRAUSAHAAN</a>
                        </li>
                        <li>
                            <a href="#">PASKIBRAKA</a>
                        </li>
                        <li>
                            <a href="#">KAPAL PEMUDA NUSANTARA</a>
                        </li>
                        <li>
                            <a href="#">PEMUDA PELOPOR</a>
                        </li>
                        <li>
                            <a href="#">JAMBORE PEMUDA INDONESIA</a>
                        </li>
                        <li>
                            <a href="#">BAKTI PEMUDA ANTAR PROVINSI</a>
                        </li>
                        <li>
                            <a href="#">PERTUKARAN PEMUDA ANTAR NEGARA</a>
                        </li>
                        <li>
                            <a href="#">EVENT</a>
                        </li> --}}
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                
                <li>
                    <a href="#"><i class="fa fa-black-tie nav_icon"></i>SARPRAS<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{url('sarana/keolahragaan')}}">KEOLAHRAGAAN</a>
                        </li>
                        <li>
                            <a href="{{url('sarana/kepemudaan')}}">KEPEMUDAAN</a>
                        </li>
                        <li>
                            <a href="{{url('sarana/public')}}">AREA PUBLIC</a>
                        </li>
                        <li>
                            <a href="{{url('sarana/asset')}}">ASSET</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="#"><i class="fa fa-table nav_icon"></i>REPORT<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="{{url("report/kepemudaan")}}">KEPEMUDAAAN</a>
                        </li>
                        <li>
                            <a href="{{url("report/olahraga")}}">KEOLAHRAGAAN</a>
                        </li>
                        <li>
                            <a href="{{url("report/sarana")}}">SARANA PRASARANA</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="{{url("event")}}"><i class="fa fa-calendar-o  nav_icon"></i>EVENT</a>
                    
                </li>
             {{--    <li>
                    <a href="{{url("dashboard/edit")}}"><i class="fa fa-key nav_icon"></i>CHANGE PASSWORD</a>
                    
                </li> --}}
                <li>
                    <a href="{{url("auth/logout")}}"><i class="fa fa-sign-out nav_icon"></i>LOGOUT</a>
                    
                </li>
                
                
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
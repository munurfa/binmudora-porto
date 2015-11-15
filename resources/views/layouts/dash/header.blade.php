<!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Binmudora Pemalang</a>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	        		<a  class="dropdown-toggle" style="color: white;margin-left:20px" ><b>{{date("Y")}}</b></a>
	        	</li>
	        		
			    <li class="dropdown">
	        		<a  class="dropdown-toggle" style="color: white"><i class="fa fa-user"></i> {{Auth::user()->name}}</a>
	        		
	      		</li>
			</ul>
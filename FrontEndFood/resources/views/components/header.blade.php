
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> {{getConfigValueFromSettingTable('phone_contact')}}</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> {{getConfigValueFromSettingTable('email')}}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="{{getConfigValueFromSettingTable('facebook')}}"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="row">
                    <div class=" col-sm-5 logo pull-left">
                        <a href="{{route('home')}}"><img src="/Eshopper/images/home/logoQF.png" alt="" width="100%" height="auto" /></a>
                    </div>
                    
                    <!-- <div class="btn-group pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                USA
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canada</a></li>
                                <li><a href="#">UK</a></li>
                            </ul>
                        </div>
                        
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                DOLLAR
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canadian Dollar</a></li>
                                <li><a href="#">Pound</a></li>
                            </ul>
                        </div>
                    </div>-->
                   
                    <div class="col-sm-7 search_box pull-left">
                        <form class="form-inline" method="get" action="{{ route('searchProduct') }}">

                            <!-- <div class="form-group mx-sm-2 mb-2">
                                <label class="sr-only">Search </label>
                                <input type="text" class="form-control" name="key" placeholder="search">
                            </div> -->
                            <input type="text" class="form-control" name="key" placeholder="search">
                            <button type="submit" class="btn btn-primary mb-2">Search</button>
                        </form>
                    </div>
                    </div>
                </div> 
                <div class="col-sm-7">
                    <div class="shop-menu pull-right">
                        <ul class="navs navbar-nav">
                            <li><a href="#">
                                <?php
                                     if(!empty(auth()->user()->name))
                                
                                     echo 'xin chào ', auth()->user()->name;
                                
                                ?>
                            </a>
                            <li>
                                @if (Session::has('nofitication'))
                                {{Session::get('nofitication')}}
                               
                            @endif
                            
 
                            </li>
                            <li>@if (Session::has('nofitication1'))
                                {{Session::get('nofitication1')}}
                            @endif</li>
                           </li>
                            <li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
                            <li><a href="{{route('checkout')}}"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                            <li><a href="{{route('showCart')}}"><i class="fa fa-shopping-cart"></i> Cart</a></li>

                            <li>
                                <a href="{{route('index')}}"><i class="fa fa-lock"></i> Login</a>

                            </li>
                            
                            <li>
                                <a href="{{route('logout')}}"><i class="fa fa-sign-out"></i> Logout</a>

                            </li>
                        </ul>
                      
                    </div>
                  
                </div>
            </div>
            </div>
        </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    @include('components.main_menu')
                </div>
                <!-- <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <form class="form-inline" method="get" action="{{ route('searchProduct') }}">

                            <div class="form-group mx-sm-2 mb-2">
                                <label class="sr-only">Search </label>
                                <input type="text" class="form-control" name="key"
                                      
                                       placeholder="search">
                            </div>
                    
                         
                    
                    
                            <button type="submit" class="btn btn-primary mb-2">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
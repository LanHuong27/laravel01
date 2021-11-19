@extends('layouts.master')

@section('title')
<title>Login</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('home.home.css')}}">
@endsection
@section('js')
    <script src="{{asset('product/cart/cartajax.js')}}"></script>
@endsection
@section('content')

	<div>@if (Session::has('register'))
		{{ Session::get('register') }}
	@endif</div>
	<section id="form">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form action="{{route('login')}}" method="post">
                            @csrf
							<input type="email" placeholder="Email Address" name="email"/>
							<input type="password" placeholder="password" name="password" />
							<span>
								<input type="checkbox" id="remember-me" name="remember_me" class="checkbox"> 
								Keep me signed in
							</span>
							
							<button type="submit" class="btn btn-default">Login</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<form action="{{route('register')}}" method="post">
                            @csrf
							<input type="text" name="name" placeholder="Name"/>
							<input type="email" name="email" placeholder="Email Address"/>
							<input type="password" name="password" placeholder="Password"/>
							<button type="submit" class="btn btn-default">Signup</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section>
	




@endsection

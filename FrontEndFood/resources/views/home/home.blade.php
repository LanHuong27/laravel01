@extends('layouts.master')

@section('title')
<title>QuickFood</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('home.home.css')}}">
@endsection
@section('js')
    <script src="{{asset('product/cart/cartajax.js')}}"></script>
@endsection
@section('content')

{{-- slider --}}
@include('home.components.slider')
{{-- end slider --}}

<section>
    <div class="container">
        <div class="row">
           @include('components.slidebar')
            
            <div class="col-sm-9 padding-right">
                <!--features_items-->
                @include('home.components.feature_product')
                <!--features_items-->
                <!--category-tab-->
                @include('home.components.category_tag')
                <!--/category-tab-->
                <!--recommended_items-->
                @include('home.components.recommended_product')
                <!--/recommended_items-->
                
            </div>
        </div>
    </div>
</section>


@endsection




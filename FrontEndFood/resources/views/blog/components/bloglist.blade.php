<section>
    <div class="container">
        <div class="row">
            
                    @include('components.slidebar')
                
                   
                    
                 
              
            <div class="col-sm-9">
                <div class="blog-post-area">
                    <h2 class="title text-center">Latest From our Blog</h2>
                    @foreach ($blogs as $blog)
                    <div class="single-blog-post">
                        <h3>{{ $blog->title}}</h3>
                        <div class="post-meta">
                            <ul>
                                <li><i class="fa fa-user"></i> Dao Hai</li>
                                <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                <li><i class="fa fa-calendar"></i> DEC 5, 2021</li>
                            </ul>
                            <span>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                            </span>
                        </div>
                        <a href="">
                            <img src="{{ config('app.base_url') . $blog->feature_image_path }}" alt="">
                        </a>
                        <p>The term burger can also be applied to the meat patty on its own, especially in the United Kingdom, where the term patty is rarely used, or the term can even refer simply to ground beef. Since the term hamburger usually implies beef, for clarity burger may be prefixed with the type of meat or meat substitute used, as in beef burger, turkey burger, bison burger, portobello burger, or veggie burger.</p>
                        <a  class="btn btn-primary" href="{{route('blogDetail', ['id' => $blog->id])}}">Read More</a>
                    </div>
                    @endforeach
                    
                 
                </div>
            </div>
        </div>
    </div>
</section>

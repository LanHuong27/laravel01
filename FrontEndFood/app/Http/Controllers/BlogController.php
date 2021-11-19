<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Category;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    
    public function index()
    {
        $blogs = Blog::get();
        $categorys = Category::where('parent_id', 0)->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('blog.blog' , compact('categorysLimit', 'categorys', 'blogs') );
    }
    public function show($id)
    {
        $blogs = Blog::find($id);
        $categorys = Category::where('parent_id', 0)->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        return view('blog.blogdetail.blogDetail', compact('categorysLimit', 'categorys', 'blogs'));
    }
}

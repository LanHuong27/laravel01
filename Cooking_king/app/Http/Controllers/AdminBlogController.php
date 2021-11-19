<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Http\Requests\BlogAddRequest;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

use App\Traits\StorageImageTrait;
use App\Traits\DeleteModelTrait;

class AdminBlogController extends Controller
{
    use StorageImageTrait,DeleteModelTrait;
    private $blog;
    public function __construct(Blog $blog)
    {
        $this->blog = $blog;
    }
    public function index()
    {
        $blogs = $this->blog->latest()->paginate(5);
        return view('admin.blog.index', compact( 'blogs'));
    }
    public function create()
    {
        return view('admin.blog.add');
    }
    public function store(Request $request)
    {
        try {
            $dataInsert = [
                'title' => $request->name,
                'content' => $request->contents
            ];
            $dataImageSlider = $this->storageTraitUpload($request, 'feature_image_path', 'blog');
            if( !empty($dataImageSlider) ) {
                $dataInsert['feature_image_name'] = $dataImageSlider['file_name'];
                $dataInsert['feature_image_path'] = $dataImageSlider['file_path'];
            }
            $this->blog->create($dataInsert);
            return redirect()->route('blogs.index');
        } catch (Exception $exception) {
            Log::error('Error : ' . $exception->getMessage() . '---Line: ' . $exception->getLine());
        }

    }
    public function edit($id)
    {
        $blogs = $this->blog->find($id);
        return view('admin.blog.edit', compact('blogs'));
    }
    public function update($id,Request $request)
    {
        try {
            $dataInsert = [
                'title' => $request->name,
                'content' => $request->contents
            ];
            $dataImageSlider = $this->storageTraitUpload($request, 'feature_image_path', 'blog');
            if( !empty($dataImageSlider) ) {
                $dataInsert['feature_image_name'] = $dataImageSlider['file_name'];
                $dataInsert['feature_image_path'] = $dataImageSlider['file_path'];
            }
            $this->blog->find($id)->update($dataInsert);
            return redirect()->route('blogs.index');
        } catch (Exception $exception) {
            Log::error('Error : ' . $exception->getMessage() . '---Line: ' . $exception->getLine());
        }
    }
    public function delete($id)
    {
        return $this->DeleteModelTrait($id, $this->blog);
    }
}

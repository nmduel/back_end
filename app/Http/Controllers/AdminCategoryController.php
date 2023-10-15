<?php

namespace App\Http\Controllers;

use App\Components\CategoryRecusive;
use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Components\Recusive;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class AdminCategoryController extends Controller
{
    private $categoryRecusive;
    private $category;
    public function __construct(CategoryRecusive $categoryRecusive, Category $category)
    {
        $this->categoryRecusive = $categoryRecusive;
        $this->category = $category;
    }

    public function index()
    {
        $categories = $this->category->latest()->paginate(5);
        return view('admin.category.index', compact('categories'));
    }

    public function create()
    {
        $htmlOption = $this->categoryRecusive->categoryRecusiveAdd();
        return view('admin.category.add', compact('htmlOption'));
    }

    public function store(Request $request) {
        $this->category->create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect()->route('categories.index'); 
    }

        public function getCategory($parentId) {
            $data = $this->category->all();
            $recusive = new Recusive($data);
            $htmlOption = $recusive->categoryRecusive($parentId);

            return $htmlOption;
        }

    public function edit($id) {
        $category = $this->category->find($id);
        $htmlOption = $this->categoryRecusive->categoryRecusiveEdit($category->parent_id);    
        
        return view('admin.category.edit', compact('category', 'htmlOption'));
    }

    public function update($id, Request $request) {
        $this->category->find($id)->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect()->route('categories.index'); 
    }

    public function delete($id) 
    {
        try {
            $this->category->find($id)->delete();
            return response()->json([
                'code' => 200,
                'message' => 'success'
            ], 200);
        } catch (\Exception $exception) {
            Log::error('Message: ' . $exception->getMessage() . ' --- Line : ' . $exception->getLine());
            return response()->json([
                'code' => 500,
                'message' => 'fail'
            ], 500);
        }
    }

}

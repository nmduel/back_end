<?php

namespace App\Components;

use App\Models\Category;

class CategoryRecusive 
{
    private $html;
    public function __construct()
    {
        $this->html = '';
    }

    public function categoryRecusiveAdd($parentID = 0, $subMark = '')
    {
        $data = Category::where('parent_id', $parentID)->get();
        foreach($data as $dataItem)
        {
            $this->html .= '<option value="' . $dataItem->id . '">' . $subMark . $dataItem->name . '</option>';
            $this->categoryRecusiveAdd($dataItem->id, $subMark . '--');
        }

        return $this->html;
    }

    public function categoryRecusiveEdit($parentIdCategoryEdit, $parentID = 0, $subMark = '')
    {
        $data = Category::where('parent_id', $parentID)->get();
        foreach($data as $dataItem)
        {
            if($parentIdCategoryEdit == $dataItem->id)
            {
                $this->html .= '<option selected value="' . $dataItem->id . '">' . $subMark . $dataItem->name . '</option>';

            }else{
                $this->html .= '<option value="' . $dataItem->id . '">' . $subMark . $dataItem->name . '</option>';
            }
            $this->categoryRecusiveEdit($parentIdCategoryEdit, $dataItem->id, $subMark . '--');
        }

        return $this->html;
    }
}
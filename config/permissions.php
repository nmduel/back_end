<?php

return [
    'access' => [
        'category' => [
            'list-category' => 'category_list',
            'add-category' => 'category_add',
            'update-category' => 'category_edit',
            'delete-category' => 'category_delete'
        ],
        'menu' => [
            'list-menu' => 'menu_list',
            'add-menu' => 'menu_add',
            'update-menu' => 'menu_edit',
            'delete-menu' => 'menu_delete'
        ],
        'permission' => [
            'list-permission' => 'permission_list',
            'add-permission' => 'permission_add',
            'update-permission' => 'permission_edit',
            'delete-permission' => 'permission_delete'
        ],
        'product' => [
            'list-product' => 'product_list',
            'add-product' => 'product_add',
            'update-product' => 'product_edit',
            'delete-product' => 'product_delete'
        ],
        'role' => [
            'list-role' => 'role_list',
            'add-role' => 'role_add',
            'update-role' => 'role_edit',
            'delete-role' => 'role_delete'
        ],
        'setting' => [
            'list-setting' => 'setting_list',
            'add-setting' => 'setting_add',
            'update-setting' => 'setting_edit',
            'delete-setting' => 'setting_delete'
        ],
        'slider' => [
            'list-slider' => 'slider_list',
            'add-slider' => 'slider_add',
            'update-slider' => 'slider_edit',
            'delete-slider' => 'slider_delete'
        ],
        'user' => [
            'list-user' => 'user_list',
            'add-user' => 'user_add',
            'update-user' => 'user_edit',
            'delete-user' => 'user_delete'
        ]
    ],
    'table_module' => [
        'category',
        'slider',
        'menu',
        'product',
        'setting',
        'user',
        'role',
        'test'
    ],
    'module_children' => [
        'list',
        'add',
        'edit',
        'delete'
    ]
];
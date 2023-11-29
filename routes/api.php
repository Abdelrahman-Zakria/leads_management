<?php

use App\Http\Controllers\LeadController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;



Route::controller(LeadController::class)->group(function () {
    Route::get('/prototype/leads', 'getAll');
    Route::get('/prototype/leads/sync', 'sheetData');
    Route::get('/prototype/leads/new', 'getNew');
    Route::get('/prototype/leads/done', 'getDone');
    Route::get('/prototype/leads/lost', 'getLost');
    Route::get('/prototype/leads/{id}', 'getById');
});
Route::controller(UserController::class)->group(function () {
    Route::get('/prototype/sales', 'getSales');
    Route::get('/prototype/{name}/leads/{method}', 'getView');
});

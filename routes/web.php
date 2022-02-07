<?php

use App\Http\Controllers\AdminController;
use App\Http\Livewire\MyComponent;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompController;
use App\Http\Controllers\FrontendController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('frontend.index');
})->name('home');

Route::get('/mycomp', [CompController::class, 'index']);
Route::get('/yourcomp', [MyComponent::class, 'render']);
Route::get('/compform', [CompController::class, 'cform']);

Route::get('/', [FrontendController::class, 'home'])->name("home");
Route::get('/about', [FrontendController::class, 'about'])->name("about");
Route::get('/shop', [FrontendController::class, 'shop'])->name("shop");
Route::get('/product/{id}', [FrontendController::class, 'product'])->name("product");
Route::get('/contact', [FrontendController::class, 'contact'])->name("contact");

Route::prefix("/admin")->group(function(){
    Route::get('/dashboard', [AdminController::class, 'index'])->name('dashboard');
});

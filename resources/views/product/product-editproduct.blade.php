<!-- resources/views/product/product-addproduct.blade.php -->
@extends('layouts.master')

@section('title', 'Edit Product')

@section('content')
<div class="block-header">
    <h2>Edit Product - {{ $product->code }}</h2>
</div>

<form method="POST" action="/product/update">
{!! csrf_field() !!}
    <div class="card">

        <div class="card-body card-padding">

            @if (count($errors) > 0)
                <div class="alert alert-danger" role="alert">
                    <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                    </ul>
                </div>
            @endif

            @if(Session::has('success'))
                <div class="alert alert-success" role="alert">
                    {{ Session::get('success') }}
                </div>
            @elseif(Session::has('fail'))
                <div class="alert alert-danger" role="alert">
                    {{ Session::get('fail') }}
                </div>
            @endif

            <div class="row">
                <p class="f-500 m-b-20 c-black">Product Details: </p>
                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Code <sup class="req-star">*</sup></label>
                        <input type="text" name="code" class="form-control input-mask" placeholder="Product code..." value="{{ old('code') ? old('code') : $product->code }}">
                    </div>
                </div>

                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Description</label>
                        <input type="text" name="description" class="form-control input-mask" placeholder="Product description..." value="{{ old('description') ? old('description') : $product->description }}">
                    </div>
                </div>

                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Branch <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="branch_id" data-live-search="true">
                            @foreach ($branches as $branch)
                            <option value="{{ $branch->id }}"
                            @if ($branch->id == $product->branch_id)
                                selected="selected"
                            @endif
                            >{{ $branch->code }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Category <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="category_id" data-live-search="true">
                            @foreach ($categories as $category)
                            <option value="{{ $category->id }}"
                            @if ($category->id == $product->category_id)
                                selected="selected"
                            @endif
                            >{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Brand <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="brand_id" data-live-search="true">
                            @foreach ($brands as $brand)
                            <option value="{{ $brand->id }}"
                            @if ($brand->id == $product->brand_id)
                                selected="selected"
                            @endif
                            >{{ $brand->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Model <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="model_id" data-live-search="true">
                            @foreach ($models as $model)
                            <option value="{{ $model->id }}"
                            @if ($model->id == $product->model_id)
                                selected="selected"
                            @endif
                            >{{ $model->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body card-padding">
            <div class="row">
                <p class="f-500 m-b-20 c-black">Product Other Details: </p>

                <div class="col-sm-4 m-b-20">
                    <div class="form-group fg-line">
                        <label>Inventory Type <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="product_type_id" data-live-search="true">
                            @foreach ($product_types as $product_type)
                            <option value="{{ $product_type->id }}"
                            @if ($product_type->id == $product->product_type_id)
                                selected="selected"
                            @endif
                            >{{ $product_type->type }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-sm-3 m-b-20">
                    <div class="form-group fg-line">
                        <label>Product Status <sup class="req-star">*</sup></label>
                        <select class="selectpicker" name="active_status" data-live-search="true">
                        <option value="A"
                        @if ($product->active_status == 'A')
                            selected="selected"
                        @endif>Active</option>
                        <option value="I"
                        @if ($product->active_status == 'I')
                            selected="selected"
                        @endif>Inactive</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="pull-right m-r-25">
                    <input type="hidden" name="id" value="{{ $product->id }}" />
                    <button class="btn bgm-teal m-r-10" type="submit">Update</button>
                    <button class="btn bgm-gray" type="reset">Reset</button>
                </div>
            </div>
        </div>
    </div>
</form>

<script type="text/javascript">
    $(document).ready(function() {
        $(".sub-menu-inventory").addClass('active');
        $(".sub-menu-inventory").addClass('toggled');
    });
</script>
@endsection

@extends('layouts.appadmin')

@section('title')
    Modifier produit   
@endsection

@section('contenu')
<div class="row grid-margin">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Modifier produit</h4>
          @if(Session::has('status'))
            <div class="alert alert-success">
              {{Session::get('status')}}
            </div>
          @endif

          @if(count($errors) > 0)             
              @foreach($errors->all() as $error)                  
                  <div class="alert alert-danger">
                    <li>{{$error}}</li>
                  </div>    
              @endforeach
            </ul>             
          @endif

          {!! Form::open(['action' => ['App\Http\Controllers\ProductController@modifierproduit', $product->id], 'method' => 'POST', 'class' => 'cmxform', 'id' => 'commentForm', 'enctype' => 'multipart/form-data']) !!}

          {{csrf_field()}}
          <div class="form-group">   
              {{ Form::hidden('id', $product->id) }}
              {!! Form::label('', 'Nom du produit', ['for' => 'name']) !!}
              {!! Form::text('product_name', $product->product_name, ['class' => 'form-control', 'id' => 'name']) !!}
          </div>  

          <div class="form-group">
            {!! Form::label('', 'Prix du produit', ['for' => 'price']) !!}
            {!! Form::text('product_price', $product->product_price, ['class' => 'form-control', 'id' => 'price']) !!}
          </div>

          <div class="form-group">
            {!! Form::label('', 'Catégorie du produit', ['for' => 'category']) !!}
            {!! Form::select('product_category', $categories, $product->product_category, ['class' => 'form-control']) !!}    
          </div>

          <div class="form-group">
            {!! Form::label('product_image', 'Image du produit') !!}
            {!! Form::file('product_image', ['class' => 'form-control', 'id' => 'product_image']) !!}
          </div>                   
            
          {!! Form::submit('Modifier', ['class' => 'btn btn-primary']) !!}
          {!! Form::close() !!}   
        </div>
      </div>
    </div>
  </div>
@endsection

@section('scripts')
<!--
    <script src="backend/js/form-validation.js"></script>
    <script src="backend/js/bt-maxLength.js"></script>
-->
@endsection



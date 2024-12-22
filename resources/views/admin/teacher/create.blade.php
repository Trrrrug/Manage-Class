@extends('layout.master')
<!-- start page title -->

@section('breadcrum')
    {{ Breadcrumbs::render('classCreate') }}
@endsection
<!-- end page title -->


@push('css')

    <!-- end row -->

@endpush
<!-- end row -->

@section('content')

    <div class="col-12">
        <form method="post" action="{{route('admin.teacher.store')}}">
            <div class="row">
                <div class="col-12">
                    @if ($errors->any())
                        <div class="alert alert-danger">

                            @foreach ($errors->all() as $error)
                                <p>{{ $error }}</p>
                            @endforeach

                        </div>
                    @endif
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    @csrf
                    <div class="col-xl-12" data-select2-id="6">

                        <div class="form-group">
                            <label for="name">Họ và tên</label>
                            <input type="text" id="name" class="form-control" name="name" placeholder="Nhập Tên" value="{{old('name')}}">
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại/email</label>
                            <input type="text" id="phone" name="phone" class="form-control" placeholder="Nhập SĐT" value="{{old('phone')}}">
                        </div>
                        <div class="form-group mb-0 justify-content-end row">
                            <div class="col-9">
                                <button type="submit" class="btn btn-info  ">Thêm sinh viên/ giáo viên</button>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-6">

                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" class="form-control" name="password" placeholder="Nhập mật khẩu" value="{{old('password')}}">
                    </div>
                    <div class="form-group">
                        <label for="type">Mật khẩu</label>
                        <select name="type" id="type" class="form-control select2" data-toggle="select2">
                            <option value="1">Giáo viên</option>
                            <option value="2">Học sinh</option>
                        </select>
                    </div>

                        <input type="hidden" id="level" value="1" name="level" >


                </div>
            </div>
        </form>
    </div>

@endsection
<!-- end row-->

@push('js')



@endpush

<!-- end row-->

<!-- End Content -->

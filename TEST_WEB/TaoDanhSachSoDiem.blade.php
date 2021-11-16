
@extends('Admin.layout.index') 
@section('content')

 
<!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper small-text">
    <!-- Content Header (Page header) -->
    <section class="content-header">
            <div class="card">
               
              <div class="card-header">
                <h3 class="card-title">DANH SÁCH SỔ ĐIỂM</h3>
              </div>
              <!-- /.card-header -->
                     <div class="form-group col-md-9">
          <label for="exampleInputEmail1">Lớp học - Khóa học</label>
          <form action="danhsachsodiem" method="POST" enctype="multipart/form-data">
            {{csrf_field()}}
            <select class="select2 form-control" style="width: 340px;" type="submit" name="id_lop">


             @foreach($thuockhoahoc as $kh)
              @foreach($thuoc_lop as $tl)
              @if($tl->id_KHOAHOC == $kh->id)
              <option selected value="{{$tl->id}}">{{$tl->L_TEN}} - {{$kh->KH_MASO}}</option>
              @endif
              @endforeach
              @endforeach
            </select>
            <button id="add-new-event" type="submit" class="btn btn-primary">Tìm kiếm</button>
          </form>
        </div>
            
                 <div class="card-header">
                <form action="{{URL::to('nhapdiem/')}}" method="post">
                  <input type="hidden" name="id_lop" value="{{$id_lop}}">
              
                </form>
             
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th style="width: 15%;">Họ và tên</th>
                    <th>Kiểm tra Module 1</th>
                    <th>Kiểm tra Module 2</th>
                    <th>Kiểm tra Module 3</th>
                    <th>Kiểm tra khóa học</th>
                    <th>Thi lý thuyết</th>
                    <th>Thi thực hành</th>
                    <th>Điểm trung bình</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                   



                  @foreach($hoctailop as $htl)
                    <form action="{{URL::to('nhapdiem/')}}" method="post">
                        {{csrf_field()}}
                        @php
                            $diemMD1 = 0;
                            $diemMD2 = 0;
                            $diemMD3 = 0;
                            $diemKTT = 0; 
                            $diemLT = 0;
                            $diemTH = 0;
                        @endphp
                         <tr>
                          <td>{{$stt++}}</td>
                          <td>{{$htl->thuoc_hocvien->HV_HOTEN}}</td>
                        <td>
                        @foreach($diemhocvien as $dhv)
                             @if($dhv->id_LOAIDIEM == 1 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemMD1 = $dhv->D_GIATRI;
                                    @endphp
                                   <input  type="hidden" name="module1" value="{{$dhv->D_GIATRI}}">
                                   <input type="hidden" name="id_DIEM_1" value="{{$dhv->id}}">
                             @endif
                        @endforeach
                        {{ $diemMD1 }}
                        </td>
                        <td>
                        @foreach($diemhocvien as $dhv)
                              @if($dhv->id_LOAIDIEM == 2 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemMD2 = $dhv->D_GIATRI;
                                    @endphp
                                   <input type="hidden" name="module2" value="{{$dhv->D_GIATRI}}">
                                   <input type="hidden" name="id_DIEM_2" value="{{$dhv->id}}">
                             @endif
                        @endforeach
                        {{ $diemMD2 }}
                        </td>
                        <td>
                        @foreach($diemhocvien as $dhv)
                               @if($dhv->id_LOAIDIEM == 3 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemMD3 = $dhv->D_GIATRI;
                                    @endphp
                                    <input type="hidden" name="module3" value="{{$dhv->D_GIATRI}}">
                                    <input type="hidden" name="id_DIEM_3" value="{{$dhv->id}}">
                               @endif
                        @endforeach
                        {{ $diemMD3 }}
                        </td> 
                        <td>
                       @foreach($diemhocvien as $dhv)
                              @if($dhv->id_LOAIDIEM == 4 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemKTT = $dhv->D_GIATRI;
                                    @endphp
                                    <input type="hidden" name="kiemtrakhoahoc" id='ly_thuyet' value="{{$dhv->D_GIATRI}}">
                                    <input type="hidden" name="id_DIEM_4" value="{{$dhv->id}}">
                              @endif
                       @endforeach
                       {{ $diemKTT }}
                        </td>
                        <td>
                      @foreach($diemhocvien as $dhv)
                            @if($dhv->id_LOAIDIEM == 5 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemLT = $dhv->D_GIATRI;
                                    @endphp
                                   <input type="hidden" name="thilythuyet" id='thilythuyet' value="{{$dhv->D_GIATRI}}">
                                   <input type="hidden" name="id_DIEM_5" value="{{$dhv->id}}">
                                   @php
                                        $diemLT = $dhv->D_GIATRI;
                                   @endphp
                            @endif
                      @endforeach
                        {{ $diemLT }}
                       </td>   
                        <td>
                        @foreach($diemhocvien as $dhv)
                            @if($dhv->id_LOAIDIEM == 6 && $dhv->id_HOCVIEN == $htl->thuoc_hocvien->id)
                                    @php
                                        $diemTH = $dhv->D_GIATRI;
                                    @endphp
                                   <input type="hidden" name="thithuchanh" id='thithuchanh'  value="{{$dhv->D_GIATRI}}">
                                   <input type="hidden" name="id_DIEM_6" value="{{$dhv->id}}">
                                   @php
                                        $diemTH = $dhv->D_GIATRI;
                                   @endphp
                            @endif
                        @endforeach
                        {{ $diemTH }}
                        </td>
                        <td>
                            {{ ($diemLT + ($diemTH*2))/3 }}
                        </td>
                          <td>        
                            <input type="hidden" name="id_LOP" value="{{$id_lop}}">
                            <input type="hidden" name="id_HOCVIEN" value="{{$htl->thuoc_hocvien->id}}">
                            <button tyle="submit"  style="border:0px; ">
                                <a class="btn btn-primary btn-sm" >
                                <i class="fas fa-pencil-alt"></i></a>
                            </button>
                          </td>
                        </form>
                        </tr>

                            
                 @endforeach

                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
             <div class="modal fade" id="editcoso" tabindex="1" aria-labelledby="editHocVienModalLabel" aria-hidden="true">
     
    </div>
            <!-- /.card -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection
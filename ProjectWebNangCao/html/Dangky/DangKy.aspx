<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/WebTotal.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="ProjectWebNangCao.html.Dangky.DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="dangky.css" rel="stylesheet" />
    <div class="Registration-Content">
        <div class="wrap-registration-content">
            <div class="registration-form-panel">
                <div class="panel-input-continue">
                    <div class="input-continue-fb">
                        <img src="../../images/fb.png" />
                        <h4>Tiếp tục với facebook</h4>
                    </div>
                    <div class="input-continue-gg">
                        <img src="../../images/google.png" />
                        <h4>Tiếp tục với Google</h4>
                    </div>
                    <div class="hihi">
                        <hr />
                        <div>HOẶC</div>
                        <hr />
                    </div>
                </div>
                <div class="panel-email-registration">
                    <h4>ĐĂNG KÝ BẰNG EMAIL</h4>
                    <div class="form-input-regis">
                        <label>Email <span style="color: red">*</span></label>
                        <input type="text" name="email" />
                    </div>
                    <div class="form-input-regis">
                        <label>Mật khẩu <span style="color: red">*</span></label>
                        <input type="text" name="mật khẩu" />
                    </div>
                    <div class="form-input-regis">
                        <label>Xác nhận lại mật khẩu <span style="color: red">*</span></label>
                        <input type="text" name="xác nhận mật khẩu" />
                    </div>
                </div>
                <div class="form-submit-regis">
                    <p>Chọn đăng ký là bạn đã đồng ý với các <a href="#">Điều khoản và dịch vụ</a> của Mytour.vn</p>
                    <button>ĐĂNG KÝ</button>
                </div>
                <hr class="hr-outside"/>
                <div class="have-account">
                    <div class="have-account--description">
                        <span>Đã có tài khoản Mytour.vn?</span>
                    </div>
                    <div class="btn-input-login">
                        <button>Đăng nhập</button>
                    </div>
                </div>
            </div>
            <div class="panel-advantage">
                <div class="panel-wrap-advantage">
                    <h3>Lợi ích khi tạo tài khoản</h3>
                    <ul class="list-advantage">
                        <li>
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            Đặt phòng với giá giảm đến 40%.
                        </li>
                        <li>
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            Tích lũy điểm thưởng Vpoint với mỗi đơn phòng.
                        </li>
                        <li>
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            Nhận ưu đãi đặc biệt chỉ dành cho thành viên.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
          <div class="panel--hotels-by-city">
                <h4>KHÁCH SẠN THEO CÁC TỈNH THÀNH</h4>
                <hr />
                 <p>
                    <a href="#">An Giang</a>,
                    <a href="#"><strong>Bà Rịa - Vũng Tàu,</strong></a>
                    <a href="#">Bắc Giang,</a>
                    <a href="#">Bắc Kan</a>
                    <a href="#">, Bạc Liêu</a>
                    <a href="#">, Bến Tre</a>
                    <a href="#">Bắc Ninh</a>
                    <a href="#">, Bình Định</a>
                    <a href="#"> Bình Dương</a>,
                    <a href="#"> Bình Phước</a>,
                    <a href="#"> Bình Thuận</a>,
                    <a href="#"> Cà Mau</a>,
                    <a href="#"> Cần Thơ</a>,
                    <a href="#"> Cao Bằng</a>,
                    <a href="#"> <strong>Đà Nẵng</strong></a>,
                    <a href="#"> Đăk Nông</a>,
                    <a href="#"> Đăk Lăk</a>,
                    <a href="#"> Điện Biên</a>,
                    <a href="#"> Đồng Nai</a>,
                    <a href="#"> Đồng Tháp</a>,
                    <a href="#"> Gia Lai</a>,
                    <a href="#"> Hà Giang</a>,
                    <a href="#"> Hà Nam</a>,
                    <a href="#"> <strong>Hà Nội</strong></a>,
                    <a href="#"> Hà Tĩnh</a>,
                    <a href="#"> Hải Dương</a>,
                    <a href="#"> Hải Phòng</a>,
                     <a href="#"> Hậu Giang</a>,
                    <a href="#"><strong>Hồ Chí Minh</strong></a>,
                    <a href="#">Hòa Bình</a>,
                    <a href="#">Hưng Yên</a>,
                    <a href="#"> Khánh Hòa</a>,
                    <a href="#"> Kiên Giang</a>,
                    <a href="#"> Kon Tum</a>,
                    <a href="#"> Lai Châu</a>,
                    <a href="#"> Lâm Đồng</a>,
                    <a href="#"> Lạng Sơn</a>,
                    <a href="#"> Lào Cai</a>,
                    <a href="#"> Long An</a>,
                    <a href="#"> Nam Định</a>,
                    <a href="#"> Nghệ An</a>,
                    <a href="#"> Ninh Bình</a>,
                    <a href="#"> Ninh Thuận</a>,
                    <a href="#"> Phú Thọ</a>,
                    <a href="#"> Phú Yên</a>,
                    <a href="#"> Quảng Bình</a>,
                    <a href="#">Quảng Nam</a>,
                    <a href="#"> Quảng Ngãi</a>,
                    <a href="#"> Quảng Ninh</a>,
                    <a href="#">Quảng Trị</a>,
                    <a href="#"> Sóc Trăng</a>,
                    <a href="#"> Sơn La</a>,
                    <a href="#"> Tây Ninh</a>,
                     <a href="#"> Thái Bình</a>,
                    <a href="#"> Thái Nguyên</a>,
                    <a href="#"> Thanh Hóa</a>,
                    <a href="#"> Thừa Thiên Huế</a>,
                    <a href="#"> Tiền Giang</a>,
                    <a href="#"> Trà Vinh</a>,
                    <a href="#"> Tuyên Quang</a>,
                    <a href="#"> Vĩnh Long</a>,
                    <a href="#"> Vĩnh Phúc</a>,
                    <a href="#"> Yên Bái</a>
                </p>
            </div>
    </div>
</asp:Content>

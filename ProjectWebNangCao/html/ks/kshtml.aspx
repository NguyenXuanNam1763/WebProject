<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/WebTotal.Master" AutoEventWireup="true" CodeBehind="kshtml.aspx.cs" Inherits="ProjectWebNangCao.html.ks.kshtml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="ks-css.css" rel="stylesheet" />
    <div id="id-ks">
        <div class="section-search">
            <div class="section-search-container">
                <div class="row1">
                    <div class="row1--search-banner-hotel">
                        <div class="wrap--search-baner-hotel">
                            <ul class="search--hotel--vn-nn">
                                <li>
                                    <a href="#">Việt Nam</a>
                                    <div class="gach-chan1"></div>
                                </li>
                                <li>
                                    <a href="#">Nước Ngoài</a>
                                    <div class="gach-chan1"></div>
                                </li>
                            </ul>
                            <div class="search-form-banner-div">
                                <div class="search-form-banner-wrap-input">
                                    <i class="fa fa-bed" aria-hidden="true"></i>
                                    <input type="text" name="ks" placeholder="Khách sạn tại Hà Nội" />
                                </div>
                                <div class="search-form-banner-wrap-input">
                                    <div class="sub-calendar border-right">
                                        <i class="fa fa-calendar-plus-o" aria-hidden="true"></i>
                                        <input type="date" name="ngày kh" />
                                    </div>
                                    <div class="sub-calendar">
                                        <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                                        <input type="date" name="ngày kh" />
                                    </div>
                                </div>
                                <div class="search-form-banner-wrap-input">
                                    <div class="check-room-and-person">
                                        <i class="fa fa-key fa-rotate-90" aria-hidden="true"></i>
                                        <input type="number" name="sl phòng" value="1" min="1" max="10" />
                                        <label>Phòng</label>
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <input type="number" name="sl khách" value="2" min="1" max="10" />
                                        <label>Khách</label>
                                    </div>
                                </div>
                                <div class="btn-search-form--submit">
                                    <input type="submit" name="Tìm khách sạn" value="Tìm khách sạn" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <%-- <div class="row1-container">
                        <ul class="country">
                            <li><a href="#">Việt Nam</a></li>
                            <li><a href="#">Nước Ngoài</a></li>
                        </ul>
                        <div class="section-search-form">
                            <div class="section-search-form-1">
                                <img src="../../images/car_icon.PNG" height="35" width="35" />
                                <input type="text" name="tb_search" placeholder="Nhập địa điểm, khách sạn bạn muốn đến..." />
                            </div>
                            <div class="section-search-form-1">
                                <img src="../../images/calender.PNG" height="30" width="30" />
                                <input type="date" name="cal-from" style="width: 130px;" />
                                <input type="date" name="cal-to" style="width: 130px;" />
                            </div>
                            <div class="section-search-form-1" style="height: 52px;">
                                
                            </div>

                            <div class="timkhachsan">
                                <input type="button" name="btn-click-timkhachsan" value="Tìm khách sạn" class="btn-click-timkhachsan" />
                            </div>
                        </div>
                    </div>--%>
                </div>
                <div class="row2">
                    <ul>
                        <li class="slide active"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_1.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_2.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_3.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_4.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_5.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_6.png" height="380" width="770" /></a></li>
                        <li class="slide"><a href="Uudai.aspx">
                            <img src="../../images/slide_img_7.png" height="380" width="770" /></a></li>
                    </ul>
                    <div class="direction-left">
                        <a class="prev" href="#">
                            <img src="../../images/direction_left.png" width="30" height="30" style="margin-top: 10px; margin-left: 14px;" /></a>
                    </div>
                    <div class="direction-right">
                        <a class="next" href="#">
                            <img src="../../images/direction_right.png" width="30" height="30" style="margin-top: 10px; margin-left: 6px;" /></a>
                    </div>
                </div>
                <div class="circle-point">
                    <ul>
                        <li class="active_nut"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="diadiem-vn">
            <h3>ĐIỂM ĐẾN PHỔ BIẾN VIỆT NAM</h3>
            <hr>
            <div class="diadiem-vn-container">
                <asp:Repeater runat="server" ID="rpProduct">
                    <ItemTemplate>
                        <div class="diadiem-vn-container-component">
                            <a href="<%# "../ctks/ctks.aspx?ma_tinh="+Eval("ma_tinh").ToString()  %>">
                                <img src="../../images/<%# Eval("dc_url").ToString() %>"></a>
                            <div class="diadiem-vn-container-component-title-background">
                            </div>
                            <div class="diadiem-vn-container-component-title">
                                <a href="CtKhachSan.aspx"><%# Eval("ten_dd").ToString() %></a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>
        <div class="diadiem-nn">
            <div class="diadiem-vn" style="height: 500px;">
                <h3>ĐIỂM ĐẾN PHỔ BIẾN NƯỚC NGOÀI</h3>
                <hr>
                <div class="diadiem-vn-container">
                    <asp:Repeater runat="server" ID="rpForeign">
                        <ItemTemplate>
                            <div class="diadiem-vn-container-component">
                                <a href="../ctks/ctks.aspx">
                                    <img src="../../images/<%# Eval("dc_url").ToString() %>"></a>
                                <div class="diadiem-vn-container-component-title-background">
                                </div>
                                <div class="diadiem-vn-container-component-title">
                                    <a href="CtKhachSan.aspx"><%# Eval("ten_dd").ToString() %></a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="footer-ks">
            <div class="footer-ks-left">
                <ul>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_1.png" height="380" width="770" stt="0" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_2.png" height="380" width="770" stt="1" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_3.png" height="380" width="770" stt="2" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_4.png" height="380" width="770" stt="3" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_5.png" height="380" width="770" stt="4" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_6.png" height="380" width="770" stt="5" /></a></li>
                    <li class=""><a href="#">
                        <img src="../../images/slide_img_7.png" height="380" width="770" stt="6" /></a></li>
                </ul>
                <div class="direction-left">
                    <a class="prev">
                        <img src="../../images/direction_left.png" width="30" height="30" style="margin-top: 10px; margin-left: 14px;" /></a>
                </div>
                <div class="direction-right">
                    <a class="next">
                        <img src="../../images/direction_right.png" width="30" height="30" style="margin-top: 10px; margin-left: 6px;" /></a>
                </div>
            </div>
            <div class="footer-ks-right">
                <img src="../../images/footer-ks-right.jpg" height="420" width="558" />
            </div>
        </div>
    </div>
</asp:Content>

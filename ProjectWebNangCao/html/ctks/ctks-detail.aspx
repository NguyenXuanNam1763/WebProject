<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage/WebTotal.Master" AutoEventWireup="true" CodeBehind="ctks-detail.aspx.cs" Inherits="ProjectWebNangCao.html.ctks.ctks_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="ctks-detail.css" rel="stylesheet" />
    <link href="../../css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <div class="container--ctks-details">
        <div class="ctks-header">
            <div class="ctks-header-container">
                <div class="ctks-detail--search">
                    <i class="fa fa-bed icon--ctks-detail--input"></i>
                    <input type="text" name="search khách sạn" placeholder="Hiển thị tên của ks vừa click vào" />
                </div>
                <div class="ctks-detail--calendar">
                    <div class="item-calendar">
                        <i class="fa fa-calendar icon-calendar-input" aria-hidden="true"></i>
                        <input type="date" name="Ngày kh" class="ctks-detail--date" />
                    </div>
                    <div class="gach-doc">
                    </div>
                    <div class="item-calendar">
                        <i class="fa fa-calendar icon-calendar-input" aria-hidden="true"></i>
                        <input type="date" name="ngày kt" class="ctks-detail--date" />
                    </div>
                </div>
                <div class="ctks-detail--book-room">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input type="number" name="so phong" value="1" max="10" min="1"/>
                    <label>Phòng</label>
                    <i class="fa fa-users" aria-hidden="true"></i>
                    <input type="number" name="so phong" value="2" max="10" min="1"/>
                    <label>Khách</label>
                </div>
                <div class="ctks-detail--update-price">
                    <input type="submit" name="cập nhật giá" value="Cập nhật giá" />
                </div>
            </div>
        </div>
        <hr style="width: 1170px; border-bottom: 0px;" />

    </div>
</asp:Content>

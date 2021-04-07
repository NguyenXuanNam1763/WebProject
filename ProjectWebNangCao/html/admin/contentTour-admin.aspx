<%@ Page Title="" Language="C#" MasterPageFile="~/html/admin/Home-admin.Master" AutoEventWireup="true" CodeBehind="contentTour-admin.aspx.cs" Inherits="ProjectWebNangCao.html.admin.contentTour_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../css/content-Tour.css" rel="stylesheet" />
    <link href="../../css/font-awesome/CSS/font-awesome.min.css" rel="stylesheet" />
    <div class="content-tour">
        <h3 class="hello-admin">Xin chào admin!</h3>
        <div class="gridview-tour">
            <asp:GridView runat="server" AutoGenerateColumns="false" ID="gridviewTour"
                OnRowCommand="gridviewTour_RowCommand"
                OnRowCancelingEdit="gridviewTour_RowCancelingEdit"
                OnRowUpdating="gridviewTour_RowUpdating"
                OnRowEditing="gridviewTour_RowEditing" CssClass="grvTour">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Mã Tour"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbMaTour" runat="server" Text='<%# Eval("ma_tour") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Tên Tour"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("ten_tour").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbTenTour" runat="server" Text='<%# Eval("ten_tour").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Ngày khởi hành"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("ngay_kh").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbNgayKh" runat="server" Text='<%# Eval("ngay_kh").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Điểm khởi hành"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("diem_kh").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbDiemKh" runat="server" Text='<%# Eval("diem_kh").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Giới thiệu tour"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("gioi_thieu_tour").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbGioiThieu" runat="server" Text='<%# Eval("gioi_thieu_tour").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Thời gian"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("thoi_gian").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbThoiGian" runat="server" Text='<%# Eval("thoi_gian").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Lịch trình"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("lich_trinh").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbLinhTrinh" runat="server" Text='<%# Eval("lich_trinh").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Khuyến mãi"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("khuyen_mai_tour").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbKhuyenMai" runat="server" Text='<%# Eval("khuyen_mai_tour").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Giá tour"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("gia_tour").ToString() %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="tbGiaTour" runat="server" Text='<%# Eval("gia_tour").ToString() %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Đánh giá tour"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="danhGia" runat="server" Text='<%# Eval("danh_gia_tour").ToString() %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Lượt chia sẻ"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="slChiaSe" runat="server" Text='<%# Eval("sl_chia_se").ToString() %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Lượt thích"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbSlThich" runat="server" Text='<%# Eval("sl_thich").ToString() %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Chức năng">
                            </asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%-- <asp:LinkButton runat="server" ID="btnSua" Text="Sửa" CommandName="Edit" ToolTip="Edit"><i class="fa fa-pencil-square-o btn-icon text-primary" aria-hidden="true"></i></asp:LinkButton>--%>
                            <button type="button" class="button-edit" data-toggle="modal" data-target="#infoTour">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            </button>
                            <asp:LinkButton runat="server" ID="btnXoa" CssClass="text-danger" Text="Xóa" CommandArgument='<%# Eval("ma_tour") %>' OnCommand="btnXoa_Command" OnClientClick="return checkDeleteTour()"><i class="fa fa-trash-o btn-icon" aria-hidden="true"></i></asp:LinkButton>
                        </ItemTemplate>
                        <%-- <EditItemTemplate>
                                    <asp:LinkButton runat="server" ID="btnSave" Text="Lưu" CommandName="Update" ToolTip="Update"><i class="fa fa-floppy-o" aria-hidden="true"></i></asp:LinkButton>
                                    <asp:LinkButton runat="server" ID="btnCancel" Text="Trở về" CommandName="Cancel" ToolTip="Cancel"><i class="fa fa-reply" aria-hidden="true"></i></asp:LinkButton>
                                </EditItemTemplate>--%>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="container">
                <!-- Modal -->
                <div class="modal fade" id="infoTour" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Thông tin tour</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <%--   <form class="form-horizontal">--%>
                                <div class="form-group row">
                                    <label class="control-label col-md-3 text-decoration">Mã Tour:</label>
                                    <div class="col-md-9">
                                        <%--<input type="text" class="form-control">--%>
                                        <asp:Label ID="lbMaTour" runat="server" Text='<%# Eval("ma_tour") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3 text-decoration">Tên Tour:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Ngày khởi hành:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Điểm khởi hành:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Giới thiệu Tour:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Thời gian:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Lịch trình:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Khuyến mãi:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Giá tour:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Đánh giá tour:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Lượt chia sẻ:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="ma_tour" class="control-label col-md-3 text-decoration">Lượt thích:</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <%--    </form>--%>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-cancel" data-dismiss="modal">Cancel</button>
                                <button type='button' class='btn btn-outline-success'>Save</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

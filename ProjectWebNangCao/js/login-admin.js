function valid() {
    var tk = document.getElementById('txtTaiKhoan').value;
    var mk = document.getElementById('txtMatKhau').value;
    if (tk.length == 0 || mk.length == 0) {
        return false;
    }
    return true;
}




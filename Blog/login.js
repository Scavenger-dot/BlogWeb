$(document).ready(function () {
    $("#TextBox1").change(function () {
        var str = $("#TextBox1").val();
        check(str);
    });
});
function check(str) {
    var re = /^(13[0-9]|14[0-9]|15[0-9]|166|17[0-9]|18[0-9]|19[8|9])\d{8}$/;
    if (re.test(str)) {
        $("#Label1").text("");
    }
    else {
        alert("请输入正确的手机号");
    }
}

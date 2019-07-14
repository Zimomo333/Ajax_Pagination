<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>列表</title>
</head>
<script type="text/javascript" src="js/jquery.min.js"></script>

<body>
<table>
<tr>
    <td colspan="5">
        <button onclick="page(this)" class="frstn">首页</button>
        <button onclick="page(this)" class="prvtn">上一页</button>
        <span id="page"></span>
        <button onclick="page(this)" class="nxttn">下一页</button>
        <button onclick="page(this)" class="lsttn">尾页</button>
    </td>
</tr>
</table>

<script type="text/javascript">
    $(function(){
        $.ajax({
            url:"/AjaxServlet",
            data:{},
            dataType:"json",
            type:"post",
            success:function(obj){
                //alert("fun");
                for(var i=0;i<obj[1].length;i++){
                    $("table tr:first").after(
                        "<tr id='list'><td>"+obj[1][i].goods_name+"</td><td>"+obj[1][i].goods_desc+"</td><td>"+obj[1][i].price+"</td></tr>"
                    )
                }
                $("#page").text(obj[0].currentPage+"/"+obj[0].lastPage);
                $(".frstn")[0].id=1;
                $(".prvtn")[0].id=obj[0].prePage;
                $(".nxttn")[0].id=obj[0].nextPage;
                $(".lsttn")[0].id=obj[0].lastPage;
            }
        });
    })
    function page(btn){
// 		alert(btn.id);
        var page=btn.id;
        $.ajax({
            url:"/AjaxServlet?method=changePage&page="+page,
            type:"post",
            data:{},
            dataType:"json",
            success:function(obj){
                //alert(obj[1].length);
                $("#page").text(obj[0].currentPage+"/"+obj[0].lastPage);
                $(".frstn")[0].id=1;
                $(".prvtn")[0].id=obj[0].prePage;
                $(".nxttn")[0].id=obj[0].nextPage;
                $(".lsttn")[0].id=obj[0].lastPage;
                for(var i=0;i<obj[0].pageSize;i++){
                    $("#list").remove();
                }
                for(var i=0;i<obj[1].length;i++){
                    $("table tr:first").after(
                        "<tr id='list'><td>"+obj[1][i].goods_name+"</td><td>"+obj[1][i].goods_desc+"</td><td>"+obj[1][i].price+"</td></tr>"
                    )
                }
            }
        });
    }
</script>
</body>
</html>
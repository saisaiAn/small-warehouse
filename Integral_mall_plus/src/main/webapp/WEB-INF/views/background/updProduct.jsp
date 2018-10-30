<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>商品详情</title>
    <link href="/static/background/assets/css/bootstrap.min.css" rel="stylesheet"/>

    <script src="/static/background/js/jquery-1.9.1.min.js"></script>
    <script src="/static/background/assets/layer/layer.js" type="text/javascript"></script>
</head>
<body>
<form class="form-horizontal" name="proForm" action="" method="post">
    <input type="hidden" name="commodityno" id="proid" value="${pro.commodityno}"/>
    <div class="form-group" >
        <label  class="col-sm-2 control-label">商品名称</label>
        <div class="col-sm-10">
            <input type="text" class="form-control readonly"  name="commoditytitle" id="commoditytitle" value="${pro.commoditytitle}" style="width: 250px;" readonly="readonly">
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">商品价格</label>
        <div class="col-sm-10">
            <input type="text" class="form-control readonly" name="price" id="price" value="${pro.price}" style="width: 220px;" readonly="readonly">
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label ">商品所需积分</label>
        <div class="col-sm-10">
            <input type="text" class="form-control readonly" name="needintegral" id="needintegral" value="${pro.needintegral}" style="width: 220px;" readonly="readonly">
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">商品详情</label>
        <textarea class="form-control readonly" rows="3" style="width: 600px;" name="commoditydetails" id="commoditydetails" readonly="readonly">${pro.commoditydetails}</textarea>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">商品库存</label>
        <div class="col-sm-10">
            <input type="text" class="form-control readonly" name="commodityinventory" id="commodityinventory"  value="${pro.commodityinventory}" style="width: 200px;" readonly="readonly">
        </div>
    </div>

    <div class="form-group">
        <label  class="col-sm-2 control-label">商品分类</label>
        <select class="form-control" name="commoditytypeno" id="commoditytypeno" style="width: 230px;">
            <option value="${pro.commodityTypeId.commoditytypeno}">${pro.commodityTypeId.commoditytypename}</option>
            <c:forEach items="${proType}" var="ptype">
                <option value="${ptype.commoditytypeno}">${ptype.commoditytypename}</option>
            </c:forEach>
        </select>
    </div>

    <div class="form-group" style="width: 250px;height: 250px;margin-left: 450px;margin-top: -100px;">
        <label  class="col-sm-2 control-label">商品图片</label>
        <div style="width: 200px;height: 230px;margin-left: 50px;margin-top: 20px;">
            <c:forEach items="${img}" var="i">
                <c:if test="${i.imageclassification==3}">
                    <c:if test="${pro.commodityno==i.imagerid}">
                        <img src="${i.imagerurl}" style="width: 200px;height: 200px;"/>
                    </c:if>
                </c:if>
            </c:forEach>
        </div>
        <button type="button" class="btn btn-success">修改商品图片</button>
    </div>
    <br/>

    <div class="form-group" style="margin-top: -100px;">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-info updReadonly">修改信息</button>
            &nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-warning updProduct">提交修改</button>
        </div>
    </div>
</form>



<script type="text/javascript">
    $(function () {
        $(".updProduct").css("display","none");
        $(".updReadonly").click(function () {
            $(".readonly").prop("readonly",false);
            $(".updProduct").css("display","inline");
        })

        $(".updProduct").click(function () {
            if(confirm("确认修改?")){
                var commoditytitle = $("#commoditytitle").val();
                var price = $("#price").val();
                var needintegral = $("#needintegral").val();
                var commodityinventory = $("#commodityinventory").val();
                var commoditytypeno = $("#commoditytypeno").val();
                var commoditydetails = $("#commoditydetails").val();
                var proid=$("#proid").val();
                if(commoditytitle==""||price==""||needintegral==""||commodityinventory==""||commoditytypeno==0||commoditydetails==""){
                    layer.msg("请填写完整所有内容");
                }else if(isNaN(price)||isNaN(needintegral)||isNaN(commodityinventory)){
                    layer.msg("请填写正确的内容(如:商品价格、商品积分、商品库存为数字)");
                }else{
                    //proForm.submit();
                    $.ajax({
                        url:"product/udpateProduct",
                        type:"post",
                        data:{commoditytitle:commoditytitle,price:price,needintegral:needintegral,commodityinventory:commodityinventory,
                            commoditytypeno:commoditytypeno,commoditydetails:commoditydetails,commodityno:proid },
                        success:function (result) {
                            layer.msg("修改成功");
                            setTimeout(function () {
                                parent.location.href="/product/Products_List_html";
                            },1500);
                        }
                    })
                }
            }
        })




    })

</script>
</body>
</html>

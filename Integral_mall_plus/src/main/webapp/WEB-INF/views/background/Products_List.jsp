<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%
    request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link href="${path}/static/background/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${path}/static/background/css/style.css"/>
    <link rel="stylesheet" href="${path}/static/background/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome.min.css"/>
    <link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css"/>
    <!--[if IE 7]>
    <link rel="stylesheet" href="${path}/static/background/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${path}/static/background/assets/css/ace-ie.min.css"/>
    <![endif]-->
    <script src="${path}/static/background/js/jquery-1.9.1.min.js"></script>
    <script src="${path}/static/background/assets/js/bootstrap.min.js"></script>
    <script src="${path}/static/background/assets/js/typeahead-bs2.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="${path}/static/background/assets/js/jquery.dataTables.min.js"></script>
    <script src="${path}/static/background/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${path}/static/background/js/H-ui.js"></script>
    <script type="text/javascript" src="${path}/static/background/js/H-ui.admin.js"></script>
    <script src="${path}/static/background/assets/layer/layer.js" type="text/javascript"></script>
    <script src="${path}/static/background/assets/laydate/laydate.js" type="text/javascript"></script>
    <script src="${path}q/static/background/js/lrtk.js" type="text/javascript"></script>
    <title>产品列表</title>
</head>
<body>
<div class=" page-content clearfix">
    <div id="products_style">
        <div class="search_style">
            <form action="likeProductByProName" method="post">
                <ul class="search_content clearfix">
                    <li><label class="l_f">产品名称</label><input name="proName" type="text" class="text_add" placeholder="输入商品名称"
                                                              style=" width:250px"/></li>
                    <li style="width:90px;">
                        <button type="submit" class="btn_search"><i class="icon-search"></i>查询</button>
                    </li>
                </ul>
            </form>
        </div>
        <div class="border clearfix">
       <span class="l_f">
        <a href="picture_add_product" title="添加商品" class="btn btn-warning Order_form"><i class="icon-plus"></i>添加商品</a>

       </span>
            <span class="r_f">共：<b style="color: red">${proCount}</b>件商品</span>
        </div>
        <!--产品列表展示-->
        <div class="h_products_list clearfix" id="products_list">
            <div id="scrollsidebar" class="left_Treeview">
                <div class="show_btn" id="rightArrow"><span></span></div>
                <div class="widget-box side_content">
                    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
                    <div class="side_list">
                        <div class="widget-header header-color-green2"><h4 class="lighter smaller">产品类型列表</h4></div>
                        <div class="widget-body">
                            <div class="widget-main padding-8">
                                <div id="treeDemo" class="ztree">
                                    <form action="${path}/product/findProByType" method="post">
                                        <select class="form-control" name="proType">
                                            <option value="0">---请选择---</option>
                                            <c:forEach items="${proType}" var="ptype">
                                                <option value="${ptype.commoditytypeno}">${ptype.commoditytypename}</option>
                                            </c:forEach>
                                        </select>
                                        <br/>
                                        <br/>
                                        <button type="submit" class="btn btn-info btn-sm">查询</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="table_menu_list" id="testIframe">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>
                        </th>
                        <th width="80px">商品编号</th>
                        <th width="250px">商品名称</th>
                        <th width="100px">商品价格</th>
                        <th width="100px">商品所需积分</th>
                        <th width="100px">商品详情</th>
                        <th width="180px">商品库存</th>
                        <th width="80px">商品分类</th>
                        <th width="70px">状态</th>
                        <th width="200px">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pro}" var="p">
                        <tr>
                            <td width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label>
                            </td>
                            <td width="80px">${p.commodityno}</td>
                            <td width="250px"><u style="cursor:pointer" class="text-primary"
                                                 onclick="">${p.commoditytitle}</u></td>
                            <td width="100px">${p.price}<span style="color:#a069c3;">市场价</span></td>
                            <td width="100px">${p.needintegral}<span style="color:#a069c3;">积分</span></td>
                            <td width="100px">${p.commoditydetails}</td>
                            <td width="180px">${p.commodityinventory}</td>
                            <td class="text-l">${p.commodityTypeId.commoditytypename}</td>
                            <td class="td-status">
                                <c:if test="${p.commoditytype==0}">
                                    <span class="label radius" >下架</span>
                                </c:if>
                                <c:if test="${p.commoditytype==1}">
                                    <span class="label label-success radius">上架</span>
                                </c:if>
                            </td>
                            <td class="td-manage">
                                <c:if test="${p.commoditytype==0}">
                                    <a  href="javascript:;" title="上架商品"
                                        class="btn btn-xs btn-success grounding" proId="${p.commodityno}"><i class="icon-ok bigger-120"></i></a>
                                </c:if>
                                <c:if test="${p.commoditytype==1}">
                                    <a  href="javascript:;" title="下架商品"
                                        class="btn btn-xs  undercarriage" proId="${p.commodityno}"><i class="icon-ok bigger-120"></i></a>
                                </c:if>

                                <a title="编辑" <%--onclick="member_edit('编辑','upd_Product/${p.commodityno}','4','','600')"--%>
                                   href="javascript:;" proId="${p.commodityno}" class="btn btn-xs btn-info upd"><i class="icon-edit bigger-120"></i></a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(".upd").click(function () {
            var id = $(this).attr("proId");
            layer.open({
                type: 2,
                area: ['850px', '620px'],
                fixed: false, //不固定
                maxmin: true,
                content: 'upd_Product/'+id
            });
        })

        $(".undercarriage").click(function () {
            var proId = $(this).attr("proId");
            $.ajax({
                url:"bg_undercarriage_product",
                type:"post",
                data:{proid:proId},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("下架成功");
                        setTimeout(function () {
                            location.href="${path}/product/Products_List_html";
                        },1000);
                    }else{
                        layer.msg("下架失败");
                        setTimeout(function () {
                            location.href="${path}/product/Products_List_html";
                        },1000);
                    }
                }
            })
        })

        $(".grounding").click(function () {
            var proId = $(this).attr("proId");
            $.ajax({
                url:"bg_grounding_product",
                type:"post",
                data:{proid:proId},
                success:function (result) {
                    if(result=="y"){
                        layer.msg("上架成功");
                        setTimeout(function () {
                            location.href="${path}/product/Products_List_html";
                        },1500);
                    }else{
                        layer.msg("上架失败");
                        setTimeout(function () {
                            location.href="${path}/product/Products_List_html";
                        },1500);
                    }
                }

            })
        })

    })
</script>

</body>
</html>
<script>
    jQuery(function ($) {
        var oTable1 = $('#sample-table').dataTable({
            "aaSorting": [[1, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"orderable": false, "aTargets": [0, 2, 3, 4, 5, 8, 9]}// 制定列不参与排序
            ]
        });


        $('table th input:checkbox').on('click', function () {
            var that = this;
            $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function () {
                    this.checked = that.checked;
                    $(this).closest('tr').toggleClass('selected');
                });

        });


        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }
    });
    laydate({
        elem: '#start',
        event: 'focus'
    });
    $(function () {
        $("#products_style").fix({
            float: 'left',
            //minStatue : true,
            skin: 'green',
            durationTime: false,
            spacingw: 30,//设置隐藏时的距离
            spacingh: 260,//设置显示时间距
        });
    });
</script>
<script type="text/javascript">
    //初始化宽度、高度
    $(".widget-box").height($(window).height() - 215);
    $(".table_menu_list").width($(window).width() - 260);
    $(".table_menu_list").height($(window).height() - 215);
    //当文档窗口发生改变时 触发
    $(window).resize(function () {
        $(".widget-box").height($(window).height() - 215);
        $(".table_menu_list").width($(window).width() - 260);
        $(".table_menu_list").height($(window).height() - 215);
    })

    /********树状图*/
    /*var setting = {
        view: {
            dblClickExpand: false,
            showLine: false,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable:true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function(treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src",treeNode.file + ".html");
                    return true;
                }
            }
        }
    };*/

    /*var zNodes =[
        { id:1, pId:0, name:"商城分类列表", open:true},
        { id:11, pId:1, name:"蔬菜水果"},
        { id:111, pId:11, name:"蔬菜"},
        { id:112, pId:11, name:"苹果"},
        { id:113, pId:11, name:"大蒜"},
        { id:114, pId:11, name:"白菜"},
        { id:115, pId:11, name:"青菜"},
        { id:12, pId:1, name:"手机数码"},
        { id:121, pId:12, name:"手机 "},
        { id:122, pId:12, name:"照相机 "},
        { id:13, pId:1, name:"电脑配件"},
        { id:131, pId:13, name:"手机 "},
        { id:122, pId:13, name:"照相机 "},
        { id:14, pId:1, name:"服装鞋帽"},
        { id:141, pId:14, name:"手机 "},
        { id:42, pId:14, name:"照相机 "},
    ];*/

    var code;

    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>" + str + "</li>");
    }

    $(document).ready(function () {
        var t = $("#treeDemo");
        t = $.fn.zTree.init(t, setting, zNodes);
        demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        var zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(zTree.getNodeByParam("id", '11'));
    });
    /*/!*产品-停用*!/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }

    /!*产品-启用*!/
    function member_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!',{icon: 6,time:1000});
        });
    }*/
    /*/!*产品-编辑*!/
    function member_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }*/

    /*/!*产品-删除*!/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }*/
    //面包屑返回值
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);
    $('.Order_form').on('click', function () {
        var cname = $(this).attr("title");
        var chref = $(this).attr("href");
        var cnames = parent.$('.Current_page').html();
        var herf = parent.$("#iframe").attr("src");
        parent.$('#parentIframe').html(cname);
        parent.$('#iframe').attr("src", chref).ready();
        ;
        parent.$('#parentIframe').css("display", "inline-block");
        parent.$('.Current_page').attr({"name": herf, "href": "javascript:void(0)"}).css({
            "color": "#4c8fbd",
            "cursor": "pointer"
        });
        //parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
        parent.layer.close(index);

    });
</script>

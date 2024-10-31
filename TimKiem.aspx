﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="Group12.TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-banner-section section bg-gray">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="page-banner text-center">
                        <h1>Kết quả tìm kiếm</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="TrangChu.aspx">Trang chủ</a></li>
                            <li>Tìm kiếm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search results start-->
    <div class="product-section section p-4">
        <div class="container">
            <div class="row">
                <!-- Section Title Start -->
                <div class="col">
                    <div class="section-title mb-40 mb-xs-20">
                        <h2>Kết quả tìm kiếm cho:
                            <asp:Label ID="lblKeyword" runat="server" /></h2>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>
            <div class="row tf-element-carousel" data-slick-options='{
                     "slidesToShow": 4,
                     "slidesToScroll": 1,
                     "infinite": true,
                     "arrows": true,
                     "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                     "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                     }'
                data-slick-responsive='[
                     {"breakpoint":1199, "settings": {
                     "slidesToShow": 3
                     }},
                     {"breakpoint":992, "settings": {
                     "slidesToShow": 2
                     }},
                     {"breakpoint":768, "settings": {
                     "slidesToShow": 2,
                     "arrows": false,
                     "autoplay": true
                     }},
                     {"breakpoint":576, "settings": {
                     "slidesToShow": 1,
                     "arrows": false,
                     "autoplay": true
                     }}
                     ]'>
                <asp:Repeater ID="searchResults" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3">
                            <!-- Single Product Start -->
                            <div class="single-product mb-30">
                                <div class="product-img">
                                    <a title='<%#:Eval("Name") %> <%#:Eval("Id") %>' href='/ChiTietSanPham.aspx?Id=<%#:Eval("Id") %>'>
                                        <img style="height: 350px" alt="" src='./Image/ProductImage/<%#:Eval("Image") %>' />
                                    </a>
                                    <div class="product-action d-flex justify-content-between">
                                        <a class="product-btn" href="#">Add to Cart</a>
                                        <ul class="d-flex">
                                            <li><a href="#quick-view-modal-container" data-toggle="modal" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href='/ChiTietSanPham.aspx?Id=<%#:Eval("Id") %>'><%#Eval("Name")%></a></h3>
                                    <h3 class="font-weight-bold text-danger pt-3"><%# Group12.Class.Extension.FormatCurrency(Convert.ToInt32(Eval("Price"))) %><sup>đ</sup></h3>
                                </div>
                            </div>

                            <!-- Single Product End -->
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!--Product section end-->

    <!--Product section start-->
    <div class="product-section bg-gray section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-65 pb-lg-45 pb-md-35 pb-sm-25 pb-xs-15">
        <div class="container">

            <div class="row">
                <!-- Section Title Start -->
                <div class="col">
                    <div class="section-title mb-40 mb-xs-20">
                        <h2>Sản phẩm mới</h2>
                    </div>
                </div>
                <!-- Section Title End -->
            </div>
            <div class="row tf-element-carousel" data-slick-options='{
            "slidesToShow": 4,
            "slidesToScroll": 1,
            "infinite": true,
            "arrows": true,
            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
            }'
                data-slick-responsive='[
            {"breakpoint":1199, "settings": {
            "slidesToShow": 3
            }},
            {"breakpoint":992, "settings": {
            "slidesToShow": 2
            }},
            {"breakpoint":768, "settings": {
            "slidesToShow": 2,
            "arrows": false,
            "autoplay": true
            }},
            {"breakpoint":576, "settings": {
            "slidesToShow": 1,
            "arrows": false,
            "autoplay": true
            }}
            ]'>

                <asp:Repeater ID="allProducts" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3">
                            <!-- Single Product Start -->
                            <div class="single-product mb-30">
                                <div class="product-img">
                                    <a title='<%#:Eval("Name") %> <%#:Eval("Id") %>' href='/ChiTietSanPham.aspx?Id=<%#:Eval("Id") %>'>
                                        <img style="height: 350px" alt="" src='./Image/ProductImage/<%#:Eval("Image") %>' />
                                    </a>
                                    <div class="product-action d-flex justify-content-between">
                                        <a class="product-btn" href="#">Add to Cart</a>
                                        <ul class="d-flex">
                                            <li><a href="#quick-view-modal-container" data-toggle="modal" title="Quick View"><i class="fa fa-eye"></i></a></li>
                                            <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                            <li><a href="#"><i class="fa fa-exchange"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href='/ChiTietSanPham.aspx?Id=<%#:Eval("Id") %>'><%#Eval("Name")%></a></h3>
                                    <h3 class="font-weight-bold text-danger pt-3"><%# Group12.Class.Extension.FormatCurrency(Convert.ToInt32(Eval("Price"))) %><sup>đ</sup></h3>
                                </div>
                            </div>

                            <!-- Single Product End -->
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!--Product section end-->
</asp:Content>

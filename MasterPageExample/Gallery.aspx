﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MasterPageExample.Gallery" %>

<%@ Register Src="~/UcTemplate/UcOtherSlider.ascx" TagPrefix="uc1" TagName="UcOtherSlider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSlider" runat="server">
    <uc1:UcOtherSlider runat="server" ID="UcOtherSlider" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTopText" runat="server">
    Uygulamalarımız
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="server">
    <section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="portfolio-categ filter">
							<li class="all active"><a href="#">All</a></li>
							<li class="web"><a href="#" title="">Web design</a></li>
							<li class="icon"><a href="#" title="">Icons</a></li>
							<li class="graphic"><a href="#" title="">Graphic design</a></li>
						</ul>
						<div class="clearfix">
						</div>
						<div class="row">
							<section id="projects">
								<ul id="thumbs" class="portfolio">
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/1.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/1.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/2.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/2.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="graphic">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/3.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/3.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/4.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/4.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-4" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/5.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/5.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 photography" data-id="id-5" data-type="icon">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/6.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/6.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/7.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/7.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
									<!-- Item Project and Filter Name -->
									<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="graphic">
										<!-- Fancybox - Gallery Enabled - Title - Full Image -->
										<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/Content/img/works/8.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
										<!-- Thumb Image and Description -->
										<img src="/Content/img/works/8.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
									</li>
									<!-- End Item Project -->
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

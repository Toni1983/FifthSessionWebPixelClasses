﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Moderna/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AdminTemplate.Moderna.Contact" %>

<%@ Register Src="~/Moderna/UcTemplates/UcExtraSlider.ascx" TagPrefix="uc1" TagName="UcExtraSlider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTopText" runat="server">
    Try and reach us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
							<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
							<li class="active">Contact</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
    <section id="content">
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22864.11283411948!2d-73.96468908098944!3d40.630720240038435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbg!4v1540447494452" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h4>Get in touch with us by filling <strong>contact form below</strong></h4>

						<div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div>
						<form action="" method="post" role="form" class="contactForm">
							<div class="form-group">
								<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
								<div class="validation"></div>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
								<div class="validation"></div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
								<div class="validation"></div>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
								<div class="validation"></div>
							</div>

							<div class="text-center">
                                <asp:Button ID="Button1" type="submit" class="btn btn-theme" runat="server" Text="Send Message" OnClick="Button1_Click" />
						</form>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

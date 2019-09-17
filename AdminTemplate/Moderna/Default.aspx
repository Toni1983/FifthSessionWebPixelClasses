<%@ Page Title="" Language="C#" MasterPageFile="~/Moderna/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdminTemplate.Moderna.Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="chpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTopText" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">

    <form id="form1" runat="server">
        <div id="wrapper">
            <section id="featured">
                <!-- start slider -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Slider -->
                            <div id="main-slider" class="flexslider">
                                <ul class="slides">
                                    <li>
                                        <img src="/Moderna/Content/img/slides/1.jpg" alt="" />
                                        <div class="flex-caption">
                                            <h3>Modern Design</h3>
                                            <p>Duis fermentum auctor ligula ac malesuada. Mauris et metus odio, in pulvinar urna</p>
                                            <a href="#" class="btn btn-theme">Learn More</a>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="/Moderna/Content/img/slides/2.jpg" alt="" />
                                        <div class="flex-caption">
                                            <h3>Fully Responsive</h3>
                                            <p>Sodales neque vitae justo sollicitudin aliquet sit amet diam curabitur sed fermentum.</p>
                                            <a href="#" class="btn btn-theme">Learn More</a>
                                        </div>
                                    </li>
                                    <li>
                                        <img src="/Moderna/Content/img/slides/3.jpg" alt="" />
                                        <div class="flex-caption">
                                            <h3>Clean & Fast</h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit donec mer lacinia.</p>
                                            <a href="#" class="btn btn-theme">Learn More</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- end slider -->
                        </div>
                    </div>
                </div>
            </section>
            <section class="callaction">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="big-cta">
                                <div class="cta-text">
                                    <h2><span>Moderna</span> HTML Business Template</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <span></span>

            <section id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>Fully responsive</h4>
                                            <div class="icon">
                                                <i class="fa fa-desktop fa-3x"></i>
                                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                                   <ItemTemplate>
                                                       <table>
                                                           <tr>
                                                               <td>
                                                                   <asp:Button ID="btnCountry" OnClick="btnCountry_Click" runat="server" Text='<%# Eval("CountryName") %>'></asp:Button>
                                                               </td>
                                                               <td>
                                                                   <asp:Label ID="lblDialcode" runat="server" Text='<%# Eval("CountryDialCode") %>'></asp:Label>
                                                               </td>
                                                           </tr>
                                                       </table>
                                                   </ItemTemplate>
                                                </asp:ListView>
                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CountriesConnectionString3 %>" SelectCommand="SELECT [CountryName], [CountryDialCode] FROM [Countries]"></asp:SqlDataSource>
                                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="txtDialcode" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#">Learn more</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>Modern Style</h4>
                                            <div class="icon">
                                                <i class="fa fa-pagelines fa-3x"></i>
                                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                    <ItemTemplate>
                                                        <table style="border: 1px solid">
                                                            <tr style="width: 100px">
                                                                <td>
                                                                    <asp:Button ID="BtnCountry" OnClick="BtnCountry_Click" runat="server" Text='<%# Eval("CountryName") %>' />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblDialcode" runat="server" Text='<%# Eval("CountryDialCode") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </div>
                                            <p>
                                                Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#">Learn more</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>Customizable</h4>
                                            <div class="icon">
                                                <i class="fa fa-edit fa-3x"></i>
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                                    <Columns>
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="AuthorId" HeaderText="AuthorId" SortExpression="AuthorId" />
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString2 %>" SelectCommand="SELECT [Name], [AuthorId] FROM [Books]"></asp:SqlDataSource>
                                            </div>
                                            <p>
                                                Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#">Learn more</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="box">
                                        <div class="box-gray aligncenter">
                                            <h4>Valid HTML5</h4>
                                            <div class="icon">
                                                <i class="fa fa-code fa-3x"></i>
                                            </div>
                                            <p>
                                                Voluptatem accusantium doloremque laudantium sprea totam rem aperiam.
                                            </p>

                                        </div>
                                        <div class="box-bottom">
                                            <a href="#">Learn more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- divider -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="solidline">
                            </div>
                        </div>
                    </div>
                    <!-- end divider -->
                    <!-- Portfolio Projects -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="heading">Recent Works</h4>
                            <div class="row">
                                <section id="projects">
                                    <ul id="thumbs" class="portfolio">
                                        <!-- Item Project and Filter Name -->
                                        <li class="col-lg-3 design" data-id="id-0" data-type="web">
                                            <div class="item-thumbs">
                                                <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                                <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Work 1" href="/Moderna/Content/img/works/1.jpg">
                                                    <span class="overlay-img"></span>
                                                    <span class="overlay-img-thumb font-icon-plus"></span>
                                                </a>
                                                <!-- Thumb Image and Description -->
                                                <img src="/Moderna/Content/img/works/1.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                                            </div>
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Work 2" href="/Moderna/Content/img/works/2.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="/Moderna/Content/img/works/2.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Work 3" href="/Moderna/Content/img/works/3.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="/Moderna/Content/img/works/3.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                                        </li>
                                        <!-- End Item Project -->
                                        <!-- Item Project and Filter Name -->
                                        <li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
                                            <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                                            <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Work 4" href="/Moderna/Content/img/works/4.jpg">
                                                <span class="overlay-img"></span>
                                                <span class="overlay-img-thumb font-icon-plus"></span>
                                            </a>
                                            <!-- Thumb Image and Description -->
                                            <img src="/Moderna/Content/img/works/4.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                                        </li>
                                        <!-- End Item Project -->
                                    </ul>
                                </section>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Get in touch with us</h5>
                                <address>
                                    <strong>Moderna company Inc</strong><br>
                                    Modernbuilding suite V124, AB 01<br>
                                    Someplace 16425 Earth
                                </address>
                                <p>
                                    <i class="icon-phone"></i>(123) 456-7890 - (123) 555-7891
                                    <br>
                                    <i class="icon-envelope-alt"></i>email@domainname.com
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Pages</h5>
                                <ul class="link-list">
                                    <li><a href="#">Press release</a></li>
                                    <li><a href="#">Terms and conditions</a></li>
                                    <li><a href="#">Privacy policy</a></li>
                                    <li><a href="#">Career center</a></li>
                                    <li><a href="#">Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Latest posts</h5>
                                <ul class="link-list">
                                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                    <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                                    <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Flickr photostream</h5>
                                <div class="flickr_badge">
                                    <script type="text/javascript" src="https://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="sub-footer">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="copyright">
                                    <p>&copy; Moderna Theme. All right reserved.</p>
                                    <div class="credits">
                                        <!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Moderna
                  -->
                                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <ul class="social-network">
                                    <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        <!-- javascript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="/Moderna/Content/js/jquery.js"></script>
        <script src="/Moderna/Content/js/jquery.easing.1.3.js"></script>
        <script src="/Moderna/Content/js/bootstrap.min.js"></script>
        <script src="/Moderna/Content/js/jquery.fancybox.pack.js"></script>
        <script src="/Moderna/Content/js/jquery.fancybox-media.js"></script>
        <script src="/Moderna/Content/js/google-code-prettify/prettify.js"></script>
        <script src="/Moderna/Content/js/portfolio/jquery.quicksand.js"></script>
        <script src="/Moderna/Content/js/portfolio/setting.js"></script>
        <script src="/Moderna/Content/js/jquery.flexslider.js"></script>
        <script src="/Moderna/Content/js/animate.js"></script>
        <script src="/Moderna/Content/js/custom.js"></script>
    </form>

</asp:Content>

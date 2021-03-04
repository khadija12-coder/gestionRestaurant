<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dotnet.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(function () {
    $('.carousel1').carouFredSel({
        auto: false,
        prev: '.prev',
        next: '.next',
        width: 960,
        items: {
            visible: {
                min: 1,
                max: 4
            },
            height: 'auto',
            width: 240,
        },
        responsive: false,
        scroll: 1,
        mousewheel: false,
        swipe: {
            onMouse: false,
            onTouch: false
        }
    });
});
      </script>
     <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="images/slide.jpg" alt=""></li>
          <li><img src="images/slide1.jpg" alt=""></li>
          <li class="mb0"><img src="images/slide2.jpg" alt=""></li>
        </ul>
      </div>
    </div>
  </div>
     <div class="content page1">
    <div class="container_12">
      <div class="grid_7">
        <h2>Welcome</h2>
        <div class="page1_block col1"> <img src="images/welcome_img.png" alt="">
          <div class="extra_wrapper">
            <p><span class="col2"><a href="#">Le Gourmet Traditionnel est situé au coeur des Monts du Lyonnais, au 4705 Route de Lyon à Meys;à 20 minutes de l'Arbresle et à 10 minutes de Saint-Symphorien-sur-Croise.</p>
            Les bons produits du Gourmet varient au rythme des saisons. Nous possédons une Terrasse extérieure ombragée.N'hésitez pas à venir découvrir cet endroit très agréable. <br>
            <a href="#" class="btn">more</a> </div>
          <div class="clear"></div>
        </div>
      </div>
      <div class="grid_5">
        <h2>Soirée spéciale chaque Mercredi- 25€</h2>
        Foie gras fait maison accompagné <br>
de ses de douceurs sucrées <br>
<br >
Ou<br>
  <br >
Melon sur son lit de salade accompagné<br>
de saumon cru<br>

Gratin de fruits de mer à la bisque de homard<br>
          <br >
Ou<br>
          <br >
Cuisses de canard parsemées de morilles<br>

Assortiment de mignardises<br>
Tous nos plats chauds sont accompagnés<br>
de légumes<br>
      </div>
      <div class="clear"></div>
      <div class="grid_12">
        <div class="hor_separator"></div>
      </div>
      <div class="grid_12">
        <div class="car_wrap">
          <h2>Meilleur Choix</h2>
          <a href="#" class="prev"></a><a href="#" class="next"></a>
          <ul class="carousel1">
            <li>
              <div><img src="images/page1_img1.jpg" alt="">
                <div class="col1 upp"> <a href="#">Pâtes aux champinions et moutarde</a></div>
                
                <div class="price">45$</div>
              </div>
            </li>
            <li>
              <div><img src="images/page1_img2.jpg" alt="">
                <div class="col1 upp"> <a href="#">Filet de boeuf sauce balsamique</a></div>
              
                <div class="price">45$</div>
              </div>
            </li>
            <li>
              <div><img src="images/page1_img3.jpg" alt="">
                <div class="col1 upp"> <a href="#">Tarte aux fraises/framboises</a></div><br />
                
                <div class="price">45$</div>
              </div>
            </li>
            <li>
              <div><img src="images/page1_img4.jpg" alt="">
                <div class="col1 upp"> <a href="#">Ananas frais et coulis d'oranges à la menthe</a></div>
               
                <div class="price">45$</div>
              </div>
            </li>
            <li>
              <div><img src="images/page1_img3.jpg" alt="">
                <div class="col1 upp"> <a href="#">Lorem ipsum doamet consectet</a></div>
                <span> Dorem ipsum dolor amet consectetur</span>
                <div class="price">45$</div>
              </div>
            </li>
          </ul>
        </div>
      </div>
</div>
  </div>
</asp:Content>

!DOCTYPE html>
<html lang="en">
    <head>
        <title>Kapiva Geek - A maior loja geek do pa�s</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style_menu.css">
        <link rel="stylesheet" type="text/css"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <link rel="stylesheet" type="text/css"
              href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">



    </head>
    <body>
        <nav class="nav-wrapper white" id="menu-navbar">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo" id="title"><img src="icons/kapiva(logo).png" alt="" id="logo-icon">Kapiva
                    Geek</a>
                <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons"
                                                                               id="menu-icon">menu</i></a>
                <a href="Comprar.html" data-target="slide-out" id="menu-quantity-link" class="itemM">0</a>
                <a href="carrinho.html" data-target="slide-out" id="menu-cart-link"><i class="material-icons"
                                                                                       id="menu-cart-icon">shopping_cart</i></a>
                <a href="#icon_prefix" data-target="slide-out" id="menu-search-link"><i class="material-icons"
                                                                                        id="menu-search-icon">search</i></a>



                <ul class="left hide-on-med-and-down" id="categories">
                    <li><a href="#miniaturas"><img src="" alt="" id="universe-icon">Personagens</a></li>
                    <li><a href="#camisetas"><img src="" alt="" id="acessories-icon">Camisetas</a></li>
                    <li><a href="#acessorios"><img src="" alt="" id="universe-icon">Acess�rios</a></li>
                    <li><a href="#canecas"><img src="" alt="" id="cart-icon">Canecas</a></li>
                    <li><a href="#utilidades"><img src="" alt="" id="user-icon">Utilidades</a></li>

                </ul>

                <form action="" method="post" id="search-topbar">
                    <div class="input-field">
                        <input id="#search" type="search" name="search">
                        <label class="label-icon" for="search"><i class="material-icons" style="color: black;"
                                                                  id="search-topbar-label">search</i></label>
                    </div>
                </form>


                <ul class="right hide-on-med-and-down" id="options">

                    <li><a href=""><img src="icons/heart.png" alt="" id="universe-icon"></a></li>

                    <li><a href="carrinho.html"><img src="icons/shopping-cart.png" alt="" id="cart-icon"></a></li>
                    <li class="itemD" id="itemD-quantity">0</li>

                    <li><a href=""><img src="icons/user.png" id="user-icon">Login</a></li>

                </ul>
            </div>

        </nav>


        <ul id="slide-out" class="sidenav">
            <li>
                <div class="user-view">
                    <div class="background">
                        <img src="img/kapivaradormindo.jpg" alt="">
                    </div>

                    <a href="#"><span class="black-text name">Fa�a login</span></a>
                    <a href="#"><span class="black-text email">ou cadastra-se</span></a>
                </div>
            </li>
            <li><a class="subheader">Navegue por categorias</a></li>
            <li><a href="#miniaturas"><i class="material-icons">smart_toy</i>Miniaturas</a></li>
            <li><a class="waves-effect" href="#camisetas"> <i class="material-icons">checkroom</i>Camisetas</a></li>
            <li><a class="waves-effect" href="#canecas"><i class="material-icons">local_cafe</i>Canecas</a></li>
            <li><a class="waves-effect" href="#acessorios"><i class="material-icons">luggage</i>Acess�rios</a></li>
            <li><a class="waves-effect" href="#utilidades"><i class="material-icons">public</i>Variedades</a></li>
        </ul>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        <script>
    
    
            $('.button-collapse').sideNav({
                menuWidth: 300, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: false, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens,
            }
            );
    
            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.sidenav');
                var instances = M.Sidenav.init(elems);
            });
    
    
            $(document).ready(function () {
                $('.slider').slider();
            });
    
    
    
    
    
    
    
            function ComprarItem() {
                var numeroString = new String(document.querySelector('.itemM').innerHTML);
                numero = Number(numeroString);
                soma = numero + 1;
                Retorno = String(Object(soma));
                document.querySelector('.itemM').innerHTML = Retorno;
                document.querySelector('.itemD').innerHTML = Retorno;
            }
    
            document.getElementById('comprar');
            comprar.addEventListener('click', function () {
                ComprarItem();
            });
    
        </script>
    </body>

</html>


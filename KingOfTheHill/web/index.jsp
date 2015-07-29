<%-- 
    Document   : index
    Created on : Jul 26, 2015, 2:36:44 PM
    Author     : Shagy
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/reset.css">
        <!-- CSS reset -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Gem style -->
        <script src="js/modernizr.js"></script>
        <!-- Modernizr -->

        <style type="text/css">
            html,
            body,
            #map-canvas {
                height: 100%;
                width: 100%;
                margin: 0;
                padding: 0;
            }
        </style>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBGh7D7tuU8uPFGbK2Og8cVz0bRC9vYkfo"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/maps.js"></script>
        
        <script>
            function get(){
            var nameValue = document.getElementById("test").value;
            
        }
        </script>
        

    </head>
    <body>
        <header role="banner">
            <!--<div id="cd-logo">
                <a href="#0"><img src="img/cd-logo.svg" alt="Logo"></a>
            </div> -->
            <nav class="main-nav">
                <ul>
                    <!-- inser more links here -->
                    <li><a class="cd-signin" href="#0">Sign in</a></li>
                    <li><a class="cd-signup" href="#0">Sign up</a></li>
                </ul>
            </nav>
        </header>


        <div class="cd-user-modal">
            <!-- this is the entire modal form, including the background -->
            <div class="cd-user-modal-container">
                <!-- this is the container wrapper -->
                <ul class="cd-switcher">
                    <li><a href="">Sign in</a></li>
                    <li><a href="">New account</a></li>
                </ul>

                <div id="cd-login">
                    <!-- log in form -->
                    <form class="cd-form">
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signin-email">E-mail</label>
                            <input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signin-password">Password</label>
                            <input class="full-width has-padding has-border" id="signin-password" type="text" placeholder="Password">
                            <a href="#0" class="hide-password">Hide</a>
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <input type="checkbox" id="remember-me" checked>
                            <label for="remember-me">Remember me</label>
                        </p>

                        <p class="fieldset">
                            <input class="full-width" type="submit" value="Login">
                        </p>
                    </form>

                    <p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
                    <!-- <a href="#0" class="cd-close-form">Close</a> -->
                </div>
                <!-- cd-login -->

                <div id="cd-signup">
                   
                    <form onSubmit="return get()">
                        
                       <input type="text" name="name" id="test" value="value" />
                       <input type="submit" value="GO">
                    </form>
                   
                    
                    
                    <!-- sign up form -->
                    <form class="cd-form" action="http://localhost:8080/php/login.php" method="post">
                        <p class="fieldset">
                            <label class="image-replace cd-username" for="signup-username">Username</label>
                            <input name="username" class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username" pattern=".{3,}"  required title="Mínimo de caracteres: 4">
                            <!--  <span class="cd-error-message">Error message here!</span> -->
                        </p>
                        
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="signup-email">E-mail</label>
                            <input name="email" class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail" required>
                            <!--  <span class="cd-error-message">Error message here!</span> -->
                        </p>

                        <p class="fieldset">
                            <label class="image-replace cd-password" for="signup-password">Password</label>
                            <input name="password" class="full-width has-padding has-border" id="signup-password" type="text" placeholder="Password" pattern=".{6,}" required title="Mínimo de caracteres: 6">
                            <a href="#0" class="hide-password">Hide</a>
                            <!--  <span class="cd-error-message">Error message here!</span> -->
                        </p>
                         <!-- 
                        <p class="fieldset">
                            <input type="checkbox" id="accept-terms">
                            <label for="accept-terms">I agree to the <a href="#0">Terms</a></label>
                        </p>
                         -->
                         
                        <p class="fieldset">
                            <input class="full-width has-padding" type="submit" value="Create account">
                        </p>

                    </form>

                    <a href="#0" class="cd-close-form">Close</a>
                </div>
                <!-- cd-signup -->

                <div id="cd-reset-password">
                    <!-- reset password form -->
                    <p class="cd-form-message">Lost your password? Please enter your email address. You will receive a link to create a new password.</p>

                    <form class="cd-form">
                        <p class="fieldset">
                            <label class="image-replace cd-email" for="reset-email">E-mail</label>
                            <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                            <span class="cd-error-message">Error message here!</span>
                        </p>

                        <p class="fieldset">
                            <input class="full-width has-padding" type="submit" value="Reset password">
                        </p>
                    </form>

                    <p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
                </div>
                <!-- cd-reset-password -->
                <a href="#0" class="cd-close-form">Close</a>
            </div>
            <!-- cd-user-modal-container -->
        </div>
        <!-- cd-user-modal -->

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="js/main.js"></script>
        <!-- Gem jQuery -->

        <div id="map-canvas"></div>
    </body>
</html>

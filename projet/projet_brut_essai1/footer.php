<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>responsive footer design codepen</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style media="screen">
        body {
            background: #fcfcfc;
            font-family: sans-serif;
        }

        footer {
            position: relative;
            bottom: 0;
            left: 0;
            right: 0;
            background: #111;
            height: auto;
            color: #fff;
        }


        .footer-bottom {
            background: #000;
            width: 100%;
            padding: 20px;
            padding-bottom: 40px;
            text-align: center;
        }

        .footer-bottom p {
            float: left;
            font-size: 14px;
            word-spacing: 2px;
            text-transform: capitalize;
        }

        .footer-bottom p a {
            color: #44bae8;
            font-size: 16px;
            text-decoration: none;
        }

        .footer-bottom span {
            text-transform: uppercase;
            opacity: .4;
            font-weight: 200;
        }

        .footer-menu {
            float: right;

        }

        .footer-menu ul {
            display: flex;
        }

        .footer-menu ul li {
            padding-right: 10px;
            display: block;
        }

        .footer-menu ul li a {
            color: #cfd2d6;
            text-decoration: none;
        }

        .footer-menu ul li a:hover {
            color: #27bcda;
        }

        @media (max-width:500px) {
            .footer-menu ul {
                display: flex;
                margin-top: 10px;
                margin-bottom: 20px;
            }


        }
    </style>
</head>

<body>
    <footer>
        <div class="footer-bottom">
            <p>copyright &copy; <a href="#">My Library</a> </p>
            <div class="footer-menu">
                <ul class="f-menu">
                    <?php if (isset($_SESSION["user"])) : ?>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="">About</a></li>
                        <li><a href="">Contact</a></li>

                    <?php else : ?>

                        <li class="nav-item">
                            <a class="nav-link" href="register.php">Inscription</a>
                        </li>
                </ul>
            <?php endif; ?>
            </div>
        </div>

    </footer>
</body>

</html>
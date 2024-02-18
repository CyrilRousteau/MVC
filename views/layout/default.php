<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Votre titre de page</title>
    <!-- Bootstrap CSS via CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body class="d-flex flex-column h-100">

<header class="p-3 mb-2 bg-primary text-white text-center">
    <h1>Chroniques du Hack</h1>
</header>

<!-- Ajustement ici pour que le main prenne au moins la hauteur restante -->
<main class="container my-5 flex-grow-1">
    <?= $content ?>
</main>

<footer class="bg-dark text-white text-center p-3 mt-auto">
    <p>Footer</p>
</footer>

<!-- Bootstrap JS Bundle (inclut Popper) via CDN -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>

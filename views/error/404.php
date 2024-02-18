<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Page Non Trouvée</title>
    <!-- Intégration de Bootstrap CSS via CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Styles supplémentaires pour centrer le contenu */
        .vh-100 {
            height: 100vh;
        }
        .centered-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container vh-100">
    <div class="row">
        <div class="col-12 centered-content">
            <!-- Image de 404 -->
            <img src="/assets/404.png" alt="404" class="img-fluid" style="max-width: 50%;"/>
            <h1>404 - Page Non Trouvée</h1>
            <p>Désolé, la page que vous recherchez n'existe pas ou a été déplacée.</p>
            <a href="/" class="btn btn-primary">Retour à la page d'accueil</a>
        </div>
    </div>
</div>

<!-- Intégration de Bootstrap JS et dépendances via CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

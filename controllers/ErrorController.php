<?php

namespace app;

class ErrorController extends Controller {

     /**
     * Affiche une page 404 personnalisée et arrête l'exécution du script.
     */
    public function show404Page()
    {
        http_response_code(404);
        include(ROOT . 'views/error/404.php'); // Assurez-vous que le chemin est correct
        exit; // Arrête l'exécution du script
    }

}

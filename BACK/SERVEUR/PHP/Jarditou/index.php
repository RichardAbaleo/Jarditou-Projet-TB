<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- CSS pour bootstrap -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <title>Jarditou - Accueil</title>
  </head>
  <body>
    <div class="container">
      <header>
        <!-- Première ligne -->
        <div class="d-none d-lg-block">
          <div class="row">
            <div class="col-12 col-lg-2">
              <img src="src/img/jarditou_logo.jpg" class="img-fluid" />
            </div>
            <div class="col-lg-6"></div>
            <div class="col-12 col-lg-4">
              <h1 class="text-center">Tout le jardin</h1>
            </div>
          </div>
        </div>

        <!-- Deuxième ligne -->
        <div class="row">
          <div class="col-12">
            <nav class="navbar navbar-expand-lg bg-light navbar-light">
              <p class="my-auto pr-3"><b>Jarditou.com</b></p>
              <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#menu"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="index.php">Accueil</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="tableau.php">Tableau</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contact.php">Contact</a>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>

        <!-- Troisième ligne -->
        <div class="row">
          <div class="col-12">
            <img src="src/img/promotion.jpg" class="img-fluid w-100" />
          </div>
        </div>
      </header>
      <section>
        <!-- Quatrième ligne -->
        <div class="row no-gutters mb-3">
          <div class="col-12 mb-3 mb-lg-0 col-lg-8">
            <section class="pl-2 shadow p-3 bg-white rounded">
              <section>
                <article>
                  <h2>L'entreprise</h2>
                  <p>
                    Notre entreprise familiale met tout son savoir-faire à votre
                    disposition dans le domaine du jardin et du paysagisme.
                  </p>
                  <p>
                    Créée il y a 70 ans, notre entreprise vend fleurs, arbustes,
                    matériel à main et motorisés.
                  </p>
                  <p>
                    Implantés à Amiens, nous intervenons dans tout le
                    département de la Somme : Albert, Doullens, Péronne,
                    Abbeville, Corbie
                  </p>
                </article>
              </section>
              <section>
                <article>
                  <h2>Qualité</h2>
                  <p>
                    Nous mettons à votre disposition un service personnalisé,
                    avec 1 seul interlocuteur durant tout votre projet.
                  </p>
                  <p>
                    Vous serez séduit par notre expertise, nos compétences et
                    notre sérieux.
                  </p>
                </article>
                <article>
                  <h2>Devis gratuit</h2>
                  <p>
                    Vous pouvez bien sûr contacter pour de plus amples
                    informations ou pour une demande d’intervention. Vous
                    souhaitez un devis ? Nous vous le réalisons gratuitement.
                  </p>
                </article>
              </section>
            </section>
          </div>
          <div class="col-12 col-lg-4">
            <section class="h-100 bg-warning">
              <h2 class="text-center">[Colonne de droite]</h2>
            </section>
          </div>
        </div>
      </section>

      <!-- Cinquième ligne-->
      <footer>
        <div class="row">
          <div class="col-12">
            <nav class="navbar navbar-expand bg-dark navbar-dark">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="">Mention légales</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="">Horaires</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="">Plan du site</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </footer>
    </div>

    <!-- Script pour CSS bootstrap -->
    <script
      src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

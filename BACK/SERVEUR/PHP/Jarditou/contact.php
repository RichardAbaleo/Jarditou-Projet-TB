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
    <title>Jarditou - Contact</title>
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

      <!-- Quatrième ligne -->
      <div class="row">
        <div class="col-12">
          <p>* Ces zones sont obligatoires</p>
          <section>
            <form
              id="form"
              name="form"
              method="POST"
              class="form-group"
              action="http://bienvu.net/script.php"
              onsubmit=" return (envoi());"
            >
              <!--  action="http://bienvu.net/script.php" method="GET"-->
              <fieldset>
                <legend><h1>Vos coordonnées</h1></legend>
                <label for="nom">Nom*</label>
                <input
                  class="form-control"
                  type="text"
                  name="Nom"
                  id="nom"
                  title="Entrez votre nom."
                  required
                />
                <span id="missNom"></span>
                <br />
                <label for="prenom">Prénom*</label>
                <input
                  class="form-control"
                  type="text"
                  name="Prénom"
                  id="prenom"
                  title="Entrez votre prénom."
                  required
                />
                <span id="missPrenom"></span>
                <br />
                <br />
                <label for="sexe">Sexe*</label>
                <input
                  type="radio"
                  name="Sexe"
                  id="femme"
                  value="Féminin"
                  title="Veuillez cocher votre sexe."
                  required
                />
                Féminin
                <input
                  type="radio"
                  name="Sexe"
                  id="homme"
                  value="Masculin"
                  title="Veuillez cocher votre sexe."
                  required
                />
                Masculin
                <input
                  type="radio"
                  name="Sexe"
                  id="neutre"
                  value="Neutre"
                  title="Veuillez cocher votre sexe."
                  required
                />
                Neutre
                <span id="missSexe"></span>
                <br />
                <br />
                <label for="date">Date de naissance*</label>
                <input
                  class="form-control"
                  type="date"
                  name="Date de naissance"
                  id="date"
                  required
                />
                <span id="missDate"></span>
                <br />
                <label for="CP">Code postal*</label>
                <input
                  class="form-control"
                  type="number"
                  name="Code Postal"
                  id="CP"
                  required
                />
                <span id="missCP"></span>
                <br />
                <label for="adresse">Adresse</label>
                <input
                  class="form-control"
                  type="text"
                  name="Adresse"
                  id="adresse"
                />
                <br />
                <label for="ville">Ville</label>
                <input
                  class="form-control"
                  type="text"
                  name="Ville"
                  id="ville"
                />
                <br />
                <label for="email">Email*</label>
                <input
                  class="form-control"
                  type="email"
                  name="Email"
                  id="email"
                  required
                  title="Entrez votre email."
                  placeholder="dave.loper@afpa.fr"
                />
                <span id="missEmail"></span>
                <br />
                <br />
              </fieldset>
              <fieldset>
                <legend><h1>Votre demande</h1></legend>
                <label for="sujet">Sujet*</label>
                <select name="Sujet" id="sujet" class="form-control" required>
                  <option value="" disabled selected>
                    Veuillez séléctionner un sujet
                  </option>
                  <option value="Mes commandes">Mes commandes</option>
                  <option value="Question sur un produit">
                    Question sur un produit
                  </option>
                  <option value="Réclamation">Réclamation</option>
                  <option value="Autres">Autres</option>
                </select>
                <span id="missSujet"></span>
                <br />
                <label for="question">Votre question*</label>
                <textarea
                  class="form-control"
                  name="Question"
                  id="question"
                  rows="2"
                  cols="25"
                  required
                  title="Posez votre question ici."
                ></textarea>
                <span id="missQuestion"></span>
                <br />
              </fieldset>
              <br />
              <label for="agree"></label>
              <input type="checkbox" name="Accord" id="agree" />
              * J'accepte le traitement informatique de ce formulaire
              <br />
              <span id="missAgree"></span>
              <br />
              <br />
              <button
                type="submit"
                class="btn btn-dark"
                value="Envoyer"
                id="bouton_envoi"
              >
                Envoyer
              </button>
              <button
                type="reset"
                id="reset"
                class="btn btn-dark"
                value="Annuler"
              >
                Annuler
              </button>
            </form>
          </section>
        </div>
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
    <script src="assets/js/javascript.js"></script>
  </body>
</html>

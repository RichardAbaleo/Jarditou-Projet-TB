<?php
session_start();
if ($_SESSION['actif'] == TRUE){
  
} else {
  header("Location: identification.php");
  exit();
}
?>
<!DOCTYPE html>
<html lang="fr">
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
    <title>Jarditou - Details</title>
  </head>
  <body>
    <?php
    require "connexion_bdd.php";
    $pro_id = $_GET["pro_id"];
    $requete = "SELECT * FROM produits,categories WHERE produits.pro_cat_id = categories.cat_id AND pro_id=".$pro_id;   
    $result = $db->query($requete);
    $row = $result->fetch(PDO::FETCH_OBJ);  
    $pro_ref = $row->pro_ref;
    $bloque = $row->pro_bloque;
    $checkedYes = "";
    $checkedNo = "";
    if ($bloque == "0") {
      $checkedYes = "checked";
    } else {
      $checkedNo = "checked";
    }
    ?>
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
        </br></br>
          <div class="text-center">
          <img class="img-fluid" width='200px' src="src/img/<?php echo $pro_id ?>.jpg">
          </div>
          <form>
            <fieldset>
            <br />
              <label for="pro_ref">Référence :</label>
              <input
                class="form-control"
                type="text"
                name="ref"
                required
                disabled="disabled"
                value="<?php echo $row->pro_ref ?>"
              />
              <br />
              <label for="pro_cat">Catégorie :</label>
              <input
                class="form-control"
                type="text"
                name="cat"
                required
                disabled="disabled"
                value="<?php echo $row->cat_nom ?>"
              />
              <br />
              <label for="pro_libelle">Libellé :</label>
              <input
                class="form-control"
                type="text"
                name="libelle"
                required
                disabled="disabled"
                value="<?php echo $row->pro_libelle ?>"
              />
              </br>
              <label for="pro_description">Description :</label>
              <textarea
                class="form-control"
                name="description"
                rows="2"
                cols="25"
                required
                disabled="disabled"
                placeholder="<?php echo $row->pro_description ?>"
              ></textarea>
              </br>
              <label for="pro_prix">Prix :</label>
              <input
                class="form-control"
                type="text"
                name="prix"
                required
                disabled="disabled"
                value="<?php echo $row->pro_prix ?>"
              />
              </br>
              <label for="pro_stock">Stock :</label>
              <input
                class="form-control"
                type="text"
                name="stock"
                required
                disabled="disabled"
                value="<?php echo $row->pro_stock ?>"
              />
              </br>
              <label for="pro_couleur">Couleur :</label>
              <input
                class="form-control"
                type="text"
                name="couleur"
                required
                disabled="disabled"
                value="<?php echo $row->pro_couleur ?>"
              />
              </br>
              <label for="pro_bloque">Produit bloqué ? :</label>
              </br>
              <input
                  type="radio"
                  name="bloque"
                  value="Oui"
                  required
                  disabled="disabled"
                  <?php echo $checkedYes ?>
              />
              Oui   
              <input
                  type="radio"
                  name="bloque"
                  value="Non"
                  required
                  disabled="disabled"
                  <?php echo $checkedNo ?>
              />
              Non
              </br>
              </br>
              <label for="pro_d_ajout">Date d'ajout :</label>
              <input
                class="form-control"
                type="text"
                name="d_ajout"
                required
                disabled="disabled"
                value="<?php echo $row->pro_d_ajout ?>"
              />
              </br>
              <label for="pro_d_modif">Date de modification :</label>
              <input
                class="form-control"
                type="text"
                name="d_modif"
                required
                disabled="disabled"
                value="<?php echo $row->pro_d_modif ?>"
              />
              </br>
              <a type="button" class="btn btn-lg btn-secondary active" href="index_admin.php?pro_id=<?php echo $pro_id ?>">Retour</a>
              <a type="button" class="btn btn-lg btn-warning ml-4 active" href="update_form.php?pro_id=<?php echo $pro_id ?>">Modifier</a>
              <a type="button" class="btn btn-lg btn-danger ml-4 active" href="delete_form.php?pro_id=<?php echo $pro_id ?>">Supprimer</a>
              </br>
              <a type="button" class="mt-3 btn btn-lg btn-dark active " href="unlog.php">Se déconnecter</a>
            </fieldset>
          </form>
          </br></br>
        </div>
      </div>

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

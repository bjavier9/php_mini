
<?php 
include 'core/core.php';
include 'vistas/head.php';
$sql= "SELECT * FROM estudiantes"
?>


<table class="responsive-table">

  <thead>
    <tr>
      <th>Nombre</th>
      <th>credito</th>
      <th>calificación</th>
    </tr>
  </thead>

  <tbody>
    
    <?php
      try{
        $row = $mbd->query($sql);
        foreach($row as $row){
          echo "<tr>";
          echo "<td>".$row['id']."</td>";
          echo "<td>".$row['nombre']."</td>";
          echo "<td>".$row['apellido']."</td>";
          echo "</tr>";
        }
      }catch(PDOException $e){
        echo "Falla en la consulta: ".$e->getMessage();

      }
    ?>
  </tbody>
</table>

<!-- nombre de la persona y su indice academico -->
<div class="col s12 m8 offset-m2 l6 offset-l3">
  <div class="card-panel grey lighten-5 z-depth-1">
    <div class="row valign-wrapper">
      <div class="col s2">
        <img src="https://laopinionla.files.wordpress.com/2018/04/nac-skyline-photo-2-copy-1-e1524964222223.jpg?quality=60&strip=all&w=699"
          alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
      </div>
      <div class="col s10">
        <span class="black-text">
          <strong>Lorem ipsum</strong> indice academico: <span>1.80</span>
        </span>
      </div>
    </div>
  </div>
</div>
</div>
</div>

<?php 
include 'vistas/footer.php';
?>

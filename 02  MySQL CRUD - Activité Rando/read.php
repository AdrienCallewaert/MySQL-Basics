<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Randonnées</title>
    <link rel="stylesheet" href="css/basics.css" media="screen" title="no title" charset="utf-8">
  </head>
  <body>
  <h1>Liste des randonnées</h1>
    <?php
        $servername = 'mysql:host=localhost;dbname=randoapp;charset=utf8';
        $username = 'root';
        $password = '';

        $dsn = $servername; 
        // récupérer tous les utilisateurs
        $sql = "SELECT * FROM hiking";
         
        try{
         $pdo = new PDO("$servername","$username","$password");
         $stmt = $pdo->query($sql);
         
         if($stmt === false){
          die("Erreur");
         }
         
        }catch (PDOException $e){
          echo $e->getMessage();
        }
      ?>

<table>
        <thead>
            <tr>
            <th>ville</th>
            <th>haut</th>
            <th>bas</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)) : ?>
            <tr>
            <td><?php echo htmlspecialchars($row['name']); ?></td>
            <td><?php echo htmlspecialchars($row['difficulty']); ?></td>
            <td><?php echo htmlspecialchars($row['distance']); ?></td>
            <td><?php echo htmlspecialchars($row['duration']); ?></td>
            <td><?php echo htmlspecialchars($row['height_difference']); ?></td>            
            </tr>
            <?php endwhile; ?>
        </tbody>
        </table>

  </body>
</html>

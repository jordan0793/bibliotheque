<?php
session_start();
require_once "../../connectLivres.php";

include_once "../../header.php";

$sql = "SELECT * FROM `livre` WHERE id_li= ?";
$id = $_GET['id'];
$stmt = $db->prepare($sql);
$stmt->execute([$id]);
$livre = $stmt->fetchAll();



// Requete delete 
$sql = "DELETE FROM `livre` WHERE id_li= ?";
$id = $_GET['id'];
$stmt = $db->prepare($sql);
$stmt->execute([$id]);
$livre = $stmt->fetchAll();
echo ("livre supprimé");
?>

</form>
</table>
<?php
include_once "../../footer.php"
?>
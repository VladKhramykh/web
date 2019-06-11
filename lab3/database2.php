<?php
$mysqli = new mysqli("localhost", "root", "", "school");
$id = $_POST['id'];

if ($mysqli->connect_errno) {
    echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    exit();
}
	$sql = "SELECT * FROM `students`";
	$result = $mysqli->query($sql);
	if(!$result)
	{
		echo "Не удалось выполнить запрос!";
		exit();
	}

while ($row = $result->fetch_assoc()) {
	if($row['id']== $id){		
		echo "Name: ".$row['name']."<br>Team: ".$row['address']."<br><hr>";
		exit();
	}
	
}
echo "Не найдено!";
?>
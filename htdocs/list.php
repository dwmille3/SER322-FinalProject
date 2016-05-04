<?php

if (isset($_POST["btnList"]) && isset($_POST["radioList"]) ) {
    $connection = getConnection();
    $data = getData($_POST["radioList"], $_POST["radioList"], $_POST["radioList"]);
    $result = $connection->query($data["sql"]);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<p>";
            foreach ($data["columns"] as $column) {
                echo "<strong>$column</strong> - " . $row[$column] . "<br>";
            }
            echo "</p>";
        }
    }

    else {
        echo "0 results.";
    }

    $connection->close();
}
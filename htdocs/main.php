<?php

include('functions.php');

if (isset($_POST["btnSubmit"])) {
    $connection = getConnection();
    $data = getData($_POST["selection"], $_POST["text"], $_POST["compare"]);
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

else if (isset($_POST["btnInsert"]) && isset($_POST["radioChoice"]) ) {
    $connection = getConnection();
    $query = getInsertQuery($_POST);
    $result = $connection->query($query);

    echo "<p>Query: '$query' <br></p>";

    if ($result) {
        echo "<p>Query successfully added.</p>";
    }

    else {
        echo "<p>Error with query.</p>";
    }

    $connection->close();
}
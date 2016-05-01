<?php

include('functions.php');

if (isset($_POST["btnSubmit"])) {

    # Connect and get data
    $connection = getConnection();
    $data = getData($_POST["selection"], $_POST["text"], $_POST["compare"]);
    $result = $connection->query($data["sql"]);

    # Display results
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            foreach ($data["columns"] as $column) {
                echo "$column - " . $row[$column] . "<br>";
            }
        }
    }

    else {
        echo "0 results.";
    }

    # Close connection
    $connection->close();
}

else if (isset($_POST["btnInsert"]) &&isset($_POST["radioChoice"]) ) {
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

    # Close connection
    $connection->close();
}
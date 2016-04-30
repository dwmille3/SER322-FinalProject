<?php

include('functions.php');

if (isset($_POST["selection"]) && !isset($_POST['btnClear'])) {

    # Variables
    $selectionType = $_POST["selection"];
    $text = $_POST["text"];
    $compare = $_POST["compare"];

    # Evaluate query and column names
    $query = "";
    $columns = array();

    if ($selectionType === "whoPlayed") {
        $query = whoPlayed($text, $compare);
        $columns = array("Name");
    }

    else if ($selectionType === "castOf") {
        $query = castOf($text);
        $columns = array("Name", "BirthDate", "DeathDate", "BirthPlace", "Biography");
    }

    else if ($selectionType === "compareMovies") {
        $query = compareMovies($text, $compare);
        $columns = array("Name", "BirthDate", "DeathDate", "BirthPlace", "Biography");
    }

    # Connection
    $connection = connect();
    $result = $connection->query($query);

    # Display results
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            foreach ($columns as $column) {
                echo "$column - " . $row[$column] . "<br>";
            }
        }
    } else {
        echo "0 results.";
    }

    $connection->close();
}

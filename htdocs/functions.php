<?php

function getConnection() {
    $serverName = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "ser322";

    $connection = new mysqli($serverName, $username, $password, $databaseName);

    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    }

    return $connection;
}

function getData($selectionType, $text, $compare) {

    if ($selectionType === "whoPlayed") {
        return query_whoPlayed($text, $compare);
    }

    else if ($selectionType === "castOf") {
        return query_castOf($text);
    }

    else if ($selectionType === "compareMovies") {
        return query_compareMovies($text, $compare);
    }

    # default value
    return array("sql" => "", "columns" => array());
}

function getInsertQuery($formData) {

    $insertionType = $formData["radioChoice"];

    if ($insertionType === "Person") {
        $query = 'INSERT INTO `filmmaker` ';
        $query .= '(Name, BirthDate, DeathDate, BirthPlace, Biography, Height, Ethnicity, Nickname, Note) VALUES (';
        $query .= "\"$formData[name]\", \"$formData[birthDate]\", \"$formData[deathDate]\", ";
        $query .= "\"$formData[birthPlace]\", \"$formData[biography]\", \"$formData[height]\", ";
        $query .= "\"$formData[ethnicity]\", \"$formData[nickname]\", \"$formData[note]\"";
        $query .= ');';
    }

    else if ($insertionType === "Movie") {
        $query = 'INSERT INTO `movies` ';
        $query .= '(Title, ReleaseDate, DVDRelease, Runtime, Rating, ProductionType) VALUES (';
        $query .= "\"$formData[movieTitle]\", \"$formData[releaseDate]\", \"$formData[dvdReleaseDate]\", ";
        $query .= "\"$formData[runtime]\", \"$formData[rating]\", \"$formData[productionType]\"";
        $query .= ');';
    }

    else if ($insertionType === "Theater") {
        $query = 'INSERT INTO `theaters` ';
        $query .= '(Name, Location, NoOfTheaters, PhoneNo) VALUES (';
        $query .= "\"$formData[theaterName]\", \"$formData[location]\", \"$formData[noOfTheaters]\", ";
        $query .= "\"$formData[phoneNo]\"";
        $query .= ');';
    }

    else {
        return "";
    }

    return str_replace("\"\"", "NULL", $query);
}

function query_whoPlayed($character, $movie) {
    $columns = array("Name");

    $sql = "SELECT Name ";
    $sql .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $sql .= "WHERE f.PID = c.PID ";
    $sql .= "AND m.MID = c.MID ";
    $sql .= "AND m.Title = \"$movie\" ";
    $sql .= "AND c.Role = \"$character\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
};

function query_castOf($movie) {
    $columns = array("Name", "BirthDate", "DeathDate", "BirthPlace", "Biography");

    $sql = "SELECT f.Name, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
    $sql .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $sql .= "WHERE f.PID = c.PID ";
    $sql .= "AND m.MID = c.MID ";
    $sql .= "AND m.Title = \"$movie\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}

function query_compareMovies($movie1, $movie2) {
    $columns = array("Name", "BirthDate", "DeathDate", "BirthPlace", "Biography");

    $sql = "SELECT f.Name, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
    $sql .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $sql .= "WHERE f.PID = c.PID ";
    $sql .= "AND m.MID = c.MID ";
    $sql .= "AND m.Title = \"$movie1\" ";
    $sql .= "AND f.PID IN (SELECT x.PID ";
    $sql .= "FROM FilmMaker x, CastCrew y, Movies z ";
    $sql .= "WHERE x.PID = y.PID ";
    $sql .= "AND z.MID = y.MID ";
    $sql .= "AND z.Title = \"$movie2\")";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}
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

    else if ($selectionType === "charactersOfPerson") {
        return query_charactersOfPerson($text);
    }

    else if ($selectionType === "theatersOfMovie") {
        return query_theatersOfMovie($text);
    }

    else if ($selectionType === "getPerson") {
        return query_getPerson($text);
    }

    else if ($selectionType === "getMovie") {
        return query_getMovie($text);
    }

    else if ($selectionType === "getTheater") {
        return query_getTheater($text);
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

function query_getPerson($person){
    $columns = array("Name", "BirthDate", "DeathDate", "BirthPlace",
        "Biography", "Height", "Ethnicity", "Nickname", "Note");

    $sql = 'SELECT `Name`, `BirthDate`, `DeathDate`, `BirthPlace`, `Biography`, `Height`, ';
    $sql .= '`Ethnicity`, `Nickname`, `Note` FROM `filmmaker` f ';
    $sql .= "WHERE f.Name = \"$person\"";

    return array("sql" => $sql, "columns" => $columns);
}

function query_getMovie($movie){
    $columns = array("Title", "ReleaseDate", "DVDRelease", "Runtime", "Rating", "ProductionType");

    $sql = "SELECT `Title`, `ReleaseDate`, `DVDRelease`, `Runtime`, `Rating`, `ProductionType` FROM `movies` m ";
    $sql .= "WHERE m.Title = \"$movie\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}

function query_getTheater($theater){
    $columns = array("TID", "Name", "Location", "NoOfTheaters", "PhoneNo");
    
    $sql = "SELECT `TID`, `Name`, `Location`, `NoOfTheaters`, `PhoneNo` FROM `theaters` t ";
    $sql .= "WHERE t.Name = \"$theater\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
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
    $columns = array("Name", "CastType", "BirthDate", "DeathDate", "BirthPlace", "Biography");

    $sql = "SELECT f.Name, c.CastType, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
    $sql .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $sql .= "WHERE f.PID = c.PID ";
    $sql .= "AND m.MID = c.MID ";
    $sql .= "AND m.Title = \"$movie\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}

function query_compareMovies($movie1, $movie2) {
    $columns = array("Name", "CastType", "BirthDate", "DeathDate", "BirthPlace", "Biography");

    $sql = "SELECT f.Name, c.CastType, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
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

function query_charactersOfPerson($person){
    $columns = array("Role", "Title");

    $sql = "SELECT c.Role, m.Title ";
    $sql .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $sql .= "WHERE f.PID = c.PID ";
    $sql .= "AND m.MID = c.MID ";
    $sql .= "AND f.Name = \"$person\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}

function query_theatersOfMovie($movie){
    $columns = array("Name", "Location", "ShowTimes");

    $sql = "SELECT t.Name, t.Location, s.ShowTimes ";
    $sql .= "FROM Theaters t, Showing s, Movies m ";
    $sql .= "WHERE t.TID = s.TID ";
    $sql .= "AND m.MID = s.MID ";
    $sql .= "AND m.Title = \"$movie\"";
    $sql .= ";";

    return array("sql" => $sql, "columns" => $columns);
}

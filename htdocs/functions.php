<?php

function connect() {
    $server_name = "localhost";
    $username = "root";
    $password = "";
    $db_name = "ser322";

    // Create connection
    $connection = new mysqli($server_name, $username, $password, $db_name);

    // Check connection
    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    }

    return $connection;
}

function whoPlayed($character, $movie) {
    $query = "SELECT Name ";
    $query .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $query .= "WHERE f.PID = c.PID ";
    $query .= "AND m.MID = c.MID ";
    $query .= "AND m.Title = \"$movie\" ";
    $query .= "AND c.Role = \"$character\"";
    $query .= ";";
    return $query;
};

function castOf($movie) {
    $query = "SELECT f.Name, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
    $query .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $query .= "WHERE f.PID = c.PID ";
    $query .= "AND m.MID = c.MID ";
    $query .= "AND m.Title = \"$movie\"";
    $query .= ";";
    return $query;
}

function compareMovies($movie1, $movie2) {
    $query = "SELECT f.Name, f.BirthDate, f.DeathDate, f.BirthPlace, f.Biography ";
    $query .= "FROM FilmMaker f, CastCrew c, Movies m ";
    $query .= "WHERE f.PID = c.PID ";
    $query .= "AND m.MID = c.MID ";
    $query .= "AND m.Title = \"$movie1\" ";
    $query .= "AND f.PID IN (SELECT x.PID ";
    $query .= "FROM FilmMaker x, CastCrew y, Movies z ";
    $query .= "WHERE x.PID = y.PID ";
    $query .= "AND z.MID = y.MID ";
    $query .= "AND z.Title = \"$movie2\")";
    $query .= ";";
    return $query;
}


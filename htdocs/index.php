<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">

<head>
    <title>SER322 Query Form</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
</head>

<body>

<div class="parent-container" id="left">
    <div class="container">
        <h1>Query: </h1>
        <form action="index.php" method="post">
            <div class="spaced-input">
                <select name="selection" title="selection">
                    <option value="whoPlayed">Who played... in ..?</option>
                    <option value="castOf">Cast and Crew of...</option>
                    <option value="compareMovies">Compare two movies cast list</option>
                    <option value="charactersOfPerson">Get all characters played by ...</option>
                    <option value="theatersOfMovie">Get all theaters playing ...</option>
                    <option value="getPerson">Get all details of person ...</option>
                    <option value="getMovie">Get all details of movie ...</option>
                    <option value="getTheater">Get all details of theater ...</option>

                </select>
            </div>
            <div class="spaced-input">
                <input type="text" name="text" id="text" placeholder="title/name/theater">
                <input type="text" name="compare" id="compare" placeholder="title/name/theater">
            </div>
            <div class="spaced-input">
                <button name="btnSubmit" type="submit">Submit</button>
                <button name="btnClear">Clear</button>
            </div>
        </form>
    </div>
    
</div>

<div class="parent-container" id="right";>
    <div class="container">
        <h1>Insert: </h1>
        <form action="index.php" method="post">
            <div>
                <input type="radio" value="Person" name="radioChoice"> Person <br>
                <input type="radio" value="Movie" name="radioChoice"> Movie <br>
                <input type="radio" value="Theater" name="radioChoice"> Theater <br>
            </div>
            <div class="spaced-input">
                <div class="hiddenChoices" id="personChoice">
                    <input type="text" name="name" id="name" placeholder="name ...">
                    <input type="date" name="birthDate" id="birthDate" placeholder="birth date ...">
                    <input type="date" name="deathDate" id="deathDate" placeholder="death date ...">
                    <input type="text" name="birthPlace" id="birthPlace" placeholder="birth place ...">
                    <input type="text" name="biography" id="biography" placeholder="biography ...">
                    <input type="text" name="height" id="height" placeholder="height ...">
                    <input type="text" name="ethnicity" id="ethnicity" placeholder="ethnicity ...">
                    <input type="text" name="nickname" id="nickname" placeholder="nickname ...">
                    <input type="text" name="note" id="note" placeholder="notes ...">
                </div>
                <div class="hiddenChoices" id="movieChoice">
                    <input type="text" name="movieTitle" id="movieTitle" placeholder="title ...">
                    <input type="date" name="releaseDate" id="releaseDate" placeholder="release date ...">
                    <input type="date" name="dvdReleaseDate" id="dvdReleaseDate" placeholder="dvd release date ...">
                    <input type="text" name="runtime" id="runtime" placeholder="runtime ...">
                    <input type="text" name="rating" id="rating" placeholder="rating ...">
                    <input type="text" name="productionType" id="productionType" placeholder="production type ...">
                </div>
                <div class="hiddenChoices" id="theaterChoice">
                    <input type="text" name="theaterName" id="theaterName" placeholder="name ...">
                    <input type="text" name="location" id="location" placeholder="location ...">
                    <input type="text" name="noOfTheaters" id="noOfTheaters" placeholder="number of theaters ...">
                    <input type="text" name="phoneNo" id="phoneNo" placeholder="phone number ...">
                </div>
            </div>
            <div class="spaced-input">
                <button name="btnInsert" type="submit">Insert</button>
            </div>
        </form>
    </div>
</div>
<div class="parent-container" id="result";>
    <div class="container">
        <h1>Result: </h1>
        <?php include('main.php') ?>
    </div>
</div>

<script>
    $("input[type=radio]:checked").attr("checked", false);

    $("input[type=radio]").click(function(e) {
        $(".hiddenChoices").hide();
        $(".hiddenChoices input").val(null);
        let choice = e.currentTarget.nextSibling.textContent.trim();
        if (choice === "Person")
            $("#personChoice").show();
        else if (choice === "Movie")
            $("#movieChoice").show();
        else if (choice === "Theater")
            $("#theaterChoice").show();
    });

    $("#birthDate").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        changeMonth: true,
        yearRange:"1980:2016"
    });

    $("#deathDate").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        changeMonth: true,
        yearRange:"1980:2016"
    });

    $("#releaseDate").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        changeMonth: true,
        yearRange:"1980:2016"
    });

    $("#dvdReleaseDate").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        changeMonth: true,
        yearRange:"1980:2016"
    });
</script>

</body>

</html>
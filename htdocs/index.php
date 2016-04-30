<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">

<head>
    <title>SER322 Query Form</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <h1>Query: </h1>
        <form action="index.php" method="post">
            <div class="spaced-input">
                <select name="selection" title="selection">
                    <option value="whoPlayed">Who played... in ..?</option>
                    <option value="castOf">Cast and Crew of...</option>
                    <option value="compareMovies">Compare two movies cast list</option>
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

    <div class="container">
        <h1>Result: </h1>
        <?php include('main.php') ?>
    </div>
</body>

</html>
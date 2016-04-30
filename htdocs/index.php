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
				<label for="input">INPUT NEW ELEMENT</label>
			</div>
			<form>
				<input type="radio" name="type" id="theater" value="radio_group">Theater
				<input type="radio" name="type" id="movie" value="radio_group">Movie
				<input type="radio" name="type" id="person" value="radio_group">Person
			</form>
			<div class="spaced-input">
				<input type="text" name="title" id="title" placeholder="title/name">
                <input type="text" name="date1" id="date1" placeholder="Location/ReleaseDate/BirthDate">
				<input type="text" name="date2" id="date2" placeholder="NoOfTheater/DVDRelease/DeathDate"><br>
				<input type="text" name="runtime" id="runtime" placeholder="PhoneNo/Runtime/BirthPlace">
				<input type="text" name="rating" id="rating" placeholder="Blank/Rating/Biography">
				<input type="text" name="production" id="production" placeholder="Blank/ProductionType/Height"><br>
				<input type="text" name="genre1" id="genre1" placeholder="Blank/Genre1/Ethnicity">
				<input type="text" name="genre1" id="genre2" placeholder="Blank/Genre2/Nickname"><br>
				<input type="text" name="review1" id="review1" placeholder="Blank/Review1/Note">
				<input type="text" name="review2" id="review2" placeholder="Blank/Review2/Blank">
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
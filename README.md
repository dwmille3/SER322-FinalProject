# SER322-FinalProject  
  
#### To launch our UI:
 * 1) Use XAMPP and use the included .sql files to recreate the database via the MySQL phpMyAdmin interface.
   * 127_0_0_1.sql is our highest level directory, ser322.sql is our specific database. You will probably only need the second one.
 * 2) Once the database has been created, use the Apache Admin button to launch "http://localhost/index.php" to find our web interface.

#### Using the UI:
* Query Dialogue Box:
 * The Query Dialogue Box lets you select a kind of query you would like to see. Note the second text box labelled "compare to title" is only used when comparing two movies' cast and crew, or when using the "Who played ... in ...?" option.
* Insert Dialogue Box:
  * This lets you insert your own data into the database. New entries can be viewed via the List Dialogue Box. 
  * Please note the known issues about this below.
* Result Box:
  * Displays the results of the Query Box's queries. Also displays most error messages, when errors present themselves.
* List Dialogue Box:
  * This allows you to see listings for all the entities in our database. This will display current results each time the "Display List" button is clicked, as long as there is a radio button selected.  

#### Known Issues & Limitations:
   * DO NOT ENTER QUOTES INTO ANY TEXT BOXES. Currently, our text boxes are subject to code injection vulnerabilities, since quotes are not currently handled in a secure way.
   * Currently, our Query Dialogue Box requires EXACT MATCHES in order to display results. This is part of why the List Dialogue Box was necessary.
   * For the reason stated above, adding relations to the List Dialogue Box might have been useful, but we did not have time to do this.
   * You cannot add new relationships via the GUI. We would like to add this, but we did not.
   * Some text characters display improperly.	
   * Be careful about leaving any text boxes blank when attempting to insert a data entry, as you might not know which fields can be NULL.

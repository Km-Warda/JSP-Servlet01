<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

    <form action="handle-form" method="post">
        <h2>Registration Form</h2>

        <label>First Name:</label>
        <input type="text" name="f_name" />

        <label>Last Name:</label>
        <input type="text" name="l_name" />

        <label>Password:</label>
        <input type="password" name="pass" />

        <div class="radio-group">
            <label>Favorite Programming (Radio):</label>
            <input type="radio" name="favProgramming" value="Java"> Java
            <input type="radio" name="favProgramming" value="C++"> C++
            <input type="radio" name="favProgramming" value="C#"> C#
            <input type="radio" name="favProgramming" value="PHP"> PHP
        </div>

        <label>Select Favorite Programming (Dropdown):</label>
        <select name="favPr">
            <option value="Java">Java</option>
            <option value="C++">C++</option>
            <option value="C#">C#</option>
            <option value="PHP">PHP</option>
        </select>

        <div class="checkbox-group">
            <label>Favorite Programming (Checkbox):</label>
            <input type="checkbox" name="favProgrammingWithCheckbox" value="Java"> Java
            <input type="checkbox" name="favProgrammingWithCheckbox" value="C++"> C++
            <input type="checkbox" name="favProgrammingWithCheckbox" value="C#"> C#
            <input type="checkbox" name="favProgrammingWithCheckbox" value="PHP"> PHP
        </div>

        <input type="submit" value="Send Data">
    </form>

</body>
</html>

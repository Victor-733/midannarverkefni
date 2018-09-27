<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Bensín</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
    <header>
        <h1>Söluaðilar eldsneytis á Íslandi</h1>
    </header>
    <div class="wrapper">
    <%
        le = len(data["results"])

        for i in range(le -1):

        if (data["results"][i]["company"] != data["results"][i + 1]["company"]):
    %>
        <div class="box">
            <a href="/company/{{data['results'][i]['company']}}">{{data["results"][i]["company"]}}</a>
        </div>
        <% end
    end %>
    </div>  
    <footer>
        <p>Victor Wahid Ívarsson &copy; 2018</p>
    </footer>
</body>
</html>
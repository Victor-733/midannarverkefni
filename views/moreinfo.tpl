<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Upplýsingar</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles_3.css" />
</head>
<body>
    <header>
        <h1>Nánari upplýsingar</h1>
    </header>
    <div class="wrapper">
        <%
            for i in data["results"]:
                if i["key"] == k:
        %>
            <h3>Söluaðili: {{i['company']}}</h3>
            <h3>Staður: {{i['name']}}</h3>
            <h3>Bensín 95: {{i['bensin95']}}kr.</h3>
            <h3>Dísel: {{i['diesel']}}kr.</h3>
            <ul class="kort">
                <li>Lengdargráða: {{i["geo"]["lat"]}}</li>
                <li>Breiddargráða: {{i["geo"]["lon"]}}</li>
                <li><a href="https://google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z" target="_blank">Link á kort</a></li>
            </ul>
        <% end
        end %>
    </div>
    <hr>
    <footer>
        <a href="/">Heim</a>
    </footer>
</body>
</html>
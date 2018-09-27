<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Page Title</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/styles_2.css" />
</head>
<body>
    <table class="wrapper">
        <tr>
            <th>Fyrirtæki</th>
            <th>Staður</th>
            <th>Verð Bensín 95</th>
            <th>Verð Dísel</th>
        </tr>
        <%
            cnt = 0
            for i in data["results"]:
                if i["company"] == co:
                cnt += 1
        %>
            <tr>
                <td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
                <td>{{i['name']}}</td>
                <td>{{i["bensin95"]}}kr.</td>
                <td>{{i["diesel"]}}kr.</td>
            </tr>
        <% end
        end %>
    </table>
    
    <h3>Fjöldi stöðva: {{cnt}}</h3>
    <footer>
        <p>Victor Wahid Ívarsson &copy;</p>
    </footer>
</body>
</html>
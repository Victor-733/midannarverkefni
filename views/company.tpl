<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Page Title</title>
    <link rel="stylesheet" type="text/css" media="screen" href="" />
</head>
<body>
    <table>
        <tr>
            <th>Fyrirtæki</th>
            <th>Staður</th>
        </tr>
        <%
            cnt = 0
            for i in data["results"]:
                if i["company"] == co:
                cnt += 1
        %>
            <tr>
                <td><a href="/moreinfo/{{i['key']}}></a></td>
            </tr>
    </table>
</body>
</html>
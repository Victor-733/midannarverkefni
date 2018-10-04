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
    <div class="myndir">
        <img src="/static/atlantsolia.svg" alt="atlantsolia">
        <img src="/static/costco.svg" alt="costco">
        <img src="/static/daelan.svg" alt="daelan">
        <img src="/static/n1.svg" alt="n1">
        <img src="/static/ob.svg" alt="ob">
        <img src="/static/olis.svg" alt="olis">
        <img src="/static/orkan.svg" alt="orkan">
    </div>
    <div class="wrapper">
    <%
        le = len(data["results"])

        for i in range(le-1):

        if (data["results"][i]["company"] != data["results"][i - 1]["company"]):
    %>
        <div class="box">
            <a href="/company/{{data['results'][i]['company']}}">{{data["results"][i]["company"]}}</a>
        </div>
        <% end
    end %>
    </div>
    <%
        minpriceP = 2000.0
        minpriceD = 2000.0

        le = len(data["results"])
        c = 0
        for i in range(le -1):
            c=i
            if minpriceP > data["results"][i]["bensin95"]:
                minpriceP = data["results"][i]["bensin95"]
                companyP = data["results"][i]["company"]
            end

            if minpriceD > data["results"][i]["diesel"]:
                minpriceD = data["results"][i]["diesel"]
                companyD = data["results"][i]["company"]
            end
    %>
    <% end
    %>

    <div class="besta-verd">
        <h3>Besta Verðið:</h3>
        <h4>Bensín 95 oktan: <i>{{minpriceP}}</i>kr. er hjá: {{companyP}}</h4>
        <h4>Dísel: <i>{{minpriceD}}</i>kr. er hjá: {{companyD}}</h4>
    </div>
    <%
        end
    end
    %>
    <%
        import datetime
        t = data["timestampPriceCheck"]
        t = t [:19]
        d = datetime.datetime.strptime(t, '%Y-%m-%dT%H:%M:%S')
    %>
    <div class="last-updated">
        <p>síðast uppfært: {{d.strftime('%d:%m-%Y-Kl.%H:%M')}}</p>
    </div>
    <footer>
        <p>Victor Wahid Ívarsson &copy; 2018</p>
    </footer>
</body>
</html>
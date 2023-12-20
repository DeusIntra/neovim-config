local g = vim.g

g.user_emmet_leader_key = '<c-l>'
g.user_emmet_settings = {
    variables = {
        lang = 'ru',
    },
    html = {
        snippets = {
            ['html:5'] = [[
<!DOCTYPE html>
<html lang="${lang}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My Website</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="icon" href="./favicon.ico" type="image/x-icon">
</head>
<body>
    <main>
    </main>
</body>
</html>
]]
        }
    }
}

replace = (elm) ->
    pattern = "[(（]\s*(\d+)\s*,\s*(\d+)\s*[)）]"
    regex_all = /[\(（](\d+),(\d+)[\)）]/gm
    regex = /[\(（](\d+),(\d+)[)\）]/

    str = $(elm).html().replace regex_all, (text) ->
        match = text.match(regex)
        x = match[1]
        y = match[2]
        "<a href=\"http://m9.3gokushi.jp/big_map.php?x=#{x}&y=#{y}\" style=\"display:inline\">#{match[0]}</a>"
    $(elm).html(str)

console.log window.location.pathname
replace $("#gray02Wrapper > table td", document.body)[4] if window.location.pathname == "/message/detail.php"
for comment in $("#comment tr td:last-child")
    replace comment

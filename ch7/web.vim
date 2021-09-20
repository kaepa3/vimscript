let res = webapi#http#get("https://example.com/food.xml/")
let doc = xml#parse(res.content)
for food in doc.childNodes("foods")
    echo food.childNode("recipe").childNode("name").value().":"
                \.food.childNode("description").value()
endfor

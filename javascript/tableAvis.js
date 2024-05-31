function createNode(element){
    return document.createElement(element);
}

function append(parent, el){
    return parent.appendChild(el);
}

const avis_ul = document.getElementById("tableAvis")

const url = "http://localhost:8080/ords/hr2/avis/"
fetch(url)
    .then((resp) => resp.json())
    .then(function(data) {
        let avis = data.items;
        return avis.map(function (avis){
            let li = createNode("li"); 
            span = createNode("span");
            span.innerHTML = `${avis.avis}  ${avis.note}`;
            append(li, span);
            append(avis_ul, li);
        });
    })
    .catch(function (error){
        console.log(JSON.stringify(error));
    });
function createNode(element){
    return document.createElement(element);
}

function append(parent, el){
    return parent.appendChild(el);
}

const avis_ul = document.getElementById("tableAvis")
const url = "http://127.0.0.1:8080/ords/hr2/avis"
fetch(url)
    .then((resp) => resp.json())
    .then(function(data) {
        let Avis = data.items;
        return Avis.map(function (avis){
            let li = createNode("li"); 
            span = createNode("span");
            span.innerHTML = `${avis.avis} NOTE : ${avis.note}/5`;
            append(li, span);
            append(avis_ul, li);
        });
    })
    .catch(function (error){
        console.log(JSON.stringify(error));
    });
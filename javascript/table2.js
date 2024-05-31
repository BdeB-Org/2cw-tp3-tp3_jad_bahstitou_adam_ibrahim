function createNode(element){
    return document.createElement(element);
}

function append(parent, el){
    return parent.appendChild(el);
}

const genres_ul = document.getElementById("tableGenres")
const url = "http://127.0.0.1:8080/ords/hr2/genres"
fetch(url)
    .then((resp) => resp.json())
    .then(function(data) {
        let Genres = data.items;
        return Genres.map(function (genres){
            let li = createNode("li"); 
            span = createNode("span");
            span.innerHTML = `${genres.nom}`;
            append(li, span);
            append(genres_ul, li);
        });
    })
    .catch(function (error){
        console.log(JSON.stringify(error));
    });
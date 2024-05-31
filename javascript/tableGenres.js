fetch('http://localhost:8080/ords/hr2/genres/')
 .then(response => response.json())
 .then(data => {
    const ul = document.getElementById('tableGenres');
    const list = document.createDocumentFragment();

    data.forEach(genre => {
      const li = document.createElement('li');
      const nom = document.createElement('h2');
      nom.innerHTML = `${genre.nom}`; // or genre.name, depending on the API response
      li.appendChild(nom);
      list.appendChild(li);
    });

    ul.appendChild(list);
  })
 .catch(error => console.error('Erreur lors de la récupération des genres:', error));
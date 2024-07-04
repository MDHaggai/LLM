const input = document.querySelector('#input');
const form = document.querySelector('form');
 const API_URL = "http://www.omdbapi.com/?apikey=340bce0c";

form.addEventListener('submit', onSubmit);

function onSubmit(e) {
  e.preventDefault();
  const value = input.value
  fetch(`https://imdb-api.com/en/API/SearchMovie/api-key/${value}`)
     .then(response => response.json())
     .then(json => console.log(json))
}
//
// function fetchData() {
//
//  };
//
//  fetchData();

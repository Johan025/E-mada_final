
  // Coordonnées de Madagascar Ouest
  const latitude = -20.2833;
  const longitude = 44.2833;

  // Initialiser la carte
  const map = L.map('map').setView([latitude, longitude], 7);

  // Ajouter la couche de carte
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  // marqueur
  const marker = L.marker([latitude, longitude]).addTo(map);
  marker.bindPopup("Ouest");



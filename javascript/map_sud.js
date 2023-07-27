
  // Coordonnées de Madagascar Sud
  const latitude = -23.2345;
    const longitude = 45.4567;

  // Initialiser la carte
  const map = L.map('map').setView([latitude, longitude], 7);

  // Ajouter la couche de carte
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  //markeur
  const marker = L.marker([latitude, longitude]).addTo(map);
  marker.bindPopup("Sud");



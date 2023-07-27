
  // Coordonnées de Madagascar Nord
  const latitude = -12.2800;
    const longitude =  49.2917;

    

  // Initialiser la carte
  const map = L.map('map').setView([latitude, longitude], 7);


  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  //markeur
  const marker = L.marker([latitude, longitude]).addTo(map);
  marker.bindPopup("Nord");



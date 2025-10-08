% Conocimiento de rutas
% ruta(Origen, Destino, Medio, HoraSalida, HoraLlegada, CostoUSD, Disponible).

% Bogotá <-> Medellín
ruta(bogota, medellin, avion, 8.0, 9.0, 100, si).
ruta(bogota, medellin, bus, 6.0, 16.0, 40, si).
ruta(bogota, medellin, bus, 20.0, 6.0, 40, si). % nocturno (llega al día siguiente, ver tiempo como diferencia simple)
ruta(medellin, bogota, avion, 19.0, 20.0, 100, si).
ruta(medellin, bogota, bus, 7.0, 17.0, 40, si).

% Medellín <-> Cartagena
ruta(medellin, cartagena, avion, 10.0, 11.5, 120, no).
ruta(medellin, cartagena, bus, 5.5, 20.5, 70, si).
ruta(cartagena, medellin, avion, 12.0, 13.5, 120, si).

% Cartagena <-> Santa Marta
ruta(cartagena, santa_marta, bus, 14.0, 18.0, 30, si).
ruta(santa_marta, cartagena, bus, 9.0, 13.0, 30, si).

% Bogotá <-> Cali
ruta(bogota, cali, avion, 7.0, 8.0, 90, si).
ruta(bogota, cali, bus, 21.0, 7.0, 45, si).
ruta(cali, bogota, avion, 12.0, 13.0, 90, si).
ruta(cali, bogota, bus, 20.0, 6.0, 45, si).

% Cali <-> Medellín
ruta(cali, medellin, avion, 9.0, 10.0, 80, si).
ruta(cali, medellin, bus, 8.0, 18.0, 50, si).
ruta(medellin, cali, bus, 9.0, 19.0, 50, si).

% Bogotá <-> Barranquilla
ruta(bogota, barranquilla, avion, 9.0, 10.5, 110, si).
ruta(barranquilla, bogota, avion, 17.0, 18.5, 110, si).

% Barranquilla <-> Cartagena
ruta(barranquilla, cartagena, bus, 7.0, 9.0, 20, si).
ruta(cartagena, barranquilla, bus, 12.0, 14.0, 20, si).

% Bogotá <-> Bucaramanga
ruta(bogota, bucaramanga, avion, 6.0, 7.0, 80, si).
ruta(bogota, bucaramanga, bus, 22.0, 6.0, 35, si).
ruta(bucaramanga, bogota, avion, 18.0, 19.0, 80, si).

% Medellín <-> Santa Marta (indirecta habitual)
ruta(medellin, santa_marta, bus, 5.0, 22.0, 85, no).

% Bogotá <-> Pereira / Manizales / Armenia (Eje cafetero)
ruta(bogota, pereira, avion, 8.0, 9.0, 70, si).
ruta(pereira, manizales, bus, 10.0, 12.0, 15, si).
ruta(manizales, armenia, bus, 13.0, 15.0, 12, si).
ruta(armenia, medellin, bus, 16.0, 23.0, 40, si).

% Bogotá <-> Cúcuta
ruta(bogota, cucuta, avion, 11.0, 12.0, 85, si).
ruta(cucuta, bogota, avion, 13.0, 14.0, 85, si).

% Bogotá <-> Ibagué / Villavicencio
ruta(bogota, ibague, bus, 7.0, 11.0, 20, si).
ruta(ibague, villavicencio, bus, 12.0, 18.0, 30, si).
ruta(villavicencio, bogota, bus, 6.0, 10.0, 20, si).

% Cali <-> Pasto
ruta(cali, pasto, bus, 6.0, 18.0, 45, si).
ruta(pasto, cali, bus, 7.0, 19.0, 45, si).

% Conexiones adicionales para alternativas
ruta(pereira, medellin, bus, 12.0, 18.0, 35, si).
ruta(bogota, armenia, bus, 6.0, 12.0, 25, si).
ruta(armenia, cartagena, avion, 13.0, 14.5, 130, no).
ruta(armenia, cartagena, bus, 14.0, 6.0, 90, si).
ruta(bogota, cartagena, avion, 15.0, 16.5, 120, si).
ruta(bogota, cartagena, bus, 8.0, 22.0, 60, si).
ruta(bogota, santa_marta, avion, 16.0, 17.5, 130, no).
ruta(medellin, santa_marta, avion, 9.0, 10.5, 140, si).


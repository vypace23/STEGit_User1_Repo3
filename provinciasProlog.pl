% Base de datos de provincias con su cantidad de habitantes
provincia('Buenos Aires', 17500000).
provincia('Córdoba', 3900000).
provincia('Santa Fe', 3500000).
provincia('Mendoza', 2000000).
provincia('Tucumán', 1700000).
provincia('Entre Ríos', 1400000).
provincia('Salta', 1400000).
provincia('Misiones', 1300000).
provincia('Chaco', 1200000).
provincia('Corrientes', 1200000).
provincia('Santiago del Estero', 1100000).
provincia('San Juan', 850000).
provincia('Jujuy', 800000).
provincia('Río Negro', 750000).
provincia('Neuquén', 700000).
provincia('Formosa', 600000).
provincia('Chubut', 600000).
provincia('San Luis', 550000).
provincia('Catamarca', 400000).
provincia('La Rioja', 400000).
provincia('La Pampa', 350000).
provincia('Santa Cruz', 350000).
provincia('Tierra del Fuego', 200000).

% Regla para listar todas las provincias con su población
listar_provincias :-
    provincia(Nombre, Habitantes),
    format('~w: ~w habitantes~n', [Nombre, Habitantes]),
    fail.
listar_provincias.

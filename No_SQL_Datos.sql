db.universidad.insertMany([
{nombre:"Universidad Continental", provincia:"Lima",distrito:"San Borja", direccion:{ciudad:"Lima", calle:"Av. Las palmas 556"}},
{nombre:"Universidad del Callao", provincia:"Callao",distrito:"Callao", direccion:{ciudad:"Callao", calle:"Av. Ramon Castilla 123"}},
{nombre:"Universidad San Cristobal de Huamanga", provincia:"Ayacucho",distrito:"Huamanga", direccion:{ciudad:"Ayacucho", calle:"Jr. Los laureles 167"}},
{nombre:"Universidad Nacional de Ica", provincia:"Ica",distrito:"Ica", direccion:{ciudad:"Ica", calle:"Av. Independencia 123"}},
{nombre:"Universidad Señor de Sipán", provincia:"Chiclayo",distrito:"Pimentel", direccion:{ciudad:"Chiclayo", calle:"Jr. Las rosas 125"}},
{nombre:"Universidad Peruana de Ciencias Aplicadas", provincia:"Lima", distrito:"San Miguel", direccion:{ciudad:"Lima"}}
]
);

db.universitario.insertMany([
{nombre:"Maria",apellido:"Taboada", edad: 23,email:"maria_tabo@outlook.com",carrera:"Comunicaciones",genero:"F" },
{nombre:"Pedro",apellido:"Andaluz", edad: 21,email:"pedro1225@outlook.com",carrera:"Ingenieria Ambiental",genero:"M" },
{nombre:"Guillermo",apellido:"Perlacios", edad: 20,email:"guille1290@outlook.com",carrera:"Artes Escenicas",genero:"M" },
{nombre:"Lira",apellido:"Valenzuela", edad: 18,email:"lira.val12@outlook.com",carrera:"Adm Negocios Internacionales",genero:"F" },
{nombre:"Enrique",apellido:"Montano", edad: 24,email:"kike-212@outlook.com",carrera:"Ingenieria Mecanica",genero:"M" }
]
)

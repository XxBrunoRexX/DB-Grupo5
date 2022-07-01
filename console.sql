use sample_upc
db.createCollection(
   "universidad",
   { validator:
       {$jsonSchema:
           {   bsonType: "object",
               description: "Documento que describe la universidad",
               required: ["nombre", "provincia", "distrito", "direccion"],
               properties:
               {   "nombre":{
                       bsonType: "string",
                       description: "El nombre debe ser un string y es obligatorio"
                   },
                   "provincia":{
                       bsonType: "string",
                       description: "La provincia debe ser un string y es obligatorio"
                   },
                   "distrito":{
                       bsonType: "string",
                       description: "El distrito debe ser un string y es obligatorio"
                   },
                   "direccion" : {
                               bsonType: "object",
                               required: ["ciudad"],
                               properties: {
                                   "ciudad": {
                                       bsonType: "string",
                                       description: "Ciudad es un string y es obligatoria"
                                   },
                                   "calle":{
                                       bsonType: "string",
                                       description: "Calle es un string y es opcional"
                                   }

                               }
                    },
               }
           }
       }
   }

);

db.createCollection(
   "universitario",
   { validator:
       {$jsonSchema:
           {   bsonType: "object",
               description: "Documento que describe la universidad",
               required: ["nombre", "apellido", "edad", "email","carrera"],
               properties:
               {   "nombre":{
                       bsonType: "string",
                       description: "El nombre debe ser un string y es obligatorio"
                   },
                   "apellido":{
                       bsonType: "string",
                       description: "El apellido debe ser un string y es obligatorio"
                   },
                   "edad":{
                       bsonType: "int",
                       description: "La edad debe ser un int y es obligatorio"
                   },
                   "email" : {
                       bsonType: "string",
                       description: "El email debe ser de string y es obligatorio"
                    },
                    "carrera":{
                       bsonType: "string",
                       description: "La carrera debe ser un string y es obligatorio"
                   },
                    "genero": {
                       enum: ["M", "F"],
                       description: "El genero solo puede ser 'M' o  'F' y es opcional "
                    }
               }
           }
       }
   }

);



db.universitario.insert(
{nombre:"Maria",apellido:"Taboada", edad: 23,email:"maria_tabo@outlook.com",carrera:"Comunicaciones",genero:"F" }
);
db.universidad.drop();
db.universidad.insertMany([
{nombre:"Universidad Continental", provincia:"Lima",distrito:"San Borja", direccion:{ciudad:"Lima", calle:"Av. Las palmas 556"}},
{nombre:"Universidad del Callao", provincia:"Callao",distrito:"Callao", direccion:{ciudad:"Callao", calle:"Av. Ramon Castilla 123"}},
{nombre:"Universidad San Cristobal de Huamanga", provincia:"Ayacucho",distrito:"Huamanga", direccion:{ciudad:"Ayacucho", calle:"Jr. Los laureles 167"}},
{nombre:"Universidad Nacional de Ica", provincia:"Ica",distrito:"Ica", direccion:{ciudad:"Ica", calle:"Av. Independencia 123"}},
{nombre:"Universidad Señor de Sipán", provincia:"Chiclayo",distrito:"Pimentel", direccion:{ciudad:"Chiclayo", calle:"Jr. Las rosas 125"}},
{nombre:"Universidad Peruana de Ciencias Aplicadas", provincia:"Lima", distrito:"San Miguel", direccion:{ciudad:"Lima"}}
]
);
db.universidad.find()







/*Mostrar las universidades que se encuentren en la provincia de Lima*/
db.universidad.find({provincia:"Lima"});

            /*By: Cristopher Rondon*/







db.universidad.aggregate([
    {$match:{nombre:"Pablo"}},
    {$group:{quantity:{$count:{}}}}
]);
db.universitario.insertMany([
{nombre:"Maria",apellido:"Taboada", edad: 23,email:"maria_tabo@outlook.com",carrera:"Comunicaciones",genero:"F" },
{nombre:"Pedro",apellido:"Andaluz", edad: 21,email:"pedro1225@outlook.com",carrera:"Ingenieria Ambiental",genero:"M" },
{nombre:"Guillermo",apellido:"Perlacios", edad: 20,email:"guille1290@outlook.com",carrera:"Artes Escenicas",genero:"M" },
{nombre:"Lira",apellido:"Valenzuela", edad: 18,email:"lira.val12@outlook.com",carrera:"Adm Negocios Internacionales",genero:"F" },
{nombre:"Enrique",apellido:"Montano", edad: 24,email:"kike-212@outlook.com",carrera:"Ingenieria Mecanica",genero:"M" }
]
)
//Mostrar el nombre, apellido y la edad de los universitarios que tengan como máximo 23 años
db.universitario.find({edad: {$lte:23}},{nombre:1,apellido:1,edad:1});


                    /* By: Cristopher Rondon*/








db.universitario.deleteOne({edad:23});
db.universitario.deleteMany({});
db.universidad.find();
db.universitario.find();

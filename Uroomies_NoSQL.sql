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

Vim�UnDo� W�r�9j�����"�Bt"��7�^#f�U���   #                                   `���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `��M     �                   �               5��                   #                      E      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��O     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                       #           V        `��[    �   "   $          }�   !   #            return next();�       "          3  if (!indexesCreated) await createIndexes(req.db);�      !          7  req.db = global.mongo.client.db(process.env.DB_NAME);�                 %  req.dbClient = global.mongo.client;�                  }�                (    await global.mongo.client.connect();�                    });�                      useUnifiedTopology: true,�                      useNewUrlParser: true,�                D    global.mongo.client = new MongoClient(process.env.MONGODB_URI, {�                  if (!global.mongo.client) {�                8export default async function database(req, res, next) {�                 �                }�                  indexesCreated = true;�                  ]);�                G    db.collection('users').createIndex({ email: 1 }, { unique: true }),�                :    db.collection('posts').createIndex({ createdAt: -1 }),�                @      .createIndex({ expireAt: -1 }, { expireAfterSeconds: 0 }),�                      .collection('tokens')�                    db�                  await Promise.all([�                )export async function createIndexes(db) {5��               )       ,   I      )       ,       �                         v                    �                      	   �             	       �                         �                    �               @       C   �      @       C       �               :       =   �      :       =       �               G       J   :      G       J       �                         �                    �                         �                    �                         �                    �                           �                      �               8       ;   �      8       ;       �                          �                     �               D       G         D       G       �                         U                    �                      "   u             "       �                      
   �             
       �               (       +   �      (       +       �                         �                    �               %       (   �      %       (       �               7       :   �      7       :       �                3       6   :      3       6       �    !                     q                    �    "                     �                    5�_�                     	        ����                                                                                                                                                                                                                                                                                                                                       #           V        `���    �      
          "global.mongo = global.mongo || {};5��               "       %   	      "       %       5��
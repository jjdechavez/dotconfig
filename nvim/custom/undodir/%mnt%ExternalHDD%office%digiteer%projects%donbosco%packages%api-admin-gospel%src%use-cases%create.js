Vim�UnDo� ��Ҿ�\��F~�]A��?����DL�	�m#�u   "       return { id: data.grade };                             am"	    _�                            ����                                                                                                                                                                                                                                                                                                                                                             am       �               0  const create = async ({ units, ...data }) => {5��                        I                     �                         K                      �                         J                      �                        I                     �                         L                      �                         K                      �                         J                      �                        I                     �                         M                      �                         L                      �                         K                      �                         J                      �                        I                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             am $     �               $    units.forEach((unit, index) => {5��                        {                     5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             am 7     �                .const makeCreate = ({ model, modelUnit }) => {5��        "                 "                     �                                              �                      	                 	       �               	       	          	       	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             am =     �                       modelUnit.putBatch({5��              	          �       	              �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                     	   �              	       5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                V       am �     �                .const makeCreate = ({ model, modelPart }) => {5��        &                  &                      �        (                 (                     �        (                 (                     �        (                 (                     �        (                 (                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       am �     �                   �             5��                          n                      �                         r                      �                        r                     �                        r                     �                        }                     �                        }                     �                        }                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       am �     �                          year: data.year,             grade: data.grade,5��                          j      8               5�_�      	              
   	    ����                                                                                                                                                                                                                                                                                                                                                V       am �     �   
            
          �   
          5��    
                      $                     �    
   
                  .                     �    
   
                 .                    �    
   
                 .                    �    
   
                 .                    �    
   
                 .                    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                V       am!8     �               %    batch.push(model.putBatch(data));5��                     
   �             
       �       #                 �                    �       #                 �                    �       )                 �                    5�_�   	              
      +    ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!Y     �               0    batch.push(model.putBatch({ ...data, id }));5��       +                �                    5�_�   
                    +    ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am![     �               +    batch.push(model.putBatch({ ...data, id5��       +                  �                     5�_�                       +    ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!^     �               ,    batch.push(model.putBatch({ ...data, idm5��       +                  �                     5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!`     �             5��                          �                     �                         �                    �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!a     �             �             5��                          �              F       5�_�                       .    ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!c     �               .    batch.push(model.putBatch({ ...data, id, m5��       ,                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               !          "       V   *    am!e     �                 5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!m     �             �             5��                                        F       5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!o     �               "          schoolId: data.schoolId,5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!p     �               "          branchId: data.branchId,5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!     �                          school: data.schoolId,5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!�     �                          branch: data.branchId,5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am!�    �                   const id = randomString(8)       const batch = [];       $    parts.forEach((unit, index) => {         batch.push(           modelPart.putBatch({             ...unit,             id: index + 1,             gospelId: id,   "          schoolId: data.schoolId,   "          branchId: data.branchId,   
        })         );       });   ,    batch.push(model.putBatch({ ...data, id,             school: data.school,             branch: data.branch,   "          schoolId: data.schoolId,   "          branchId: data.branchId,       }));    5��                         n       �            5�_�                           ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am"     �         "          return { id: data.grade };5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               !          !       V   !    am"    �          "          return { id};     };5��                         �                    5��
Vim�UnDo� ��V3 ���3_�_�+WJ�-�JO�\E�ۯ�      ;    const parts = await modelSec.query(`GSP#${gospelId}`, {                             am6    _�                             ����                                                                                                                                                                                                                                                                                                                                                             am/�     �                   �               5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             am/�     �                  5��                                                  5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             am/�     �                /const makeDBDelete = ({ model, modelSec }) => {5��        $                 $                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             am/�     �               >    const sections = await modelSec.query(`LSN#${lessonId}`, {5��       
                 �                     �                         �                      �                         �                      �       
                 �                     �                         �                      �                         �                      �                         �                      �       
                 �                     �                         �                      �                         �                      �                         �                      �                         �                      �       
                 �                     5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             am/�     �               ;    const parts = await modelSec.query(`LSN#${lessonId}`, {5��       (                 �                     �       (                 �                     �       (                 �                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             am/�     �               5    const lessonId = `${schoolId}#${branchId}#${id}`;5��       
                 �                     �                         �                      �       
                 �                     �                         �                      �                         �                      �       
                 �                     �                         �                      �                         �                      �                         �                      �       
                 �                     �                         �                      �                         �                      �                         �                      �                         �                      �       
                 �                     �                         �                      �                         �                      �                         �                      �                         �                      �                         �                      �       
                 �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             am/�     �               ;    const parts = await modelSec.query(`GSP#${lessonId}`, {5��       .                 �                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                v       am/�     �                     beginsWith: "SEC#",5��                                            �                                            �                                            5�_�      
           	   
       ����                                                                                                                                                                                                                                                                                                                            
          
          v       am/�     �   	            -    const { Items: sectionItems } = sections;5��    	                    D                    �    	                    D                    �    	                    D                    �    	                    D                    5�_�   	              
   
   !    ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0      �   	            *    const { Items: partItems } = sections;5��    	   !                 R                    �    	   !                 R                    �    	   !                 R                    �    	   !                 R                    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0     �               "    if (sectionItems.length > 0) {5��                        b                    �                        b                    �                     	   b             	       5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0     �                          modelSec.deleteBatch({5��                        �                    �       
                 �                    �       
              	   �             	       �       
       	       	   �      	       	       5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0     �               )      sectionItems.forEach((section) => {5��                        �                    �                        �                    �                     	   �             	       5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0     �               &      partItems.forEach((section) => {5��                        �                    �                        �                    �                        �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0#     �                           lessonId: id,5��                        �                    �                        �                    �                        �                    �                        �                    �                        �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                            
          
          v       am0(    �                           id: section.id,5��                        �                    �                        �                    �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                            
          
          v       am6    �               ;    const parts = await modelSec.query(`GSP#${gospelId}`, {5��                        �                     �                        �                     �                     	   �              	       �              	       	   �       	       	       5��
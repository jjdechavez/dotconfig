Vim�UnDo� �]�?7�W�!���xP�*��
.������      Rif not lspconfig.tailwindls then configs['tailwindls'] = {default_config = {}} end            4       4   4   4    `���   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�ϲ     �                   �               5��                                         n       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�ϴ     �               require'lspconfig'.html.setup {5��                                             �                                               �                                               �                                               �                                             �                                               �                                               �                                               �                                               �                                             �                                               �                                               �                                               �                                               �                                               �                                             �                                               �                                               �                                               �                                               �                                               �                                               �                                             �                                               �                                               �                                               �                                               �                                               �                                               �                                             �                          !                      �                                                �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                       �             �               ,  on_attach = require'lsp'.common_on_attach,�                  capabilities = capabilities,5��                          U                      �              *           *       *               �                         (                     �                         (                     �                        ,                     �                        ,                     �                        3                      �                          4                      �                         4                     �       	                 =                     �       	                 =                     �       	                 =                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                       "node"5��                         B                      �                        D                     �                        D                     �                        D                     �                        S                     �                        S                     �                        S                     �                     	   S              	       �              	       	   S       	       	       �              	          S       	              �       *                 ^                     �       *                 ^                     �       ,                 `                     �       *                 ^                     �       *                 ^                     �       *                 ^                     �       *                 ^                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                 V       `�а     �                    cmd = {   6        "node", DATA_PATH .. "/lspinstall/tailwindcss"       }5��                          (       I               5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 V       `���    �                   �             5��                          (                      �                          (                      �                        ,                     �                        ,                     �                        ,                     �                        5                     �                        8                     �                        8                     �                        8                     �                        8                     �                        8                     �                        8                     �                     	   8              	       �                        @                     �                        @                     �                        @                     �                        @                     �                        @                     �                        @                     �                        E                     �                        E                     �                        E                     �                        E                     �                        G                     �                        E                     �                        E                     �                        E                     5�_�      	                 "    ����                                                                                                                                                                                                                                                                                                                               
                 V       `��     �             5��                          (                      �                          (                      �                          (                      5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                               
                 V       `��     �                �             5��                       e   (               e       5�_�   	              
      e    ����                                                                                                                                                                                                                                                                                                                               
                 V       `��     �               efiletypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}5��       e                  �                      5�_�   
                    e    ����                                                                                                                                                                                                                                                                                                                               
                 V       `��    �               ffiletypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},5��                          (                      5�_�                       $    ����                                                                                                                                                                                                                                                                                                                               
                 V       `��r     �             5��                          �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                 V       `��t     �                �             5��                         �               =      5�_�                           ����                                                                                                                                                                                                                                                                                                                               
                 V       `��w     �                 }5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `��|     �               settings = {       tailwindCSS = {         experimental = {           classRegex = {   "          "tw`([^`]*)", -- tw`...`   .          "tw=\"([^\"]*)", -- <div tw="..." />   2          "tw={\"([^\"}]*)", -- <div tw={"..."} />   -          "tw\\.\\w+`([^`]*)", -- tw.xxx`...`             "tw\\(.*?\\)`([^`]*)"   	        }         }       }     },5��                          �                      �                         �                     �                      
   �              
       �                         �                     �               
          �       
              �               
                
              �    	           
          L      
              �    
           
          �      
              �               
          �      
              �                         �                    �                      
   �             
       �                         �                    �                         �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�с     �                     },5��                         �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�ф    �                 },5��                         �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                    settings = {           tailwindCSS = {             experimental = {               classRegex = {   &              "tw`([^`]*)", -- tw`...`   2              "tw=\"([^\"]*)", -- <div tw="..." />   6              "tw={\"([^\"}]*)", -- <div tw={"..."} />   1              "tw\\.\\w+`([^`]*)", -- tw.xxx`...`   #              "tw\\(.*?\\)`([^`]*)"               }             }   	        }         },5��                          �       s              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `���     �             5��                          (                      �                          (                      �                          (                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `��      �             �             5��                          )               s      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `��    �                 5��                          (                      5�_�                       j    ����                                                                                                                                                                                                                                                                                                                                                V       `�Լ     �               j    filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},5��       j                                      �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `�Խ     �             �             5��                                        o       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�Կ     �               n  root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),5��                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `���     �               r      root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),5��                                              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                5��                                               �                                             �                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                 5��                                               5�_�                       n    ����                                                                                                                                                                                                                                                                                                                                                V       `���    �               p    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),5��       n                  t                     �       q                 w                    �       q                 w                    �       q                 w                    �       q                 w                    �       q                 w                    �       q                 w                    �       q                 w                    �       z                 �                    �       z                 �                    �       z                 �                    �       z                 �                    �       z                 �                    �       �                 �                    �       �                 �                    5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                V       `���     �             5��                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `���     �             �             5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                V       `���     �                �             5��                         �              &      5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                V       `��     �               handlers = {5��                          �                     5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                V       `��    �                 5��                          �                     5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                V       `��2    �                    settings = {           tailwindCSS = {             experimental = {               classRegex = {   &              "tw`([^`]*)", -- tw`...`   2              "tw=\"([^\"]*)", -- <div tw="..." />   6              "tw={\"([^\"}]*)", -- <div tw={"..."} />   1              "tw\\.\\w+`([^`]*)", -- tw.xxx`...`   #              "tw\\(.*?\\)`([^`]*)"               }             }   	        }         },5��                          (       s              5�_�   "   $           #   
       ����                                                                                                                                                                                                                                                                                                                                                             `��      �   
          5��    
                      E                     �    
                      E                     5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             `��!     �   
             �             5��    
                      E                     5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             `��#     �   
             �             5��    
                    F              =      5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             `��%     �                 }5��                         �                     5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                V       `��1     �   
             settings = {       tailwindCSS = {         experimental = {           classRegex = {   "          "tw`([^`]*)", -- tw`...`   .          "tw=\"([^\"]*)", -- <div tw="..." />   2          "tw={\"([^\"}]*)", -- <div tw={"..."} />   -          "tw\\.\\w+`([^`]*)", -- tw.xxx`...`             "tw\\(.*?\\)`([^`]*)"   	        }         }       }     },5��    
                     E                    �                         W                    �                      
   o             
       �                         �                    �               
          �      
              �               
          �      
              �               
          �      
              �               
          6      
              �               
          h      
              �                         �                    �                      
   �             
       �                         �                    �                         �                    5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                V       `��4     �   
                 settings = {5��    
                     I                     5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                V       `��6     �                       tailwindCSS = {5��                        Z                    5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                V       `��=     �                     },5��                         �                    5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                V       `��?     �                 },5��                         �                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                V       `��D    �               	        }5��                        �                    �                        �                    5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �                 �             5��                                                  5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �                 �             5��                      R                  �       5�_�   .   0           /      Q    ����                                                                                                                                                                                                                                                                                                                                                V       `��     �             5��                          �                      5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                V       `��     �                  5��                                                  5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                 v       `��%     �               &require'lspconfig'.tailwindcss.setup {5��                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                      	   �              	       5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                V       `��9     �                    settings = {           tailwindCSS = {             experimental = {               classRegex = {   &              "tw`([^`]*)", -- tw`...`   2              "tw=\"([^\"]*)", -- <div tw="..." />   6              "tw={\"([^\"}]*)", -- <div tw={"..."} />   1              "tw\\.\\w+`([^`]*)", -- tw.xxx`...`   #              "tw\\(.*?\\)`([^`]*)"               }             }   	        }       },5��                                q              5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                V       `��;   	 �             �             5��                          �               q      5�_�   3               4          ����                                                                                                                                                                                                                                                                                                                                                v       `���   
 �               Rif not lspconfig.tailwindls then configs['tailwindls'] = {default_config = {}} end5��                        �                     �              
          �       
              �                        �                     5�_�              	              ����                                                                                                                                                                                                                                                                                                                               
                 V       `��     �             �                   cmd = {   6        "node", DATA_PATH .. "/lspinstall/tailwindcss"       }5��                          )               I       5��
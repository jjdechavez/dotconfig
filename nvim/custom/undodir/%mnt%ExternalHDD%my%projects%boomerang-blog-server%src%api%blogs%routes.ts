Vim�UnDo� џpSOK�[\�/�H�)��-�=?*���5%��C   �       path: '/todos/{id}',                              `�h.    _�                            ����                                                                                                                                                                                                                                                                                                                                         
       v   
    `�[�     �         �      /import TodoController from './todo-controller';5��                        =                     �                        =                     �                        =                     �                        =                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�[�     �         �      ?  const todoController = new TodoController(configs, database);5��                        �                    �                        �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�[�     �         �        server.bind(todoController);5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        `�[�     �         �      ?  const blogController = new TodoController(configs, database);5��                        �                    �                         �                     �                         �                     �                        �                    �                          �                     �                         �                     �                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                         !       v   !    `�\     �         �      /import BlogController from './todo-controller';5��                        T                     �                        T                     �                        T                     5�_�                       "    ����                                                                                                                                                                                                                                                                                                                               "          %       v   %    `�\	     �         �      2import * as TodoValidator from './todo-validator';5��       "                 �                     �       "                 �                     �       "                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       `�\    �         �      2import * as TodoValidator from './blog-validator';5��                        r                     �                        r                     �                        r                     �                        r                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                v       `�fO     �   �   �          +      handler: todoController.getUserTodos,�   m   o          )      handler: todoController.deleteTodo,�   U   W          )      handler: todoController.updateTodo,�   A   C          )      handler: todoController.createTodo,�   *   ,          '      handler: todoController.getTodos,�         �      *      handler: todoController.getTodoById,5��                        R                    �    *                                        �    A                                        �    U                    �                    �    m                    �	                    �    �                    �                    5�_�      
           	   J        ����                                                                                                                                                                                                                                                                                                                                                v       `�fz    �   `   b          /        payload: TodoValidator.updateTodoModel,�   I   K   �      /        payload: TodoValidator.createTodoModel,5��    I                    �                    �    `                    �                    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                v       `�f�    �   �   �          +      handler: blogController.getUserTodos,�   m   o          )      handler: blogController.deleteTodo,�   `   b          /        payload: BlogValidator.updateTodoModel,�   U   W          )      handler: blogController.updateTodo,�   I   K          /        payload: BlogValidator.createTodoModel,�   A   C          )      handler: blogController.createTodo,�   *   ,          '      handler: blogController.getTodos,�         �      *      handler: blogController.getTodoById,5��       !                 d                    �    *   !                 +                    �    A   $                                     �    I   %                 �                    �    U   $                 �                    �    `   %                 �                    �    m   $                 �	                    �    �   %                 �                    5�_�   
                          ����                                                                                                                                                                                                                                                                                                                                                v       `�h-    �   �   �          %      description: 'Get user todos.',�   �   �                tags: ['api', 'todo'],�   �   �              path: '/todos/user',�   p   r          (      description: 'Delete todo by id.',�   o   q                tags: ['api', 'todo'],�   k   m              path: '/todos/{id}',�   X   Z          (      description: 'Update todo by id.',�   W   Y                tags: ['api', 'todos'],�   S   U              path: '/todos/{id}',�   D   F          $      description: 'Create a todo.',�   C   E                tags: ['api', 'todo'],�   ?   A              path: '/todos',�   -   /                 description: 'Get todos.',�   ,   .                tags: ['api', 'todo'],�   (   *              path: '/todos',�                %      description: 'Get todo by id.',�                      tags: ['api', 'todo'],�         �          path: '/todos/{id}',5��                        '                    �                        �                    �                        �                    �    (                    �                    �    ,                    Z                    �    -                    z                    �    ?                    �                    �    C                    H                    �    D                    m                    �    S                    �                    �    W                    �                    �    X                                        �    k                    �	                    �    o                    
                    �    p                    6
                    �    �                    s                    �    �                    �                    �    �                                        5��
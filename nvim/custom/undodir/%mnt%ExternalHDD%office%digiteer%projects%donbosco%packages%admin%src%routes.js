Vim�UnDo� ���D$Q���^0��8��c�kҭ��v�no\+   {                 
       
   
   
    a�    _�                     p        ����                                                                                                                                                                                                                                                                                                                            %          *          V       a�x     �   p   w   s    �   p   q   s    5��    p                                    z       5�_�                    s       ����                                                                                                                                                                                                                                                                                                                            %          *          V       a��     �   r   t   y          name: "Content",5��    r                    =                    �    r                     >                     �    r                    =                    �    r                     @                     �    r                     ?                     �    r                     >                     �    r                    =                    �    r                     >                     �    r                    =                    5�_�                    r       ����                                                                                                                                                                                                                                                                                                                            %          *          V       a��    �   q   s   y          path: "/content",5��    q                    (                    �    q                     )                     �    q                    (                    �    q                     )                     �    q                    (                    �    q                     )                     �    q                    (                    �    q                     )                     �    q                    (                    �    q                     )                     �    q                    (                    �    q                     )                     �    q                    (                    5�_�                       "    ����                                                                                                                                                                                                                                                                                                                            %          *          V       a�c     �         y    �         y    5��                          <              =       5�_�                           ����                                                                                                                                                                                                                                                                                                                            &          +          V       a�d     �         z      <const Content = React.lazy(() => import("./pages/Content"));5��                        B                    �                        B                    �                        B                    �                        B                    �                        B                    �                         D                     �                         C                     �                        B                    5�_�                       1    ����                                                                                                                                                                                                                                                                                                                            &          +          V       a�l    �         z      <const Lessons = React.lazy(() => import("./pages/Content"));5��       1                 m                    �       2                  n                     �       1                 m                    �       2                  n                     �       1                 m                    �       2                  n                     �       1                 m                    �       2                  n                     �       1                 m                    �       2                  n                     �       1                 m                    5�_�                    u       ����                                                                                                                                                                                                                                                                                                                            &          +          V       a��     �   u   w   {          �   u   w   z    5��    u                      �                     �    u                     �                     �    u                    �                    �    u                    �                    �    u                    �                    �    u                    �                    �    u                    �                    �    u                 	   �             	       �    u          	          �      	              �    u                    �                    5�_�      	              v       ����                                                                                                                                                                                                                                                                                                                            &          +          V       a��     �   u   w   {          component:,kjkkj5��    u                     �                     5�_�      
           	   v       ����                                                                                                                                                                                                                                                                                                                            &          +          V       a��    �   u   w   {          component:,5��    u                     �                     �    u                     �                     �    u                     �                     �    u                    �                    �    u                     �                     �    u                     �                     �    u                     �                     �    u                    �                    �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                    �                    �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                    �                    �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                     �                     �    u                    �                    5�_�   	               
           ����                                                                                                                                                                                                                                                                                                                            &          +          V       a�     �               {   import React from "react";   $import { GROUP } from "./constants";       @const Dashboard = React.lazy(() => import("./pages/Dashboard"));   <const NotFound = React.lazy(() => import("pages/NotFound"));   ?const Reset = React.lazy(() => import("./pages/system/Reset"));   Cconst UsersList = React.lazy(() => import("./pages/system/Users"));   Hconst UsersForm = React.lazy(() => import("./pages/system/Users/Form"));   Fconst UsersAdd = React.lazy(() => import("./pages/system/Users/Add"));   Aconst Models = React.lazy(() => import("./pages/system/Models"));   Gconst ApiAccess = React.lazy(() => import("./pages/system/ApiAccess"));   Pconst ApiAccessForm = React.lazy(() => import("./pages/system/ApiAccess/Form"));   <const Content = React.lazy(() => import("./pages/Content"));   Pconst ContentForm = React.lazy(() => import("./pages/Content/Collection/Form"));   <const Lessons = React.lazy(() => import("./pages/Lessons"));       const routes = [     {       path: "/",       name: "Home",       exact: true,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {       path: "/dashboard",       name: "Dashboard",       exact: true,       component: Dashboard,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {       path: "/not-found",       name: "Not Found",       exact: true,       component: NotFound,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {       path: "/content",       name: "Content",       exact: true,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {   '    path: "/content/:id/:action/:cid?",       component: ContentForm,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {       path: "/content/:id",       component: Content,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },     {       path: "/system",       name: "System",       exact: true,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {       path: "/system/reset",       name: "Reset",       exact: true,       component: Reset,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {       path: "/system/users",       name: "Users",       exact: true,       component: UsersList,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {       path: "/system/users/add",       name: "Add",       exact: true,       component: UsersAdd,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {   #    path: "/system/users/edit/:id",       name: "Edit",       exact: true,       component: UsersForm,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {        path: "/system/models/:id?",       name: "Models",       component: Models,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {   #    path: "/system/api_access/add",       name: "Add",       component: ApiAccessForm,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {   (    path: "/system/api_access/edit/:id",       name: "Edit",       exact: true,       component: ApiAccessForm,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {       path: "/system/api_access",       name: "API Access",       exact: true,       component: ApiAccess,   &    groups: [GROUP.ADMIN, GROUP.TEER],     },     {       path: "/lessons",       name: "Lessons",       exact: true,       component: Lessons,   4    groups: [GROUP.ADMIN, GROUP.TEER, GROUP.EDITOR],     },   ];       export default routes;5�5��
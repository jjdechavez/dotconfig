Vim�UnDo� ҅��xHن2'J��@�
UL���{��oU�]   J   :      params.require(:project_role).permit(:name, :status)   B   3      2       2   2   2    `�j�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�]�     �                   �               5��                   J                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�]�     �                  5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�]�     �         J      2  class ProjectMembersController < AdminController5��                                             �              	       
          	       
       �              
                 
              �                                             �                                             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^     �         J      D    before_action :set_project_member, only: %i[edit update destroy]5��                        ]                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�^    �         J      5      @project_members = ProjectMember.for_datatables5��                         �                     �              	       
   �       	       
       �              
          �       
              �                        �                     5�_�      	              
       ����                                                                                                                                                                                                                                                                                                                                                             `�^     �   	      J      )      @project_member = ProjectMember.new5��    	                    �                     �    	          	       
   �       	       
       �    	          
          �       
              �    	                    �                     5�_�      
          	   B       ����                                                                                                                                                                                                                                                                                                                                                             `�^?     �   A   C   J          def project_member_params5��    A                    �                    �    A          
          �      
              �    A                    �                    �    A                    �                    5�_�   	              
   C       ����                                                                                                                                                                                                                                                                                                                                                             `�^G     �   B   D   J      C      params.require(:project_member).permit(:name, :role, :status)5��    B                                        �    B                                        �    B                                        5�_�   
                 C   2    ����                                                                                                                                                                                                                                                                                                                                                             `�^J     �   B   D   J      A      params.require(:project_role).permit(:name, :role, :status)5��    B   2                  1                     5�_�                    C   2    ����                                                                                                                                                                                                                                                                                                                                                             `�^J     �   B   D   J      @      params.require(:project_role).permit(:name, role, :status)5��    B   2                  1                     5�_�                    C   2    ����                                                                                                                                                                                                                                                                                                                                                             `�^K     �   B   D   J      <      params.require(:project_role).permit(:name, , :status)5��    B   2                  1                     5�_�                    C   2    ����                                                                                                                                                                                                                                                                                                                                                             `�^K     �   B   D   J      ;      params.require(:project_role).permit(:name,  :status)5��    B   2                  1                     5�_�                    F       ����                                                                                                                                                                                                                                                                                                                                                             `�^N     �   E   G   J          def set_project_member5��    E                    W                    �    E                    K                    �    E                    K                    5�_�                    G       ����                                                                                                                                                                                                                                                                                                                                                             `�^R     �   F   H   J      7      @project_member = ProjectMember.find(params[:id])5��    F                    k                    5�_�                    G       ����                                                                                                                                                                                                                                                                                                                                                             `�^V    �   F   H   J      5      @project_role = ProjectMember.find(params[:id])5��    F                    y                    �    F          	       
   r      	       
       �    F          
          r      
              �    F                    r                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^a     �         J      "      ProjectMember.transaction do5��                        &                    �              	       
         	       
       �              
                
              �                                            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^d     �         J      3      @project_members = ProjectRole.for_datatables5��                        �                     �                        �                     �                        �                     �                        �                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             `�^h     �   	      J      '      @project_member = ProjectRole.new5��    	                    �                     �    	                    �                     �    	                    �                     �    	                    �                     �    	                     �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^m     �         J      B        @project_member = ProjectMember.new(project_member_params)5��                        G                    �                        >                    �                        >                    5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             `�^r     �         J      @        @project_role = ProjectMember.new(project_member_params)5��       2                 h                    �       *       
          `      
              �       *                 `                    �       *                 `                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^w     �         J      >        @project_role = ProjectMember.new(project_role_params)5��                        U                    �              	       
   N      	       
       �              
          N      
              �                        N                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^z     �         J              if @project_member.save5��                        �                    �                                            �                                            �                                            5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �         J      D          log_to_audittrail("add", "PROJECTMEMBER", @project_member)5��       +                 �                    �       $       	       
   �      	       
       �       $       
          �      
              �       $                 �                    5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �         J      B          log_to_audittrail("add", "PROJECTROLE", @project_member)5��       ;                 �                    �       2                 �                    �       2                 �                    �       2                 �                    5�_�                       _    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �         J      �          redirect_to admin_project_members_path, notice: "Project member <strong>" + @project_member.name + "</strong> has been successfully added."5��       _                 3                    �       V                 *                    �       V                 *                    �       V                 *                    5�_�                       C    ����                                                                                                                                                                                                                                                                                                                                                             `�^�    �         J      �          redirect_to admin_project_members_path, notice: "Project member <strong>" + @project_role.name + "</strong> has been successfully added."5��       C                                     �       C                                     �       C                                     �       C                                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �         J      �          redirect_to admin_project_members_path, notice: "Project role <strong>" + @project_role.name + "</strong> has been successfully added."5��       $                 �                    �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �          J      "      ProjectMember.transaction do5��                        �                    �              	       
   �      	       
       �              
          �      
              �                        �                    5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �      !   J      8        if @project_member.update(project_member_params)5��                                             �                        �                    �                        �                    �                        �                    5�_�      !                   (    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �      !   J      6        if @project_role.update(project_member_params)5��       (                                     �               
                
              �                                             �                                             5�_�       "           !   !   >    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �       "   J      E          log_to_audittrail("edit", "PROJECTMEMBER", @project_member)5��        >                 _                    �        5                 V                    �        5                 V                    �        5                 V                    5�_�   !   #           "   !   ,    ����                                                                                                                                                                                                                                                                                                                                                             `�^�     �       "   J      C          log_to_audittrail("edit", "PROJECTMEMBER", @project_role)5��        ,                 M                    �        %       	       
   F      	       
       �        %       
          F      
              �        %                 F                    5�_�   "   $           #   #   $    ����                                                                                                                                                                                                                                                                                                                                                             `�_      �   "   $   J      �          redirect_to admin_project_members_path, notice: "Project member <strong>" + @project_member.name + "</strong> has been successfully updated."5��    "   $                 �                    �    "                    z                    �    "                    z                    �    "                    z                    �    "                    z                    5�_�   #   %           $   #   A    ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   "   $   J      �          redirect_to admin_project_roles_path, notice: "Project member <strong>" + @project_member.name + "</strong> has been successfully updated."5��    "   A                 �                    �    "   A                 �                    �    "   A                 �                    �    "   A                 �                    5�_�   $   &           %   #   [    ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   "   $   J      �          redirect_to admin_project_roles_path, notice: "Project role <strong>" + @project_member.name + "</strong> has been successfully updated."5��    "   [                 �                    �    "   R                 �                    �    "   R                 �                    �    "   R                 �                    5�_�   %   '           &   +       ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   *   ,   J      "      ProjectMember.transaction do5��    *                    V                    �    *          	       
   O      	       
       �    *          
          O      
              �    *                    O                    5�_�   &   (           '   ,       ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   +   -   J              @project_member.destroy5��    +                    {                    �    +                    r                    �    +                    r                    �    +                    r                    5�_�   '   )           (   .   "    ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   -   /   J      v        flash[:notice] = "Project member <strong>" + @project_member.name + "</strong> has been successfully removed."5��    -   "                 �                    �    -   "                 �                    �    -   "                 �                    �    -   "                 �                    5�_�   (   *           )   .   <    ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   -   /   J      t        flash[:notice] = "Project role <strong>" + @project_member.name + "</strong> has been successfully removed."5��    -   <                 �                    �    -   3                 �                    �    -   3                 �                    �    -   3                 �                    5�_�   )   +           *   /   ?    ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   .   0   J      F        log_to_audittrail("delete", "PROJECTVERSION", @project_member)5��    .   ?                 ;                    �    .   6                 2                    �    .   6                 2                    �    .   6                 2                    5�_�   *   ,           +   1        ����                                                                                                                                                                                                                                                                                                                                                             `�_     �   0   2   J      C        flash.discard if ProjectMember.for_datatables.count(1) == 05��    0                     b                    �    0                     \                     �    0                 
   [             
       �    0   "                  d                     �    0   !                  c                     �    0                      b                     �    0                     a                     �    0                     `                     �    0                     _                     �    0                     ^                     �    0                     ]                     �    0                     \                     �    0                    [                    �    0   #                  e                     �    0   "                  d                     �    0   !                  c                     �    0                      b                     �    0                     a                     �    0                     `                     �    0                     _                     �    0                     ^                     �    0                     ]                     �    0                     \                     �    0                    [                    5�_�   +   -           ,   3   "    ����                                                                                                                                                                                                                                                                                                                                                             `�_#     �   2   4   J      .        redirect_to admin_project_members_path5��    2   "                 �                    �    2                    �                    �    2                    �                    �    2                    �                    �    2                    �                    5�_�   ,   .           -   8       ����                                                                                                                                                                                                                                                                                                                                                             `�_-     �   7   9   J      F      @project_members = build_datatable(ProjectMember.for_datatables)5��    7                    �                    �    7                    �                    �    7                    �                    �    7                    �                    5�_�   -   /           .   8   .    ����                                                                                                                                                                                                                                                                                                                                                             `�_1     �   7   9   J      D      @project_roles = build_datatable(ProjectMember.for_datatables)5��    7   .                                     �    7   '       	       
         	       
       �    7   '       
                
              �    7   '                                     5�_�   .   0           /   ;       ����                                                                                                                                                                                                                                                                                                                                                             `�_5     �   :   ;                  puts @project_members5��    :                      B                     5�_�   /   1           0   ;       ����                                                                                                                                                                                                                                                                                                                                                             `�_9    �   :   <   I      (        format.json { @project_members }5��    :                    a                    �    :                    X                    �    :                    X                    �    :                    X                    �    :                    X                    5�_�   0   2           1   B   3    ����                                                                                                                                                                                                                                                                                                                                                             `�c�    �   A   C   I      :      params.require(:project_role).permit(:name, :status)5��    A   3                 �                    �    A   2                 �                    �    A   2                 �                    �    A   2                 �                    �    A   2                 �                    5�_�   1               2          ����                                                                                                                                                                                                                                                                                                                                                             `�j�    �         I    �         I    5��                          �               :       5�_�             	      B       ����                                                                                                                                                                                                                                                                                                                                                             `�^$     �   A   C   J          def project_role_params5��    A                    �                    �    A                    �                    �    A                    �                    5�_�                     C   5    ����                                                                                                                                                                                                                                                                                                                                                             `�^1     �   B   D   J      B      params.require(:project_member).permit(:name, :pro, :status)5��    B   5                 4                    �    B   4                 3                    �    B   4                 3                    �    B   4                 3                    �    B   4                 3                    �    B   4              	   3             	       �    B   4       	       
   3      	       
       �    B   4       
          3      
              �    B   4                 3                    �    B   4                 3                    �    B   4                 3                    �    B   4                 3                    �    B   8                  7                     5��
Vim�UnDo� �
]�c�� �t�|C�N����2V�H"Pt8=s   j                                   `c��     _�                            ����                                                                                                                                                                                                                                                                                                                                                             `c��     �   f            �   e   g          )(Transactions);�   d   f              matchDispatchToProps�   c   e              mapStateToProps,�   b   d          export default connect(�   a   c           �   `   b          }�   _   a              }�   ^   `          (        transactions: transactions || []�   ]   _          '        singleTransaction: transaction,�   \   ^          %        status: getTransactionStatus,�   [   ]              return {�   Z   \          R    const { getTransactionStatus, transactions, transaction } = state.transaction;�   Y   [          !function mapStateToProps(state) {�   X   Z           �   W   Y          }�   V   X              )�   U   W                  }, dispatch�   T   V          $            getCancelledTransactions�   S   U          %            getCompletedTransactions,�   R   T          "            getPendingTransaction,�   Q   S                      getTransaction,�   P   R          	        {�   O   Q              return bindActionCreators(�   N   P          )function matchDispatchToProps(dispatch) {�   M   O           �   L   N          };�   K   M              );�   J   L                  </Layout>�   I   K                      />�   H   J          /                transaction={singleTransaction}�   G   I          /                handleClose={handleCloseDialog}�   F   H                          open={open}�   E   G          ,                status={getStatus(tabValue)}�   D   F                      <TransactionDialog �   C   E                      }�   B   D                          />�   A   C          9                    handleGetTransaction={getTransaction}�   @   B          6                    toggleDialog={handleToggleDialog} �   ?   A          0                    transactions={transactions} �   >   @          #                : <TransactionList �   =   ?          -                ? <div className="loader" /> �   <   >                      {status.sending�   ;   =                      </Tabs>�   :   <          )                <Tab label="Cancelled" />�   9   ;          )                <Tab label="Completed" />�   8   :          &                <Tab label="To Pay" />�   7   9                      >�   6   8                          centered�   5   7          #                textColor="primary"�   4   6          (                indicatorColor="primary"�   3   5          '                onChange={handleChange}�   2   4                           value={tabValue}�   1   3                      <Tabs�   0   2                       <HorizontalSpacer />�   /   1          >            <Typography variant="h4">Transactions</Typography>�   .   0                  <Layout>�   -   /              return (�   ,   .           �   +   -              }�   *   ,                  setOpen(false);�   )   +          %    const handleCloseDialog = () => {�   (   *           �   '   )              }�   &   (                  setOpen(!open);�   %   '          &    const handleToggleDialog = () => {�   $   &           �   #   %              };�   "   $                  setTabValue(newValue);�   !   #          /    const handleChange = (event, newValue) => {�       "           �      !              }, [tabValue]);�                 6        if(tabValue === 2) getCancelledTransactions();�                6        if(tabValue === 1) getCompletedTransactions();�                4        if (tabValue === 0) getPendingTransaction();�                    useEffect(() => {�                 �                ,    const [open, setOpen] = useState(false);�                0    const [tabValue, setTabValue] = useState(0);�                }) => {�                    getCancelledTransactions�                    getCompletedTransactions,�                    getPendingTransaction,�                    singleTransaction,�                    getTransaction,�                    transactions,�                    status,�                const Transactions = ({�                 �                }�                    return status[index];�                8    const status = ["To Pay", "Completed", "Cancelled"];�   
             function getStatus(index) {�   	              �      
          )import TransactionDialog from "./dialog";�      	          �import { getTransaction, getPendingTransaction, getCompletedTransactions, getCancelledTransactions } from "../../action/transactionActions";�                0import TransactionList from "./transactionList";�                5import { HorizontalSpacer } from "../../components/";�                1import Layout from "../shared-components/layout";�                :import { Typography, Tabs, Tab } from "@material-ui/core";�                &import { connect } from "react-redux";�                +import { bindActionCreators } from "redux";�                 3import React, { useState, useEffect } from "react";5��                3       3           3       3       �               +       +   4       +       +       �               &       &   `       &       &       �               :       :   �       :       :       �               1       1   �       1       1       �               5       5   �       5       5       �               0       0   *      0       0       �               �          [      �              �               )          d      )              �    	                      v                     �    
                     �                    �               8          �      8              �                      )   �             )       �                      )   �             )       �                                                 �                                             �                      6   8             6       �                         o                    �                         �                    �                          �                     �                         �                    �                      	   �             	       �                         �                    �                         �                    �               0          �      0              �               ,          �      ,              �                          �                     �                                             �               4          4      4              �               6       .   <      6       .       �               6       *   k      6       *       �                          �                     �                           �                     �    !           /       0   �      /       0       �    "                  3   �             3       �    #                  3                3       �    $                      D                     �    %           &           V      &               �    &                  -   W             -       �    '                     �                    �    (                      �                     �    )           %           �      %               �    *                  $   �             $       �    +                     �                    �    ,                      �                     �    -                      �                     �    .                  #   �             #       �    /           >          	      >              �    0                                           �    1                      "                     �    2                   
   #              
       �    3           '          .      '              �    4           (       8   ;      (       8       �    5           #          t      #              �    6                     �                    �    7                     �                    �    8           &          �      &              �    9           )           �      )               �    :           )          �      )              �    ;                                         �    <                     "                    �    =           -          *      -              �    >           #       !   I      #       !       �    ?           0       !   k      0       !       �    @           6          �      6              �    A           9          �      9              �    B                  "   �             "       �    C                     �                    �    D                     �                    �    E           ,       %   �      ,       %       �    F                  +   #             +       �    G           /       /   O      /       /       �    H           /       
         /       
       �    I                     �                    �    J                     �                    �    K                  $   �             $       �    L                     �                    �    M                   '   �              '       �    N           )       '         )       '       �    O                     5                    �    P           	          >      	              �    Q                     L                    �    R           "          Q      "              �    S           %           T      %               �    T           $       )   U      $       )       �    U                                         �    V                     �                    �    W                     �                    �    X                      �                     �    Y           !          �      !              �    Z           R          �      R              �    [                     	                    �    \           %          	      %              �    ]           '          )	      '              �    ^           (          .	      (              �    _                      0	                     �    `                  !   1	             !       �    a                   P   S	              P       �    b                  
   �	             
       �    c                  !   �	             !       �    d                  #   �	             #       �    e                  %   �	             %       �    f                      
              U       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             `c��     �               j   3import React, { useState, useEffect } from "react";   +import { bindActionCreators } from "redux";   &import { connect } from "react-redux";   :import { Typography, Tabs, Tab } from "@material-ui/core";   1import Layout from "../shared-components/layout";   5import { HorizontalSpacer } from "../../components/";   0import TransactionList from "./transactionList";   import {     getTransaction,     getPendingTransaction,     getCompletedTransactions,     getCancelledTransactions,   )} from "../../action/transactionActions";   )import TransactionDialog from "./dialog";       function getStatus(index) {   6  const status = ["To Pay", "Completed", "Cancelled"];     return status[index];   }       const Transactions = ({   	  status,     transactions,     getTransaction,     singleTransaction,     getPendingTransaction,     getCompletedTransactions,     getCancelledTransactions,   }) => {   .  const [tabValue, setTabValue] = useState(0);   *  const [open, setOpen] = useState(false);         useEffect(() => {   0    if (tabValue === 0) getPendingTransaction();   3    if (tabValue === 1) getCompletedTransactions();   3    if (tabValue === 2) getCancelledTransactions();     }, [tabValue]);       -  const handleChange = (event, newValue) => {       setTabValue(newValue);     };       $  const handleToggleDialog = () => {       setOpen(!open);     };       #  const handleCloseDialog = () => {       setOpen(false);     };       
  return (       <Layout>   8      <Typography variant="h4">Transactions</Typography>         <HorizontalSpacer />         <Tabs           value={tabValue}           onChange={handleChange}            indicatorColor="primary"           textColor="primary"           centered         >           <Tab label="To Pay" />   !        <Tab label="Completed" />   !        <Tab label="Cancelled" />         </Tabs>         {status.sending ? (   "        <div className="loader" />         ) : (           <TransactionList   %          transactions={transactions}   +          toggleDialog={handleToggleDialog}   /          handleGetTransaction={getTransaction}   
        />         )}         <TransactionDialog   $        status={getStatus(tabValue)}           open={open}   '        handleClose={handleCloseDialog}   '        transaction={singleTransaction}         />       </Layout>     );   };       )function matchDispatchToProps(dispatch) {     return bindActionCreators(       {         getTransaction,         getPendingTransaction,         getCompletedTransactions,         getCancelledTransactions,       },       dispatch     );   }       !function mapStateToProps(state) {   P  const { getTransactionStatus, transactions, transaction } = state.transaction;   
  return {   !    status: getTransactionStatus,   #    singleTransaction: transaction,   %    transactions: transactions || [],     };   }       Lexport default connect(mapStateToProps, matchDispatchToProps)(Transactions);5�5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             `c��     �                 3import React, { useState, useEffect } from "react";�                +import { bindActionCreators } from "redux";�                &import { connect } from "react-redux";�                :import { Typography, Tabs, Tab } from "@material-ui/core";�                1import Layout from "../shared-components/layout";�                5import { HorizontalSpacer } from "../../components/";�                0import TransactionList from "./transactionList";�      	          import {�      
            getTransaction,�   	               getPendingTransaction,�   
               getCompletedTransactions,�                  getCancelledTransactions,�                )} from "../../action/transactionActions";�                )import TransactionDialog from "./dialog";�                 �                function getStatus(index) {�                6  const status = ["To Pay", "Completed", "Cancelled"];�                  return status[index];�                }�                 �                const Transactions = ({�                	  status,�                  transactions,�                  getTransaction,�                  singleTransaction,�                  getPendingTransaction,�                  getCompletedTransactions,�                  getCancelledTransactions,�                }) => {�                .  const [tabValue, setTabValue] = useState(0);�                 *  const [open, setOpen] = useState(false);�      !           �       "            useEffect(() => {�   !   #          0    if (tabValue === 0) getPendingTransaction();�   "   $          3    if (tabValue === 1) getCompletedTransactions();�   #   %          3    if (tabValue === 2) getCancelledTransactions();�   $   &            }, [tabValue]);�   %   '           �   &   (          -  const handleChange = (event, newValue) => {�   '   )              setTabValue(newValue);�   (   *            };�   )   +           �   *   ,          $  const handleToggleDialog = () => {�   +   -              setOpen(!open);�   ,   .            };�   -   /           �   .   0          #  const handleCloseDialog = () => {�   /   1              setOpen(false);�   0   2            };�   1   3           �   2   4          
  return (�   3   5              <Layout>�   4   6          8      <Typography variant="h4">Transactions</Typography>�   5   7                <HorizontalSpacer />�   6   8                <Tabs�   7   9                  value={tabValue}�   8   :                  onChange={handleChange}�   9   ;                   indicatorColor="primary"�   :   <                  textColor="primary"�   ;   =                  centered�   <   >                >�   =   ?                  <Tab label="To Pay" />�   >   @          !        <Tab label="Completed" />�   ?   A          !        <Tab label="Cancelled" />�   @   B                </Tabs>�   A   C                {status.sending ? (�   B   D          "        <div className="loader" />�   C   E                ) : (�   D   F                  <TransactionList�   E   G          %          transactions={transactions}�   F   H          +          toggleDialog={handleToggleDialog}�   G   I          /          handleGetTransaction={getTransaction}�   H   J          
        />�   I   K                )}�   J   L                <TransactionDialog�   K   M          $        status={getStatus(tabValue)}�   L   N                  open={open}�   M   O          '        handleClose={handleCloseDialog}�   N   P          '        transaction={singleTransaction}�   O   Q                />�   P   R              </Layout>�   Q   S            );�   R   T          };�   S   U           �   T   V          )function matchDispatchToProps(dispatch) {�   U   W            return bindActionCreators(�   V   X              {�   W   Y                getTransaction,�   X   Z                getPendingTransaction,�   Y   [                getCompletedTransactions,�   Z   \                getCancelledTransactions,�   [   ]              },�   \   ^              dispatch�   ]   _            );�   ^   `          }�   _   a           �   `   b          !function mapStateToProps(state) {�   a   c          P  const { getTransactionStatus, transactions, transaction } = state.transaction;�   b   d          
  return {�   c   e          !    status: getTransactionStatus,�   d   f          #    singleTransaction: transaction,�   e   g          %    transactions: transactions || [],�   f   g            };   }       Lexport default connect(mapStateToProps, matchDispatchToProps)(Transactions);5��                3       3           3       3       �               +       +   4       +       +       �               &       &   `       &       &       �               :       :   �       :       :       �               1       1   �       1       1       �               5       5   �       5       5       �               0       0   *      0       0       �               �          [      �              �               )          d      )              �    	                      v                     �    
                     �                    �               8          �      8              �                      )   �             )       �                      )   �             )       �                                                 �                                             �                      6   8             6       �                         o                    �                         �                    �                          �                     �                         �                    �                      	   �             	       �                         �                    �                         �                    �               0          �      0              �               ,          �      ,              �                          �                     �                                             �               4          4      4              �               6       .   <      6       .       �               6       *   k      6       *       �                          �                     �                           �                     �    !           /       0   �      /       0       �    "                  3   �             3       �    #                  3                3       �    $                      D                     �    %           &           V      &               �    &                  -   W             -       �    '                     �                    �    (                      �                     �    )           %           �      %               �    *                  $   �             $       �    +                     �                    �    ,                      �                     �    -                      �                     �    .                  #   �             #       �    /           >          	      >              �    0                                           �    1                      "                     �    2                   
   #              
       �    3           '          .      '              �    4           (       8   ;      (       8       �    5           #          t      #              �    6                     �                    �    7                     �                    �    8           &          �      &              �    9           )           �      )               �    :           )          �      )              �    ;                                         �    <                     "                    �    =           -          *      -              �    >           #       !   I      #       !       �    ?           0       !   k      0       !       �    @           6          �      6              �    A           9          �      9              �    B                  "   �             "       �    C                     �                    �    D                     �                    �    E           ,       %   �      ,       %       �    F                  +   #             +       �    G           /       /   O      /       /       �    H           /       
         /       
       �    I                     �                    �    J                     �                    �    K                  $   �             $       �    L                     �                    �    M                   '   �              '       �    N           )       '         )       '       �    O                     5                    �    P           	          >      	              �    Q                     L                    �    R           "          Q      "              �    S           %           T      %               �    T           $       )   U      $       )       �    U                                         �    V                     �                    �    W                     �                    �    X                      �                     �    Y           !          �      !              �    Z           R          �      R              �    [                     	                    �    \           %          	      %              �    ]           '          )	      '              �    ^           (          .	      (              �    _                      0	                     �    `                  !   1	             !       �    a                   P   S	              P       �    b                  
   �	             
       �    c                  !   �	             !       �    d                  #   �	             #       �    e                  %   �	             %       �    f                      
              U       5�_�                     
        ����                                                                                                                                                                                                                                                                                                                                                             `c��     �       k       j   3import React, { useState, useEffect } from "react";   +import { bindActionCreators } from "redux";   &import { connect } from "react-redux";   :import { Typography, Tabs, Tab } from "@material-ui/core";   1import Layout from "../shared-components/layout";   5import { HorizontalSpacer } from "../../components/";   0import TransactionList from "./transactionList";   import {     getTransaction,     getPendingTransaction,     getCompletedTransactions,     getCancelledTransactions,   )} from "../../action/transactionActions";   )import TransactionDialog from "./dialog";       function getStatus(index) {   6  const status = ["To Pay", "Completed", "Cancelled"];     return status[index];   }       const Transactions = ({   	  status,     transactions,     getTransaction,     singleTransaction,     getPendingTransaction,     getCompletedTransactions,     getCancelledTransactions,   }) => {   .  const [tabValue, setTabValue] = useState(0);   *  const [open, setOpen] = useState(false);         useEffect(() => {   0    if (tabValue === 0) getPendingTransaction();   3    if (tabValue === 1) getCompletedTransactions();   3    if (tabValue === 2) getCancelledTransactions();     }, [tabValue]);       -  const handleChange = (event, newValue) => {       setTabValue(newValue);     };       $  const handleToggleDialog = () => {       setOpen(!open);     };       #  const handleCloseDialog = () => {       setOpen(false);     };       
  return (       <Layout>   8      <Typography variant="h4">Transactions</Typography>         <HorizontalSpacer />         <Tabs           value={tabValue}           onChange={handleChange}            indicatorColor="primary"           textColor="primary"           centered         >           <Tab label="To Pay" />   !        <Tab label="Completed" />   !        <Tab label="Cancelled" />         </Tabs>         {status.sending ? (   "        <div className="loader" />         ) : (           <TransactionList   %          transactions={transactions}   +          toggleDialog={handleToggleDialog}   /          handleGetTransaction={getTransaction}   
        />         )}         <TransactionDialog   $        status={getStatus(tabValue)}           open={open}   '        handleClose={handleCloseDialog}   '        transaction={singleTransaction}         />       </Layout>     );   };       )function matchDispatchToProps(dispatch) {     return bindActionCreators(       {         getTransaction,         getPendingTransaction,         getCompletedTransactions,         getCancelledTransactions,       },       dispatch     );   }       !function mapStateToProps(state) {   P  const { getTransactionStatus, transactions, transaction } = state.transaction;   
  return {   !    status: getTransactionStatus,   #    singleTransaction: transaction,   %    transactions: transactions || [],     };   }       Lexport default connect(mapStateToProps, matchDispatchToProps)(Transactions);5�5��
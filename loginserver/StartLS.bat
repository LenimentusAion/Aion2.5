@echo off
title Aion Java Free Login Server Console
SET PATH="C:\Program Files\Java\jdk1.6.0_45\bin"
:start
echo     **     **                        ** ********                       
echo    ****   //                        /**/**/////                        
echo   **//**   **  ******  *******      /**/**       ******  *****   ***** 
echo  **  //** /** **////**//**///**     /**/******* //**//* **///** **///**
echo **********/**/**   /** /**  /**     /**/**////   /** / /*******/*******
echo/**//////**/**/**   /** /**  /** **  /**/**       /**   /**//// /**//// 
echo/**     /**/**//******  ***  /**//***** /**      /***   //******//******
echo//      // //  //////  ///   //  /////  //       ///     //////  ////// 
echo                                                        \/____/                  
echo.
echo Starting Aion Java Free Login Server.
echo.
REM -------------------------------------
REM Default parameters for a basic server.
java -Xms8m -Xmx32m -Xbootclasspath/p:./libs/jsr166.jar -cp ./libs/*;aj-login.jar loginserver.LoginServer
REM
REM -------------------------------------

SET CLASSPATH=%OLDCLASSPATH%


if ERRORLEVEL 1 goto error
goto end
:error
echo.
echo Login Server Terminated Abnormaly, Please Verify Your Files.
echo.
:end
echo.
echo Login Server Terminated.
echo.
pause

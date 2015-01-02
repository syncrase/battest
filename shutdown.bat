@echo off
rem ceci est un  commentaire
:: ceci est un  commentaire

:menu
	cls
	echo Que veux-tu que cette application fasse pour toi?
	echo 1 - Que je te demande si ça va.
	echo 2 - Que je te donne les puissannces de 2.
	echo 3 - Que je ping google.
	echo 4 - Que j'affiche les infos ip.
	echo 5 - Que j'affiche les infos system.
	echo 6 - Que je lance vlc.
	echo 7 - Que j'affiche les flux réseaux.
	echo 8 - Exit
	echo 9 - Que j'affiche les variables d'environnement.

	SET /P choix=Quel est ton choix ? (tape juste le chiffre qui va bien)

	if %choix%==1 goto cava 
	if %choix%==2 goto puissances 
	if %choix%==3 goto google 
	if %choix%==4 goto ipconfig 
	if %choix%==5 goto systeminfo
	if %choix%==6 goto vlc
	if %choix%==7 goto netstat
	if %choix%==8 goto exit
	if %choix%==9 goto variables

	
:cava
	cls
	SET /P rep=Salut, ca va ? (oui/non)
	REM Affiche "Salut, ca va ? (oui/non)" et stocke le résultat dans rep
	IF %rep%==oui (                                   
		REM Teste "rep" et si rep=oui,
		ECHO Ok tant mieux. 
		PAUSE 
		goto menu
		REM Affiche "Ok tant mieux.".
	) 
	IF %rep%==non (                                              
		REM (Fin de la clause IF.) Sinon,
		ECHO Ah merde, c'est con!                                   
		REM Affiche "Bon tant pis.".
		PAUSE 
		goto menu
	)
	ECHO C'est oui ou non mais rien d'autre.
	                                                
	REM Fin de la clause ELSE
	PAUSE 
	goto cava                                               
	REM Attends que l'utilisateur appuie sur une touche.

	
:puissances
	cls
	SET /A monInt="1+1"
	rem echo %monInt%
	rem SET /A monInt=monInt*monInt
	rem echo %monInt%
	rem pause

	:loop
		SET /A "monInt=monInt*2"
		echo %monInt%
		SET /P choix=Continuer ? (o/n)

	if %choix%==o goto loop 			
	:: %countfiles% GTR 21
	:: %nbr% LSS %chff%
	::pause 
	goto menu
	
	
:ipconfig
	cls
	rem ceci est un commentaire. Celui-ci n'est pa pris en compte dans l'exécution du programme
	echo ipconfig /all
	ipconfig  /all
	rem echo. ipconfig OK. Press any key to continue...
	pause 
	goto menu


:google
	cls
	echo ping www.google.com
	ping www.google.com
	echo ping OK. Press any key to continue...
	pause 
	goto menu


:netstat
	cls
	echo netstat
	echo netstat
	netstat
	echo netstat OK. Press any key to continue...
	pause 
	goto menu


:systeminfo
	cls
	echo systeminfo
	systeminfo
	echo systeminfo OK. Press any key to continue...
	pause 
	goto menu


:vlc
	cls
	echo execution de vlc ! start /"Program Files (x86)"/VideoLAN/VLC/vlc.exe
	start c:/"Program Files (x86)"/VideoLAN/VLC/vlc.exe
	echo start OK, if not, let you wait. Press any key to continue...
	pause 
	goto menu

	
:variables
	:: set est utilisé pour utiliser  les variables. Soit affichage simple soit assignation
	cls
	set
	echo variables OK. Press any key to continue...
	pause
	goto menu

	
:exit
	echo end of .bat execution. Press any key to exit...
	exit
	
	
	
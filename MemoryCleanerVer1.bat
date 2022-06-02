@echo off

goto check_Permission

:check_Permission
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto Username_script
    ) else (
        echo Please run as administrator for this script to work.
    pause
    exit
    )




:Username_script
::Script to find username and set it to the "%USERNAME%" variable
set SCRIPT="%TEMP%%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs" >null
Set wshShell = CreateObject( "WScript.Shell" ) %SCRIPT% >null

echo strName = wshShell.ExpandEnvironmentStrings( "%USERNAME%" ) %SCRIPT% >null
::End of script



::Welcoming
echo.
echo.
echo.
echo.
echo Welcome, %USERNAME%
echo.
echo.
echo.
echo This is YerBoiJake97's and Demonickatsu's Memory Cleaner, Fully open source.
echo.
echo.
echo.
echo.
::End of welcoming

::Asks if you want to end epic games launcher
:Epic_asker
set /p input1=Do you want to end Epic Games Launcher? [Y/N]
if /I "%input1%" EQU "Y" Goto :Kill_Epic_Games_Launcher
if /I "%input1%" EQU "N" Goto :Riot_asker
goto Epic_asker

::Asks if you want to end Riot Client
:Riot_asker
set /p input2=Do you want to end Riot Client? [Y/N]
if /I "%input2%" EQU "Y" Goto :Kill_Riot_client
if /I "%input2%" EQU "N" Goto :Discord_asker
goto riot_asker

::Asks if you want to end discord
:Discord_asker
set /p input3=Do you want to end Discord? [Y/N]
if /I "%input3%" EQU "Y" Goto :Kill_Discord
if /I "%input3%" EQU "N" Goto :Spotify_asker
goto Discord_asker

::Asks if you want to end spotify
:Spotify_asker
set /p input4=Do you want to end Spotify? [Y/N]
if /I "%input4%" EQU "Y" Goto :kill_spotify
if /I "%input4%" EQU "N" Goto :steam_asker
goto Spotify_asker

::Asks if you want to end steam
:Steam_asker
set /p input5=Do you want to end Steam? [Y/N]
if /I "%input5%" EQU "Y" Goto :Kill_steam
if /I "%input5%" EQU "N" Goto :start_program
goto steam_asker


:: ends epic games launcher
:Kill_Epic_Games_Launcher
taskkill /im epicwebhelper.exe /f >null
taskkill /im EpicGamesLauncher.exe /f >null
taskkill /im EpicOnlineServices.exe /f >null
taskkill /im EpicOnlineServicesInstallHelper.exe /f >null
taskkill /im EpicOnlineServicesUIHelper.exe /f >null
taskkill /im EpicOnlineServicesUserHelper.exe /f >null
goto riot_asker

:: ends riot client services and programs
:Kill_Riot_client
taskkill /im RiotClientCrashHandler.exe /f >null
taskkill /im RiotClientServices.exe /f >null
taskkill /im RiotClientUx.exe /f >null
goto Discord_asker


::ends discord services and programs
:Kill_Discord
taskkill /im discord.exe /f >null
taskkill /im discord.exe /f >null
taskkill /im discord.exe /f >null
taskkill /im discord.exe /f >null 
goto Spotify_asker

:: ends spotify service and programs
:kill_spotify
taskkill /im Spotify.exe /f >null
taskkill /im Spotify.exe /f >null
taskkill /im Spotify.exe /f >null
taskkill /im Spotify.exe /f >null
goto steam_asker

:: ends steam services and programs
:Kill_Steam
taskkill /im steamservice.exe /f >null
taskkill /im steamerrorreporter.exe /f >null
taskkill /im steamerrorreporter64.exe /f >null
taskkill /im steam.exe /f >null
taskkill /im streaming_client.exe /f >null
taskkill /im uninstall.exe /f >null
taskkill /im GameOverlayUI.exe /f >null
goto start_program


:Start_program
echo.
echo.
echo.
echo Ending all of the other tasks... ("CurseForge and Overwolf, settings, yourPhone, photos, cortana, onedrive, microsoft solitare, sound recorder, microsoft teams, msedge, opera gx, logitech ghub, java updater, chrome, movies & TV, start, microsoft content, runtime broker, windows search, widgets")
echo. 
echo.
echo.
:: ends CurseForge and Overwolf services and programs
taskkill /im OverwolfHelper64.exe /f >null
taskkill /im OverwolfHelper.exe /f >null
taskkill /im Overwolf.exe /f >null
taskkill /im OverwolfBrowser.exe /f >null
taskkill /im OverwolfBrowser.exe /f >null
taskkill /im curseforge.exe /f >null
taskkill /im OverwolfBrowser.exe /f >null
:: ends settings services and programs
taskkill /im Microsoft.Settings.exe /f >null
taskkill /im SystemSettings.exe /f >null
:: ends yourPhone services and programs
taskkill /im yourphone.exe /f >null
:: ends photos services and programs
taskkill /im Microsoft.Photos.exe /f >null
:: ends cortana services and programs
taskkill /im SearchApp.exe /f >null
taskkill /im WpcUapApp.exe /f >null
:: ends onedrive services and programs
taskkill /im stub.exe /f >null
taskkill /im OneDrive.exe /f >null
:: ends microsoft solitare services and programs
taskkill /im Solitaire.exe /f >null
::ends sound recorder services and programs
taskkill /im SoundRec.exe /f >null
:: ends microsoft teams services and programs
taskkill /im msteams.exe /f >null
taskkill /im msteamsupdate.exe /f >null
:: ends msedge services and programs
taskkill /im msedge.exe /f >null
taskkill /im MicrosoftEdgeUpdate.exe /f >null
taskkill /im MicrosoftEdgeUpdate.exe /f >null
taskkill /im MicrosoftEdgeUpdate.exe /f >null
taskkill /im MicrosoftEdgeUpdate.exe /f >null
taskkill /im MicrosoftEdge_X64_98.0.1108.56_98.0.1108.55.exe /f >null
taskkill /im MicrosoftEdge_X64_98.0.1108.56_98.0.1108.55.exe /f >null
taskkill /im MicrosoftEdge_X64_98.0.1108.56_98.0.1108.55.exe /f >null
taskkill /im MicrosoftEdge_X64_98.0.1108.56_98.0.1108.55.exe /f >null
taskkill /im MicrosoftEdge.exe /f >null
:: ends opera gx services and programs
taskkill /im launcher.exe /f >null
taskkill /im launcher.exe /f >null
taskkill /im opera.exe /f >null
taskkill /im opera.exe /f >null
taskkill /im opera.exe /f >null
taskkill /im opera.exe /f >null
taskkill /im opera.exe /f >null
taskkill /im opera.exe /f >null
:: ends logitech ghub services and programs
taskkill /im lghub_updater.exe /f >null
taskkill /im lghub_updater.exe /f >null
taskkill /im lghub_updater.exe /f >null
taskkill /im lghub_updater.exe /f >null
:: ends java updater services and programs
taskkill /im jusched.exe /f >null
taskkill /im jusched.exe /f >null
:: ends chrome services and programs
taskkill /im chrome.exe /f >null
taskkill /im GoogleUpdate.exe /f >null
taskkill /im GoogleUpdate.exe /f >null
:: ends movies & TV services and programs
taskkill /im Video.UI.exe /f >null
:: ends start services and programs
taskkill /im StartMenuExperienceHost.exe /f >null
:: ends microsoft content services and programs
taskkill /im backgroundTaskHost.exe /f >null
:: ends runtime broker
taskkill /im RuntimeBroker.exe /f >null
:: ends windows search
taskkill /im MicrosoftWindows.Client.CBS_cw5n1h2txyewy >null
taskkill /im SearchFilterHost.exe /f >null
taskkill /im SearchHost.exe /f >null
:: ends widgets
taskkill /im Widgets.exe /f >null
taskkill /im msedgewebview2.exe /f >null
taskkill /im msedgewebview2.exe /f >null
Goto Finish

:: On To The Finish!
:Finish
echo Done. Should Have Killed all of the Resouce Heavy Tasks Taking your Fps!
echo Made By yerBoiJake97 and demonickatsu on GitHub!
echo Press any button to close
pause >null
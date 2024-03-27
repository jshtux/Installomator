FoxitReader)
    name="Foxit PDF Reader"
    type="pkg"
    downloadURL=$(curl -fsIL "https://www.foxit.com/downloads/latest.html?product=Foxit-Reader&platform=Mac-OS-X&version=&package_type=&language=English&distID=" | grep location | cut -d \  -f 2)
    # strip trailing carriage return from download url
    downloadURL=${downloadURL%$'\r'}
    appNewVersion=$( echo $downloadURL | cut -d / -f 10 )
    archiveName=$( $downloadURL | cut -d / -f 11)
    expectedTeamID="8GN47HTP75"
    blockingProcesses=( "Foxit PDF Reader" "FoxitPDFReaderUpdateService" )
    #forcefulQuit=YES
    ;;

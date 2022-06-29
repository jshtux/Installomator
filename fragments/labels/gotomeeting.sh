gotomeeting)
    # credit: @matins
    name="GoToMeeting"
    type="dmg"
    downloadURL="https://link.gotomeeting.com/latest-dmg"
    appNewVersion=$(curl -s https://support.goto.com/meeting/help/whats-new-in-gotomeeting | grep "Desktop app" | head -n 1 | cut -d "(" -f 2 | cut -d ")" -f 1 | cut -d , -f 1 | cut -b2-)
    expectedTeamID="GFNFVT632V"
    ;;

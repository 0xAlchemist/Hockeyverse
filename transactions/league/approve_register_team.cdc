// approve_register_team.cdc

// TODO: Removed this method from simplified version
// but will use this or something similar to setup
// some sort of approval process.

// Registers a team to a League

import Athletaverse from 0xf8d6e0586b0a20c7
import AthletaverseLeague from 0xf8d6e0586b0a20c7

transaction() {
    prepare(signer: AuthAccount) {

        // borrow a reference to the League from storage
        let leagueReference = signer.borrow<&AthletaverseLeague.League>(from: /storage/AthletaverseLeague)
        ?? panic ("could not borrow league capability")

        // register the Team to the League
        leagueReference.approveRegisterTeam(teamID: UInt64(0))
    }
}
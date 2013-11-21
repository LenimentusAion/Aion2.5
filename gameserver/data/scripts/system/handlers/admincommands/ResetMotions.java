/**
 * This file is part of Aion Java Free <aionjfree.com>
 *
 *  This is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This software is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser Public License
 *  along with this software.  If not, see <http://www.gnu.org/licenses/>.
 */

package admincommands;

import gameserver.configs.administration.AdminConfig;
import gameserver.model.gameobjects.VisibleObject;
import gameserver.model.gameobjects.player.Player;
import gameserver.network.aion.serverpackets.SM_PLAYER_MOTION;
import gameserver.utils.PacketSendUtility;
import gameserver.utils.chathandlers.AdminCommand;

/**
* @author Osiris087
*
*/
public class ResetMotions extends AdminCommand
{
    private boolean reset = false;
    
	public ResetMotions()
	{
		super("resetMotions");
	}

	@Override
	public void executeCommand(Player admin, String[] params)
	{
	    if (admin.getAccessLevel() < AdminConfig.COMMAND_RESET_MOTION_GM)
	    {
			PacketSendUtility.sendMessage(admin, "You dont have enough rights to execute this command!");
			return;
		}

		String syntax = "//resetMotions : Clear currently set motions.\n" + 
		                "//resetMotions [ninja | levitate] : clear learnd type only and currently set motions\n" +  
		                "//resetMotions wipe : clear all learned motions and currently set motions\n\n";

		VisibleObject target = admin.getTarget();

		if (target == null)
		{
			PacketSendUtility.sendMessage(admin, "No target selected");
			return;
		}

		if (!(target instanceof Player))
        {
            PacketSendUtility.sendMessage(admin, "resetMotion can only be used on players");
            return;
        }

		Player player = (Player)target;
		
		// Either you are resetting your motions or 
		//    you are a GM resetting motions of someone else.
		if (params.length == 0)
		{
		    // reset all motions but leave learned skills
		    int i = 1;
            for (;i<=8;i++)
            {
                player.setActiveMotion(i, false); 
            }
            PacketSendUtility.sendMessage(admin, "All currently set motions reset for "+player.getName());
		}
		else if (params[0].toLowerCase().startsWith("nin"))
		{
		    int i = 1;
		    
            for (;i<=4;i++)
            {
                player.getMotionList().remove(i);
            }
		    
			this.reset = true;
            PacketSendUtility.sendMessage(admin, "Ninja learned motions and currently set motions reset for "+player.getName());
		}
        else if (params[0].toLowerCase().startsWith("lev"))
        {
            int i = 5;
            
            for (;i<=8;i++)
            {
                player.getMotionList().remove(i);
            }
            this.reset = true;
            PacketSendUtility.sendMessage(admin, "Levitate learned motions and currently set motions reset for "+player.getName());
        }
        else if (params[0].toLowerCase().equalsIgnoreCase("wipe"))
        {
            int i = 1;
            
            for (;i<=8;i++)
            {
                player.getMotionList().remove(i);
            }
            this.reset = true;
            PacketSendUtility.sendMessage(admin, "All learned motions and currently set motions reset for "+player.getName());
        }
        else
        {
            PacketSendUtility.sendMessage(admin, syntax);
            return;
        }
		player.getController().resetMotions(); //Update Clients Currently Set Motions
		PacketSendUtility.broadcastPacket(player, new SM_PLAYER_MOTION(player, false, false)); //Broadcast changes to nearby players in knownlist
		if (this.reset){
	        PacketSendUtility.sendPacket(player, new SM_PLAYER_MOTION(player, true)); //Remove Learned Motions		    
		}
	}
}
/*
 * This file is part of Aion Java Free <aionjfree.com>.
 *
 *  Aion Java Free is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Aion Java Free is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Aion Java Free.  If not, see <http://www.gnu.org/licenses/>.
 *  IMPORTANT: Please do not steal the file to stealing refers not remove 
 *  the credits of the true creator of this archive.
 */

package admincommands;

import gameserver.configs.administration.AdminConfig;
import gameserver.model.gameobjects.player.Player;
import gameserver.services.TeleportService;
import gameserver.utils.PacketSendUtility;
import gameserver.utils.chathandlers.AdminCommand;
import gameserver.world.WorldMapType;
import gameserver.model.Race;
import gameserver.network.aion.serverpackets.SM_ATTACK_STATUS.TYPE;
import gameserver.model.gameobjects.stats.StatEnum;
import gameserver.network.aion.serverpackets.SM_MESSAGE;
import gameserver.model.ChatType;
import gameserver.model.gameobjects.stats.modifiers.Executor;
import gameserver.world.World;

/**
 * @author JJBreaker - Small Changes VKCode
 * Rev. 42
 */
public class upvp extends AdminCommand {
    public upvp() {
        super("upvp");
    }

    @Override
    public void executeCommand(Player admin, String[] params) {
        if (admin.getAccessLevel() < AdminConfig.COMMAND_UPVP) {
            PacketSendUtility.sendMessage(admin, "You dont have enough rights to execute this command!");
            return;
        }
		
		if (params == null || params.length < 1){
			if (admin.getCommonData().getRace() == Race.ASMODIANS) {
			PacketSendUtility.sendMessage(admin, "syntax //upvp asmo");
			return;
			} else if (admin.getCommonData().getRace() == Race.ELYOS) {
			PacketSendUtility.sendMessage(admin, "syntax //upvp ely");
            return;
			}
        }
		
	if (params[0].toLowerCase().equals("ely")) {

		if (admin.getWorldId() == 300250000) {
			if(admin.getAccessLevel() == 0) {
			PacketSendUtility.sendMessage(admin, "You can't use this command Cuz you already in Instance PvP");
			return;
			}else{
				if (admin.getCommonData().getRace() == Race.ASMODIANS) {
					if (admin.getAccessLevel() == 0) {
					PacketSendUtility.sendMessage(admin, "This Command is not for your race");
					PacketSendUtility.sendMessage(admin, "//upvp ely");
					return;
					}
				}
			}
		}
	TeleportService.teleportTo(admin, 300250000, 867, 1100, 362, 59);
	admin.getLifeStats().increaseHp(TYPE.HP, admin.getLifeStats().getMaxHp()+1); 
	admin.getLifeStats().increaseMp(TYPE.MP, admin.getLifeStats().getMaxMp()+1);
	admin.getCommonData().setDp(admin.getGameStats().getCurrentStat(StatEnum.MAXDP));
	PacketSendUtility.sendMessage(admin, " HP,MP and DP has been fully refreshed!");
	/**if(admin.getAccessLevel() == 0){
	final String _message = "Custom zone PvP : [Elyos] " + admin.getName() + " Just enter the PvP zone";
	World.getInstance().doOnAllPlayers(new Executor<Player> () {
			@Override
			public boolean run(Player player)
			{
				PacketSendUtility.sendSysMessage(player, _message);
				return true;
			}
		});
	}**/
	}
	
	if (params[0].toLowerCase().equals("asmo")) {

		if (admin.getWorldId() == 300250000) {
			if(admin.getAccessLevel() == 0) {
			PacketSendUtility.sendMessage(admin, "You can't use this command Cuz you already in Instance PvP");
			return;
			}else{
				if (admin.getCommonData().getRace() == Race.ELYOS) {
					if (admin.getAccessLevel() == 0) {
					PacketSendUtility.sendMessage(admin, "This Command is not for your race");
					PacketSendUtility.sendMessage(admin, "//upvp asmo");
					return;
					}
				}
			}
		}
	TeleportService.teleportTo(admin, 300250000, 1271, 831, 258, 94);
	admin.getLifeStats().increaseHp(TYPE.HP, admin.getLifeStats().getMaxHp()+1); 
	admin.getLifeStats().increaseMp(TYPE.MP, admin.getLifeStats().getMaxMp()+1);
	admin.getCommonData().setDp(admin.getGameStats().getCurrentStat(StatEnum.MAXDP));
	PacketSendUtility.sendMessage(admin, " HP,MP and DP has been fully refreshed !");
	/**if(admin.getAccessLevel() == 0){
	final String _message = "Custom zone PvP : [Asmos] " + admin.getName() + " Just enter the PvP zone";
	World.getInstance().doOnAllPlayers(new Executor<Player> () {
			@Override
			public boolean run(Player player)
			{
				PacketSendUtility.sendSysMessage(player, _message);
				return true;
			}
		});
		}**/
	}	 	
  }
}
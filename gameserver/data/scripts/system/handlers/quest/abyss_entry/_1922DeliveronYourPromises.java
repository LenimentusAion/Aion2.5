/*
 * This file is part of aion-unique <aion-unique.org>
 *
 *  aion-unique is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  aion-unique is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser Public License
 *  along with aion-unique.  If not, see <http://www.gnu.org/licenses/>.
 */
package quest.abyss_entry;

import gameserver.model.EmotionType;              
import gameserver.dataholders.DataManager;
import gameserver.model.gameobjects.player.Player;
import gameserver.model.templates.WorldMapTemplate;
import gameserver.network.aion.SystemMessageId;
import gameserver.network.aion.serverpackets.SM_DIALOG_WINDOW;
import gameserver.network.aion.serverpackets.SM_SYSTEM_MESSAGE;
import gameserver.network.aion.serverpackets.SM_PLAY_MOVIE;
import gameserver.quest.handlers.QuestHandler;
import gameserver.quest.model.QuestCookie;
import gameserver.quest.model.QuestState;
import gameserver.quest.model.QuestStatus;
import gameserver.services.QuestService;
import gameserver.services.TeleportService;
import gameserver.utils.PacketSendUtility;
import gameserver.utils.ThreadPoolManager;
import gameserver.world.zone.ZoneName;

 
/**
 * @author Hellboy
 *
 */
public class _1922DeliveronYourPromises extends QuestHandler
{	
	private final static int	questId	= 1922;
	private final static int[]	npc_ids = {203830, 203901, 203764, 700368, 700369, 700264};
	private final static int[]	mob_ids = {210802, 210794, 210791, 210781, 213582, 213580, 213581};

	public _1922DeliveronYourPromises()
	{
		super(questId);
	}
	
	@Override
	public void register()
	{
		qe.addQuestLvlUp(questId);
		qe.addOnEnterWorld(questId);
		qe.setQuestEnterZone(ZoneName.SANCTUM_UNDERGROUND_ARENA_310080000).add(questId);
		qe.setQuestMovieEndIds(165).add(questId);
		qe.setQuestMovieEndIds(166).add(questId);
				
		for(int npc_id: npc_ids)
			qe.setNpcQuestData(npc_id).addOnTalkEvent(questId);
		for(int mob_id: mob_ids)
			qe.setNpcQuestData(mob_id).addOnKillEvent(questId);	
	}

	@Override
	public boolean onDialogEvent(QuestCookie env)
	{
		if(!super.defaultQuestOnDialogInitStart(env))
			return false;
		
		Player player = env.getPlayer();
		QuestState qs = player.getQuestStateList().getQuestState(questId);
		int var = qs.getQuestVarById(0);
		
		if(qs.getStatus() == QuestStatus.START)
		{
			switch(env.getTargetId())
			{
				case 203830:
				{
					switch(env.getDialogId())
					{
						case 26:
							if(var == 0)
								return sendQuestDialog(env, 1011);
						case 10010:
							return defaultCloseDialog(env, 0, 1);
						case 10011:
							return defaultCloseDialog(env, 0, 4);
						case 10012:
							return defaultCloseDialog(env, 0, 9);
						case 34:
							if(var == 1 || var == 4 || var == 9)
							{
								qs.setQuestVarById(0, 0);
								updateQuestStatus(env);
								return sendQuestDialog(env, 2375);
							}
					}
				} break;
				case 203901:
				{
					switch(env.getDialogId())
					{
						case 26:
							if(var == 1)
								return sendQuestDialog(env, 1352);
							else if(var == 2)
								return sendQuestDialog(env, 3398);
							else if(var == 7)
								return sendQuestDialog(env, 3739);
							else
								return defaultQuestItemCheck(env, 9, 0, true, 7, 4080);
						case 10001:
							return defaultCloseDialog(env, 1, 2);
						case 1009:
							if(var == 2)
							{
								qs.setStatus(QuestStatus.REWARD);
								updateQuestStatus(env);
								return sendQuestDialog(env, 5);
							}
							if(var == 7)
							{
								qs.setStatus(QuestStatus.REWARD);
								updateQuestStatus(env);
								return sendQuestDialog(env, 6);
							}
					}
				} break;
				case 203764:
				{
					switch(env.getDialogId())
					{
						case 26:
							if(var == 4)
								return sendQuestDialog(env, 1693);
							else if(var == 5)
								return sendQuestDialog(env, 2034);
						case 10002:
							if(defaultCloseDialog(env, 4, 5))
							{
								TeleportService.teleportTo(player, 310080000, 1, 276, 293, 163, (byte)90, 500);
								return true;
							}
							else
								return false;
						case 10003:
							if(var == 5)
							{
								qs.setQuestVarById(0, 7);
								updateQuestStatus(env);
								PacketSendUtility.sendPacket(player, new SM_DIALOG_WINDOW(env.getVisibleObject().getObjectId(), 0));
								return true;
							}
							else
								return false;
					}
				} break;
				case 700368:
				case 700369:
					if(env.getDialogId() == -1)
						return (defaultQuestUseNpc(env, 5, 6, EmotionType.NEUTRALMODE2, EmotionType.START_LOOT, false));
					break;
				case 700264:
					if(env.getDialogId() == -1)
						return (defaultQuestUseNpc(env, 9, 10, EmotionType.NEUTRALMODE2, EmotionType.START_LOOT, true));
					break;
			}
		}
		else if(qs.getStatus() == QuestStatus.REWARD)
		{
			if(var == 2)
				return defaultQuestRewardDialog(env, 203901, 3739);
			else if(var == 7)
				return defaultQuestRewardDialog(env, 203901, 3739, 1);
			else if(var == 9)
				return defaultQuestRewardDialog(env, 203901, 3739, 2);
		}
		return false;
	}
	
	@Override
	public boolean onKillEvent(QuestCookie env)
	{
		int[] mobids1 = {210802, 210794};
		int[] mobids2 = {213580, 213581, 213582};
		if(defaultQuestOnKillEvent(env, mobids1, 0, 3, 1) || defaultQuestOnKillEvent(env, 210791, 0, 3, 2) || defaultQuestOnKillEvent(env, 210781, 0, 3, 3) || defaultQuestOnKillEvent(env, mobids2, 0, 10, 4))
           {
		final Player player = env.getPlayer();
		QuestState qs = player.getQuestStateList().getQuestState(questId);
			if(qs.getQuestVarById(4) == 10)
			{
				PacketSendUtility.sendPacket(player, new SM_PLAY_MOVIE(0, 166));
				ThreadPoolManager.getInstance().schedule(new Runnable(){
					@Override
					public void run()
					{
						TeleportService.teleportTo(player, 110010000, 1, 1468, 1336, 567, (byte)30, 500);
					}
				}, 30000);
			}	
				return true;
			}           

			
		else
			return false;
	}


	@Override
	public boolean onLvlUpEvent(QuestCookie env)
	{
		return defaultQuestOnLvlUpEvent(env, false);
	}

	@Override
	public boolean onEnterWorldEvent(QuestCookie env)
	{
		final Player player = env.getPlayer();
		QuestState qs = player.getQuestStateList().getQuestState(questId);
		if(qs != null && qs.getStatus() == QuestStatus.START)
		{
			int var = qs.getQuestVarById(0);
			if(player.getWorldId() != 310080000 && qs.getQuestVarById(4) != 10)
			{			
					qs.setQuestVarById(0, 4);
					qs.setQuestVarById(4, 0); // clear kills
					updateQuestStatus(env);
					PacketSendUtility.sendPacket(player, new SM_SYSTEM_MESSAGE(SystemMessageId.QUEST_FAILED_$1, DataManager.QUEST_DATA.getQuestById(questId).getName()));
			}
					
			if(player.getWorldId() == 310080000 && qs.getQuestVarById(0) == 5)
			{
                    
                ThreadPoolManager.getInstance().schedule(new Runnable(){
					@Override
					public void run()
					{
						PacketSendUtility.sendPacket(player, new SM_PLAY_MOVIE(0, 165));
					}
				}, 3000);                        
                    return true;
			}
		}
		return false;
	}

	@Override
	public boolean onMovieEndEvent(QuestCookie env, int movieId)
	{
		if(movieId != 165)
			return false;

        Player player = env.getPlayer();
        QuestState qs = player.getQuestStateList().getQuestState(questId);
        if(qs == null || qs.getStatus() != QuestStatus.START || qs.getQuestVarById(4) != 0)
            return false;
        
        qs.setQuestVar(5);
        updateQuestStatus(env);     
        return true;
 	
	}
		
	//used in case something go wrong
	@Override
	public void QuestUseNpcInsideFunction(QuestCookie env)
	{
		Player player = env.getPlayer();
		if(env.getTargetId() == 700368)
			TeleportService.teleportTo(player, 310080000, 1, 276, 293, 163, (byte)90, 500);
		else if(env.getTargetId() == 700369)
			TeleportService.teleportTo(player, 110010000, 1, 1468, 1336, 567, (byte)30, 500);
	}
}
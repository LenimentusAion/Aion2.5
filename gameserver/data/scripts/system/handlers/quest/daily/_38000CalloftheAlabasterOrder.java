/*
 * This file is part of aion-unique <aion-unique.org>.
 *
 * aion-unique is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aion-unique is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with aion-unique.  If not, see <http://www.gnu.org/licenses/>.
 */
package quest.daily;

import gameserver.configs.main.GSConfig;
import gameserver.model.gameobjects.player.Player;
import gameserver.quest.handlers.QuestHandler;
import gameserver.quest.model.QuestCookie;
import gameserver.quest.model.QuestState;
import gameserver.quest.model.QuestStatus;
import gameserver.services.QuestService;


/**
 * @author HellBoy
 * 
 */
public class _38000CalloftheAlabasterOrder extends QuestHandler
{
	private final static int	questId	= 38000;

	public _38000CalloftheAlabasterOrder()
	{
		super(questId);
	}

	@Override
	public void register()
	{
		if(GSConfig.SERVER_VERSION.startsWith("1.9"))
		{
			qe.setNpcQuestData(799803).addOnTalkEvent(questId);
			qe.addQuestLvlUp(questId);
		}
	}

	@Override
	public boolean onLvlUpEvent(QuestCookie env)
	{
		Player player = env.getPlayer();
		QuestState qs = player.getQuestStateList().getQuestState(questId);
		if(qs == null || qs.getStatus() == QuestStatus.NONE)
		{
			boolean lvlCheck = QuestService.checkLevelRequirement(questId, player.getCommonData().getLevel());
			if(!lvlCheck)
				return false;
			QuestService.startQuest(env, QuestStatus.REWARD);
			return true;
		}
		return false;
	}

	@Override
	public boolean onDialogEvent(QuestCookie env)
	{
		if(!super.defaultQuestOnDialogInitStart(env))
			return false;		
		return defaultQuestRewardDialog(env, 799803, 10002);
	}
}

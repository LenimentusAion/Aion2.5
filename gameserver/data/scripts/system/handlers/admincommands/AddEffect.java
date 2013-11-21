package admincommands;

import gameserver.configs.administration.AdminConfig;
import gameserver.dataholders.DataManager;
import gameserver.model.gameobjects.player.Player;
import gameserver.model.gameobjects.VisibleObject;
import gameserver.skill.model.Effect;
import gameserver.skill.model.SkillTemplate;
import gameserver.utils.chathandlers.AdminCommand;
import gameserver.utils.PacketSendUtility;

/**
 * @author ggadv2
 */
public class AddEffect extends AdminCommand {
	public AddEffect()
	{
		super("addeffect");
	}

	@Override
	public void executeCommand(final Player admin, String[] params)
	{
		if(admin.getAccessLevel() < AdminConfig.COMMAND_ADDEFFECT)
		{
			PacketSendUtility.sendMessage(admin, "You dont have enough rights to execute this command");
			return;
		}

		if(params.length < 1)
		{
			PacketSendUtility.sendMessage(admin, "Syntax: //addeffect <skillid> <duration>\nThis command adds specified effect to the target for a specified duration (in seconds). Leaving duration null will use the default skill duration.");
			return;
		}

		VisibleObject target = admin.getTarget();
		Player effected = admin;
		int duration = 0;

		if(target instanceof Player)
			effected = (Player) target;

		SkillTemplate sTemplate = null;

		try
		{
			sTemplate = DataManager.SKILL_DATA.getSkillTemplate(Integer.parseInt(params[0]));
		}
		catch(Exception e)
		{
			PacketSendUtility.sendMessage(admin, "Wrong skill id!");
			return;
		}

		if(params.length == 2)
		{
			duration = Integer.parseInt(params[1]) * 1000;
		}
		else
		{
			duration = sTemplate.getDuration();
			if (duration < 1)
				duration = sTemplate.getEffects().getEffectsDuration();
		}

		Effect effect = new Effect(admin, effected, sTemplate, 1, duration);
		effected.getEffectController().addEffect(effect);
		effect.addAllEffectToSucess();
		effect.startEffect(true);
		PacketSendUtility.sendMessage(admin, "Effect " + sTemplate.getName() + " added to player " + effected.getName() + " for " + (duration / 1000) + " second(s).");
	}
}

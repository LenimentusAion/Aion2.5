package admincommands;

import gameserver.configs.administration.AdminConfig;
import gameserver.model.gameobjects.player.Player;
import gameserver.network.aion.serverpackets.SM_INGAMESHOP_BALANCE;
import gameserver.services.CashShopManager;
import gameserver.utils.PacketSendUtility;
import gameserver.utils.Util;
import gameserver.utils.chathandlers.AdminCommand;
import gameserver.utils.i18n.CustomMessageId;
import gameserver.utils.i18n.LanguageHandler;
import gameserver.world.World;

public class AddCredits extends AdminCommand {

    public AddCredits() {
        super("addcredits");
    }
    
    @Override
    public void executeCommand(Player admin, String[] params) {
        if (admin.getAccessLevel() < AdminConfig.COMMAND_ADDCREDITS) {
            PacketSendUtility.sendMessage(admin, LanguageHandler.translate(CustomMessageId.COMMAND_NOT_ENOUGH_RIGHTS));
            return;
        }
        
        if (params.length != 2) {
            PacketSendUtility.sendMessage(admin, "Syntax: //addcredits <playername> <Quantity>");
            return;
        }
        
        int Credits = 0;
        String name = Util.convertName(params[0]);
        Player player = World.getInstance().findPlayer(name);
        
        if (player == null) {
            PacketSendUtility.sendMessage(admin, "The specified player is not online.");
            return;
        }
        
        try
        {
            Credits = Integer.parseInt(params[1]);
        }
        catch (NumberFormatException e) {
            PacketSendUtility.sendMessage(admin, "<credits> value must be an integer.");
            return;
        }
        
        CashShopManager.getInstance().increaseCredits(player, Credits);
        PacketSendUtility.sendPacket(player, new SM_INGAMESHOP_BALANCE());
        PacketSendUtility.sendMessage(admin, name + " Increase " + Credits + " Integral success.");
        PacketSendUtility.sendMessage(player, "Admin " + admin.getName() + " You increase " + Credits + " Integral.");
    }
}

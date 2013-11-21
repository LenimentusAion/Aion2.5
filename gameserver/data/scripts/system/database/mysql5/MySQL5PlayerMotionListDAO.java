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
package mysql5;

import gameserver.dao.PlayerMotionListDAO;
import gameserver.model.gameobjects.player.Motion;
import gameserver.model.gameobjects.player.MotionList;
import gameserver.model.gameobjects.player.Player;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.apache.log4j.Logger;
import commons.database.DatabaseFactory;


/**
 * @author osiris087
 *
 */
public class MySQL5PlayerMotionListDAO extends PlayerMotionListDAO
{
	private static final String LOAD_QUERY = "SELECT `motion_state`, `motion_active`, `motion_expires_time`, `motion_date` FROM `player_motions` WHERE `player_id` = ?";
    private static final String INSERT_QUERY = "INSERT INTO `player_motions`(`player_id`, `motion_state`, `motion_active`, `motion_expires_time`, `motion_date`) VALUES (?,?,?,?,?)";
    private static final String CHECK_QUERY  = "SELECT `motion_state` FROM `player_motions` WHERE `player_id`= ? AND `motion_state`= ?";
    private static final String UPDATE_QUERY = "UPDATE `player_motions` SET `motion_active` = ? WHERE `player_id` = ? AND `motion_state` = ?";

	private static final Logger log = Logger.getLogger(MySQL5PlayerMotionListDAO.class);
	
	@Override
	public MotionList loadMotionList(int playerId)
	{
	    
		MotionList motionList = new MotionList();
		
		Connection con = null;
		try
		{
			con = DatabaseFactory.getConnection();
			PreparedStatement stmt = con.prepareStatement(LOAD_QUERY);
			stmt.setInt(1, playerId);
			ResultSet rset = stmt.executeQuery();
			while(rset.next())
			{
                int motion_state = rset.getInt("motion_state");
                boolean motion_active = rset.getBoolean("motion_active");
                long motion_date = rset.getTimestamp("motion_date").getTime();
                long motion_expires_time = rset.getLong("motion_expires_time");

                motionList.add(motion_state, motion_active, motion_date, motion_expires_time);
			}
		}
		catch(Exception e)
		{
			log.error(e);
		}
		finally
		{
			DatabaseFactory.close(con);
		}
		
		return motionList;
	}
    
    @Override
    public void addMotion(Player player, Motion motion) 
    {
        Connection con = null;
        try 
        {
            con = DatabaseFactory.getConnection();
            PreparedStatement stmt = con.prepareStatement(INSERT_QUERY);
            stmt.setInt(1, player.getObjectId());
            stmt.setInt(2, motion.getMotionState());
            stmt.setBoolean(3, motion.getActive());
            stmt.setLong(4, motion.getMotionExpiresTime());
            stmt.setTimestamp(5, new Timestamp(motion.getMotionCreationTime()));
            stmt.execute();
        } 
        
        catch (Exception e) 
        {
            log.error(e);
        } 
        
        finally 
        {
            DatabaseFactory.close(con);
        }
    }
	
    @Override
    public void updateMotion(Player player, Motion motion) 
    {
        Connection con = null;
        try 
        {
            con = DatabaseFactory.getConnection();
            PreparedStatement stmt = con.prepareStatement(UPDATE_QUERY);
            stmt.setBoolean(1, motion.getActive());
            stmt.setInt(2, player.getObjectId());
            stmt.setInt(3, motion.getMotionState());
            stmt.execute();
            stmt.close();
        } 
        
        catch (Exception e) 
        {
            log.error(e);
        } 
        
        finally 
        {
            DatabaseFactory.close(con);
        }
    }
	
    @Override
    public boolean storeMotions(Player player) 
    {        
        if (player.getMotionList() != null) 
        {
            for (Motion motion : player.getMotionList().getMotions()) 
            {
                Connection con = null;
                try
                {
                    con = DatabaseFactory.getConnection();
                    PreparedStatement stmt = con.prepareStatement(CHECK_QUERY);
                    stmt.setInt(1, player.getObjectId());
                    stmt.setInt(2, motion.getMotionState());
                    ResultSet rset = stmt.executeQuery();
                    
                    if (rset.next())
                        updateMotion(player, motion);
                    else
                        addMotion(player, motion);
                }
                catch(Exception e)
                {
                    log.error(e);
                }
                finally
                {
                    DatabaseFactory.close(con);
                }
            }             
                
                
            
        }
        return true;
    }	

	@Override
	public boolean supports(String databaseName, int majorVersion, int minorVersion)
	{
		return MySQL5DAOUtils.supports(databaseName, majorVersion, minorVersion);
	}
}

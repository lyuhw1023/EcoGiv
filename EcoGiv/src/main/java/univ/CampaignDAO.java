package univ;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CampaignDAO {
    private Connection connection;

    public CampaignDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Campaign> getAllCampaigns() throws SQLException {
        List<Campaign> campaigns = new ArrayList<>();
        String sql = "SELECT * FROM campaigns";
        PreparedStatement pstmt = connection.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        
        while (rs.next()) {
            Campaign campaign = new Campaign();
            campaign.setId(rs.getInt("id"));
            campaign.setTitle(rs.getString("title"));
            campaign.setDetailPageUrl(rs.getString("detailPageUrl"));
            campaigns.add(campaign);
        }
        
        rs.close();
        pstmt.close();
        
        return campaigns;
    }

    public Campaign getCampaignById(int id) throws SQLException {
        Campaign campaign = null;
        String sql = "SELECT * FROM campaigns WHERE id = ?";
        PreparedStatement pstmt = connection.prepareStatement(sql);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();
        
        if (rs.next()) {
            campaign = new Campaign();
            campaign.setId(rs.getInt("id"));
            campaign.setTitle(rs.getString("title"));
            campaign.setDetailPageUrl(rs.getString("detailPageUrl"));
        }
        
        rs.close();
        pstmt.close();
        
        return campaign;
    }
}

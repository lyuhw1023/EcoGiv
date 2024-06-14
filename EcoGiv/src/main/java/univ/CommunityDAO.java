package univ;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CommunityDAO {
    private Connection conn;

    public CommunityDAO(Connection conn) {
        this.conn = conn;
    }

    public List<Post> selectAllPosts() {
        List<Post> posts = new ArrayList<>();
        String sql = "SELECT * FROM posts ORDER BY date";

        try (PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                Post post = new Post();
                post.setPostId(rs.getInt("post_id"));
                post.setTitle(rs.getString("title"));
                post.setAuthor(rs.getString("author"));
                post.setContent(rs.getString("content"));
                post.setDate(rs.getTimestamp("date"));
                post.setViews(rs.getInt("views"));
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return posts;
    }

    public Post selectPost(int postId) {
        String sql = "SELECT * FROM posts WHERE post_id = ?";
        Post post = null;

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, postId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    post = new Post();
                    post.setPostId(rs.getInt("post_id"));
                    post.setTitle(rs.getString("title"));
                    post.setAuthor(rs.getString("author"));
                    post.setContent(rs.getString("content"));
                    post.setDate(rs.getTimestamp("date"));
                    post.setViews(rs.getInt("views"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return post;
    }

    public void incrementViews(int postId) {
        String sql = "UPDATE posts SET views = views + 1 WHERE post_id = ?";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, postId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Other CRUD methods (insert, update, delete)...
}

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

    public void insertPost(Post post) throws SQLException {
        String sql = "INSERT INTO posts (title, author, content, date, views) VALUES (?, ?, ?, NOW(), 0)";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, post.getTitle());
            pstmt.setString(2, post.getAuthor());
            pstmt.setString(3, post.getContent());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("글 등록에 실패했습니다.", e);
        }
    }

    public void updatePost(Post post) throws SQLException {
        String sql = "UPDATE posts SET title = ?, content = ? WHERE post_id = ?";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, post.getTitle());
            pstmt.setString(2, post.getContent());
            pstmt.setInt(3, post.getPostId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("글 수정에 실패했습니다.", e);
        }
    }

    public void deletePost(int postId) throws SQLException {
        String sql = "DELETE FROM posts WHERE post_id = ?";

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, postId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new SQLException("글 삭제에 실패했습니다.", e);
        }
    }
}

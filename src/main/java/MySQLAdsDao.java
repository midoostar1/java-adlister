import java.sql.*;

import com.mysql.cj.jdbc.Driver;

import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection = null;

    public MySQLAdsDao( Config config)throws SQLException {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

    }

    @Override
    public List<Ad> all()throws SQLException {

        ArrayList<Ad> data = new ArrayList<>();

            Statement statement = connection.createStatement();
            String selectQuery = ("SELECT * FROM ads");
            ResultSet rs = statement.executeQuery(selectQuery);


            while (rs.next()) {
                Ad ad = new Ad(rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"));
                data.add(ad);
            }


        return data;

        }




    @Override
    public long insert(Ad ad) throws SQLException {

        String query = "INSERT INTO ads(user_id,title,description) VALUES" + "(" +
                ad.getUserId() + "," + "'"+
                ad.getTitle()+"'" + "," + "'" +
                ad.getDescription()+"'" +")";
     
            Statement stmt = connection.createStatement();
           stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
rs.next();
     return  rs.getLong(1);


    }

}



import Config;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * Create a class named MySQLAdsDao that implements the Ads interface
 *
 * This class should have a private instance property named connection of type Connection that is initialized in the constructor. Define your constructor so that it accepts an instance of your Config class so that it can obtain the database credentials.
 * Implement the methods in the Ads interface
 * Your methods should retrieve ads from the database and insert new ads into the database
 * The connection object will be created just once, in this class' constructor, and the individual methods that query the database should use the connection object to create statements.*/

public class MySQLAdsDao implements Ads {
    private Connection connection;

    /**
     * //instance property initialized in the constructor
     * //  Define your constructor so that it accepts an instance of your Config class
     * */
    public MySQLAdsDao(Connection connection, Config config) {
        this.connection = connection;
// so that it can obtain the database credentials.
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        }catch (SQLException e){
            e.printStackTrace();
        }


    }

    @Override
    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}

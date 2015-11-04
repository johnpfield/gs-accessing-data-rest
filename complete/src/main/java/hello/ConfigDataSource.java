package hello;

/**
 * @author jfield@pivotal.io
 *
 */

import javax.sql.DataSource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// not using profiles at the moment
// import org.springframework.context.annotation.Profile;

import com.jolbox.bonecp.BoneCPDataSource;	

@Configuration
public class ConfigDataSource {

    @Bean
    public DataSource dataSource() {

            BoneCPDataSource dataSource = new BoneCPDataSource();

            dataSource.setDriverClass("com.mysql.jdbc.Driver");
            dataSource.setJdbcUrl("jdbc:mysql://localhost/EMP");
            dataSource.setUsername("admin");
            dataSource.setPassword("secret");
                return dataSource;
        
    }
    
}


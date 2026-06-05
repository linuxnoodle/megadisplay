package io.sentry.config;

import de.mrapp.util.FileUtil;
import io.sentry.dsn.Dsn;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Properties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class Lookup {
    private static final String CONFIG_FILE_NAME = "sentry.properties";
    private static boolean checkJndi;
    private static Properties configProps;
    private static final Logger logger;

    static {
        Logger logger2 = LoggerFactory.getLogger((Class<?>) Lookup.class);
        logger = logger2;
        checkJndi = true;
        String configFilePath = getConfigFilePath();
        try {
            InputStream inputStream = getInputStream(configFilePath);
            if (inputStream != null) {
                Properties properties = new Properties();
                configProps = properties;
                properties.load(inputStream);
            } else {
                logger2.debug("Sentry configuration file not found in filesystem or classpath: '{}'.", configFilePath);
            }
        } catch (Exception e) {
            logger.error("Error loading Sentry configuration file '{}': ", configFilePath, e);
        }
    }

    private Lookup() {
    }

    private static String getConfigFilePath() {
        String property = System.getProperty("sentry.properties.file");
        if (property == null) {
            property = System.getenv("SENTRY_PROPERTIES_FILE");
        }
        return property == null ? CONFIG_FILE_NAME : property;
    }

    private static InputStream getInputStream(String str) throws FileNotFoundException {
        File file = new File(str);
        if (file.isFile() && file.canRead()) {
            return new FileInputStream(file);
        }
        return Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
    }

    public static String lookup(String str) {
        return lookup(str, null);
    }

    public static String lookup(String str, Dsn dsn) {
        String strJndiLookup;
        Properties properties;
        if (checkJndi) {
            try {
                Class.forName("javax.naming.InitialContext", false, Dsn.class.getClassLoader());
                strJndiLookup = JndiLookup.jndiLookup(str);
                if (strJndiLookup != null) {
                    try {
                        logger.debug("Found {}={} in JNDI.", str, strJndiLookup);
                    } catch (ClassNotFoundException e) {
                        e = e;
                        logger.trace("JNDI is not available: " + e.getMessage());
                        checkJndi = false;
                    } catch (NoClassDefFoundError e2) {
                        e = e2;
                        logger.trace("JNDI is not available: " + e.getMessage());
                        checkJndi = false;
                    }
                }
            } catch (ClassNotFoundException | NoClassDefFoundError e3) {
                e = e3;
                strJndiLookup = null;
            }
        } else {
            strJndiLookup = null;
        }
        if (strJndiLookup == null) {
            strJndiLookup = System.getProperty("sentry." + str.toLowerCase());
            if (strJndiLookup != null) {
                logger.debug("Found {}={} in Java System Properties.", str, strJndiLookup);
            }
        }
        if (strJndiLookup == null) {
            strJndiLookup = System.getenv("SENTRY_" + str.replace(FileUtil.SUFFIX_SEPARATOR, "_").toUpperCase());
            if (strJndiLookup != null) {
                logger.debug("Found {}={} in System Environment Variables.", str, strJndiLookup);
            }
        }
        if (strJndiLookup == null && dsn != null && (strJndiLookup = dsn.getOptions().get(str)) != null) {
            logger.debug("Found {}={} in DSN.", str, strJndiLookup);
        }
        if (strJndiLookup == null && (properties = configProps) != null && (strJndiLookup = properties.getProperty(str)) != null) {
            logger.debug("Found {}={} in {}.", str, strJndiLookup, CONFIG_FILE_NAME);
        }
        if (strJndiLookup != null) {
            return strJndiLookup.trim();
        }
        return null;
    }
}

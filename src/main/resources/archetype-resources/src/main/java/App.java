#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package};

// Import log4j classes.
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

public class App
{
    static final Logger logger = LogManager.getLogger(App.class.getName());

    public static void main(String args[])
    {
        logger.trace("Entering application.");
        logger.error("Didn't do it.");
        System.out.println("Hello, World!!!");

        logger.trace("Exiting application.");
    }
}
// vim: set ts=4 sw=4 tw=78 ft=java:

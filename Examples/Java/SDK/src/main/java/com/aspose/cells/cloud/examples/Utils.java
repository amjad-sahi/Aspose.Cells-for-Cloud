package com.aspose.cells.cloud.examples;

import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.logging.Logger;

public class Utils {

    public static final String STORAGE = null;
    public static final String FOLDER = null;
    public static final String BASE_PATH = null;

    private static final Logger LOGGER = Logger.getLogger(Utils.class.getName());

    public static Path getPath(Class example, String filename) {
        Path p = FileSystems.getDefault().getPath(System.getProperty("user.dir"), "src", "main", "resources");
        p = FileSystems.getDefault().getPath(p.toString(), example.getName().split("\\."));
        if (filename != null) {
            p = FileSystems.getDefault().getPath(p.toString(), filename);
            LOGGER.info(String.format("Using file %s", p));
        } else {
            LOGGER.info(String.format("Using directory %s", p));
        }

        return p;
    }

}

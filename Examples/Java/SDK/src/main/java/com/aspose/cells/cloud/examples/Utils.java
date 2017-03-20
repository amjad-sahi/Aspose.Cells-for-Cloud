package com.aspose.cells.cloud.examples;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Utils {

    public static final String STORAGE = null;
    public static final String FOLDER = null;
    public static final String BASE_PATH = null;

    public static Path getPath(Class example, String filename) {
        final File f = new File(example.getProtectionDomain().getCodeSource().getLocation().getPath());
        String path=f.getAbsolutePath();
        int subPathIndex=path.indexOf("Examples");
        String subPath=path.substring(0, subPathIndex) + "Data/" + filename;

        Path p=Paths.get(subPath);
        return p;
    }
    

}

package com.neusoft.util;

import com.neusoft.util.fastdfsTemlate.FastDFSTemplate;
import com.neusoft.util.fastdfsTemlate.FastDfsInfo;
import com.neusoft.util.fastdfsTemlate.exception.FastDFSException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

@Component
public class FastDFS {

    @Autowired
    FastDFSTemplate fastDFSTemplate;

    public String upload(File tempFile) {
        InputStream is = null;
        try {
            is = new FileInputStream(tempFile);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        byte[] bytes = null;
        try {
            bytes = new byte[is.available()];
            int length = is.read(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Map<String, String> map = new HashMap<>();
        FastDfsInfo rv = null;
        try {
            rv = fastDFSTemplate.upload(bytes, "jpg", map);
        } catch (FastDFSException e) {
            e.printStackTrace();
        }finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (tempFile != null) {
                tempFile.delete();
            }
        }
        assert rv != null;
        return rv.getFileAbsolutePath();
    }
}

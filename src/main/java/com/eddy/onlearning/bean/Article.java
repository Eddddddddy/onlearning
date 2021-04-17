package com.eddy.onlearning.bean;

public class Article {
    private int t_id;
    private String t_video;
    private int t_fid;
    private String t_fname;
    private int t_cid;
    private String t_cname;
    private String t_data;
    private int t_view;
    private String t_html;
    private String t_abstract;

    public String getT_abstract() {
        return t_abstract;
    }

    public void setT_abstract(String t_abstract) {
        this.t_abstract = t_abstract;
    }

    public String getT_html() {
        return t_html;
    }

    public void setT_html(String t_html) {
        this.t_html = t_html;
    }

    public int getT_view() {
        return t_view;
    }

    public void setT_view(int t_view) {
        this.t_view = t_view;
    }

    public String getT_data() {
        return t_data;
    }

    public void setT_data(String t_data) {
        this.t_data = t_data;
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getT_video() {
        return t_video;
    }

    public void setT_video(String t_video) {
        this.t_video = t_video;
    }

    public int getT_fid() {
        return t_fid;
    }

    public void setT_fid(int t_fid) {
        this.t_fid = t_fid;
    }

    public String getT_fname() {
        return t_fname;
    }

    public void setT_fname(String t_fname) {
        this.t_fname = t_fname;
    }

    public int getT_cid() {
        return t_cid;
    }

    public void setT_cid(int t_cid) {
        this.t_cid = t_cid;
    }

    public String getT_cname() {
        return t_cname;
    }

    public void setT_cname(String t_cname) {
        this.t_cname = t_cname;
    }

    public void viewed() {
        this.t_view++;
    }

    public String getStaticData() {
//        String data = this.t_data;
//        String data2 = "";
//        String data3 = "";
//        String output = "";
//        for (int i=0;i<data.length();i++) {
//            int first = data.indexOf("(", i);
//            if (first == -1)break;
//            int second = data.indexOf(")", first);
//            if (second == -1)break;
//            data2 = data2.concat(data.substring(i, first-1));
//            i = second;
//        }
//        for (int i=0;i<data2.length();i++) {
//            int first = data2.indexOf("[", i);
//            if (first == -1)break;
//            int second = data2.indexOf("]", first);
//            if (second == -1)break;
//            data3 = data3.concat(data2.substring(i, first-1));
//            i = second;
//        }
//        for (int i=0;i<data3.length();i++) {
//            int first = data3.indexOf("<", i);
//            if (first == -1)break;
//            int second = data3.indexOf(">", first);
//            if (second == -1)break;
//            output = output.concat(data3.substring(i, first-1));
//            i = second;
//        }
//        if(output.compareTo("") == 0){
//            if (data3.compareTo("") == 0){
//                if (data2.compareTo("") == 0){
//                    output = data;
//                }else{
//                    output = data2;
//                }
//            }else{
//                output = data3;
//            }
//        }
//        return output.substring(1,200);
        if (this.t_abstract.length() < 150) {
            return this.t_abstract;
        }else{
            return this.t_abstract.substring(0, 150);
        }
    }
}

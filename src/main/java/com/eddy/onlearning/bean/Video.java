package com.eddy.onlearning.bean;

public class Video {
    private int v_id;
    private String v_video;
    private int v_fid;
    private String v_fname;
    private int v_cid;
    private String v_cname;
    private int v_view;

    public int getV_id() {
        return v_id;
    }

    public void setV_id(int v_id) {
        this.v_id = v_id;
    }

    public String getV_video() {
        return v_video;
    }

    public void setV_video(String v_video) {
        this.v_video = v_video;
    }

    public int getV_fid() {
        return v_fid;
    }

    public void setV_fid(int v_fid) {
        this.v_fid = v_fid;
    }

    public String getV_fname() {
        return v_fname;
    }

    public void setV_fname(String v_fname) {
        this.v_fname = v_fname;
    }

    public int getV_cid() {
        return v_cid;
    }

    public void setV_cid(int v_cid) {
        this.v_cid = v_cid;
    }

    public String getV_cname() {
        return v_cname;
    }

    public void setV_cname(String v_cname) {
        this.v_cname = v_cname;
    }

    public int getV_view() {
        return v_view;
    }

    public void setV_view(int v_view) {
        this.v_view = v_view;
    }

    public void viewed() {
        this.v_view++;
    }
}

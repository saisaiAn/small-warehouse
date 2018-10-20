package cn.bean;

//图片表
public class Imager {
    private Integer imagerno;

    private String imagerurl;

    private String imageclassification;

    private String imagerdescription;

    private Integer imagerid;

    public Integer getImagerno() {
        return imagerno;
    }

    public void setImagerno(Integer imagerno) {
        this.imagerno = imagerno;
    }

    public String getImagerurl() {
        return imagerurl;
    }

    public void setImagerurl(String imagerurl) {
        this.imagerurl = imagerurl == null ? null : imagerurl.trim();
    }

    public String getImageclassification() {
        return imageclassification;
    }

    public void setImageclassification(String imageclassification) {
        this.imageclassification = imageclassification == null ? null : imageclassification.trim();
    }

    public String getImagerdescription() {
        return imagerdescription;
    }

    public void setImagerdescription(String imagerdescription) {
        this.imagerdescription = imagerdescription == null ? null : imagerdescription.trim();
    }

    public Integer getImagerid() {
        return imagerid;
    }

    public void setImagerid(Integer imagerid) {
        this.imagerid = imagerid;
    }
}
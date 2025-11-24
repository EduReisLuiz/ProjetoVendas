package vo;

public class ProdutoVO {

    private Integer id;
    private String typeConsole;
    private String situation;
    private String factorySeals;
    private Boolean originalBox;
    private Boolean invoice;
    private String controls;
    private Boolean accompaniesGames;
    private Double price;
    private String commentaries;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeConsole() {
        return typeConsole;
    }
    public void setTypeConsole(String typeConsole) {
        this.typeConsole = typeConsole;
    }

    public String getSituation() {
        return situation;
    }
    public void setSituation(String situation) {
        this.situation = situation;
    }

    public String getFactorySeals() {
        return factorySeals;
    }
    public void setFactorySeals(String factorySeals) {
        this.factorySeals = factorySeals;
    }

    public Boolean getOriginalBox() {
        return originalBox;
    }
    public void setOriginalBox(Boolean originalBox) {
        this.originalBox = originalBox;
    }

    public Boolean getInvoice() {
        return invoice;
    }
    public void setInvoice(Boolean invoice) {
        this.invoice = invoice;
    }

    public String getControls() {
        return controls;
    }
    public void setControls(String controls) {
        this.controls = controls;
    }

    public Boolean getAccompaniesGames() {
        return accompaniesGames;
    }
    public void setAccompaniesGames(Boolean accompaniesGames) {
        this.accompaniesGames = accompaniesGames;
    }

    public Double getPrice() {
        return price;
    }
    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCommentaries() {
        return commentaries;
    }
    public void setCommentaries(String commentaries) {
        this.commentaries = commentaries;
    }
}
package person;

/**
 * Created by Win7uX32 on 2015/7/15.
 */
public class Person {
    private int id;
    private String type;//类型(1：受害人2：报案人3：受害/报案人4：其他)
    private String skin_color;//肤色
    private String scarf;//围巾类型
    private String glasses;//眼镜
    private String u_color;//上衣颜色
    private String bag;//包(1：挎包2：背包3：手提包4：无)
    private int l_length;//裤长
    private String figure;//体型
    private String hair_style;//发型
    private String character;//体表特征
    private String u_style;//上衣款式
    private int u_length;//上衣长度
    private String l_style;//裤型
    private String shoe_style;//鞋型
    private String behavior;//行为特征(1打人2：持枪械杀人3：驾车撞人4：持刀伤人)
    private int height;//身高
    private String hat;//帽子
    private String hair_color;//发色
    private String collar;//衣领
    private String u_character;//上衣特征
    private String l_color;//裤子颜色
    private String shoe_color;//鞋子颜色
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSkin_color() {
        return skin_color;
    }

    public void setSkin_color(String skin_color) {
        this.skin_color = skin_color;
    }

    public String getType() {
        return type;
    }

   public void setType(String type) {
        this.type = type;
    }
    public String getScarf() {
        return scarf;
    }

    public void setScarf(String scarf) {
        this.scarf = scarf;
    }

    public String getGlasses() {
        return glasses;
    }

    public void setGlasses(String glasses) {
        this.glasses = glasses;
    }

    public String getU_color() {
        return u_color;
    }

    public void setU_color(String u_color) {
        this.u_color = u_color;
    }

    public String getBag() {
        return bag;
    }

    public void setBag(String bag) {
        this.bag = bag;
    }

    public int getL_length() {
        return l_length;
    }

    public void setL_length(int l_length) {
        this.l_length = l_length;
    }

    public String getFigure() {
        return figure;
    }

    public void setFigure(String figure) {
        this.figure = figure;
    }

    public String getHair_style() {
        return hair_style;
    }

    public void setHair_style(String hair_style) {
        this.hair_style = hair_style;
    }

    public String getCharacter() {
        return character;
    }

    public void setCharacter(String character) {
        this.character = character;
    }

    public String getU_style() {
        return u_style;
    }

    public void setU_style(String u_style) {
        this.u_style = u_style;
    }

    public int getU_length() {
        return u_length;
    }

    public void setU_length(int u_length) {
        this.u_length = u_length;
    }

    public String getL_style() {
        return l_style;
    }

    public void setL_style(String l_style) {
        this.l_style = l_style;
    }

    public String getShoe_style() {
        return shoe_style;
    }

    public void setShoe_style(String shoe_style) {
        this.shoe_style = shoe_style;
    }

    public String getBehavior() {
        return behavior;
    }

    public void setBehavior(String behavior) {
        this.behavior = behavior;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getHat() {
        return hat;
    }

    public void setHat(String hat) {
        this.hat = hat;
    }

    public String getHair_color() {
        return hair_color;
    }

    public void setHair_color(String hair_color) {
        this.hair_color = hair_color;
    }

    public String getCollar() {
        return collar;
    }

    public void setCollar(String collar) {
        this.collar = collar;
    }

    public String getU_character() {
        return u_character;
    }

    public void setU_character(String u_character) {
        this.u_character = u_character;
    }

    public String getL_color() {
        return l_color;
    }

    public void setL_color(String l_color) {
        this.l_color = l_color;
    }

    public String getShoe_color() {
        return shoe_color;
    }

    public void setShoe_color(String shoe_color) {
        this.shoe_color = shoe_color;
    }
    //constructor
    public Person() {
    }
    @Override
    public String toString(){
        return (" id:"+id+" type:"+type+" skin color:"+skin_color+" scarf:"+scarf+" glasses:"+glasses
                +"\nupper color:"+u_color+" bag:"+bag+" lower lengh:"+l_length+" figure:"+figure
                +"\nhair style:"+ hair_style+" character:"+character+" upper style:"+u_style
                +"\nupper length:"+ u_length+" lower style:"+l_style+" shoe style:"+ shoe_style
                +"\nbehavior:"+behavior+" height:"+height+" hat:"+hat+" hair color:"+ hair_color
                +"\ncollar:"+collar+" upper chracter:"+u_character+" lower color:"+ l_color
                +"\nshoe color:"+shoe_color);
    }

}
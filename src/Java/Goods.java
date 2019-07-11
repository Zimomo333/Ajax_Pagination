/**
* @Classname: Goods
* @author Firedance
* @version 2018��5��27�� ����3:45:57
* 
*/
public class Goods {
	
	private Integer id;
	private String goods_name;
	private String goods_desc;
	private Integer price;
	private Integer cate_id;
	private Integer brand_id;
	private String cat_name;
	private String brand_name;
	
	
	public Goods(Integer id, String goods_name, String goods_desc, Integer price, Integer cate_id, Integer brand_id,
			String cat_name, String brand_name) {
		super();
		this.id = id;
		this.goods_name = goods_name;
		this.goods_desc = goods_desc;
		this.price = price;
		this.cate_id = cate_id;
		this.brand_id = brand_id;
		this.cat_name = cat_name;
		this.brand_name = brand_name;
	}
	public String getCat_name() {
		return cat_name;
	}
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_desc() {
		return goods_desc;
	}
	public void setGoods_desc(String goods_desc) {
		this.goods_desc = goods_desc;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getCate_id() {
		return cate_id;
	}
	public void setCate_id(Integer cate_id) {
		this.cate_id = cate_id;
	}
	public Integer getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(Integer brand_id) {
		this.brand_id = brand_id;
	}
	
	
	@Override
	public String toString() {
		return "Goods [id=" + id + ", goods_name=" + goods_name + ", goods_desc=" + goods_desc + ", price=" + price
				+ ", cate_id=" + cate_id + ", brand_id=" + brand_id + ", cat_name=" + cat_name + ", brand_name="
				+ brand_name + "]";
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(Integer id, String goods_name, String goods_desc, Integer price, Integer cate_id, Integer brand_id) {
		super();
		this.id = id;
		this.goods_name = goods_name;
		this.goods_desc = goods_desc;
		this.price = price;
		this.cate_id = cate_id;
		this.brand_id = brand_id;
	}
	
}
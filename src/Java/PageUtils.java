/**
* @Classname: PageUtils
* @author Firedance
* @version 2018��6��9�� ����11:53:28
* 
*/
public class PageUtils {
	private Integer currentPage;
	private Integer prePage;
	private Integer nextPage;
	private Integer lastPage;
	private Integer pageSize;
	private Integer counter;
	
	public PageUtils(String currentPage, Integer pageSize, Integer counter) {
		this.pageSize = pageSize;
		this.counter = counter;
		if(null==currentPage) {
			currentPage="1";
		}
		this.currentPage=Integer.parseInt(currentPage);
		lastPage=this.counter/this.pageSize;
		if(this.counter%this.pageSize !=0) {
			lastPage+=1;
		}
		nextPage=this.currentPage==lastPage?this.currentPage:this.currentPage+1;
		prePage=this.currentPage==1?this.currentPage:this.currentPage-1;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public PageUtils(Integer currentPage, Integer prePage, Integer nextPage, Integer lastPage, Integer pageSize) {
		super();
		this.currentPage = currentPage;
		this.prePage = prePage;
		this.nextPage = nextPage;
		this.lastPage = lastPage;
		this.pageSize = pageSize;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPrePage() {
		return prePage;
	}
	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}
	public Integer getNextPage() {
		return nextPage;
	}
	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}
	public Integer getLastPage() {
		return lastPage;
	}
	public void setLastPage(Integer lastPage) {
		this.lastPage = lastPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCounter() {
		return counter;
	}
	public void setCounter(Integer counter) {
		this.counter = counter;
	}
	
	
}

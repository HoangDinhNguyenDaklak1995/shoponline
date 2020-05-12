package poly.controller;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import poly.entity.*;


@Controller
@Transactional
public class HomeController {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	@SuppressWarnings("unchecked")
	@RequestMapping("index")
	public String index(ModelMap model, HttpSession httpsession,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 20;
		int tongsosale = 0, pageSize1 = 20;
		int tongsobc = 0, pageSize2 = 20;
		String hql = "FROM Products where status=1 ORDER BY createdate DESC";
		String sql = "FROM Products where status=1 and Saleprice >=1  ORDER BY Saleprice DESC";
		String tql = "FROM Products where status=1 and Numbers >=100 ORDER BY Numbers";
		Query query = session.createQuery(hql);
		Query query1 = session.createQuery(sql);
		Query query2 = session.createQuery(tql);
		tongso = query.list().size();
		tongsosale = query1.list().size();
		tongsobc = query2.list().size();
		
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		query1.setFirstResult(pageSize1 * (page - 1));
		query1.setMaxResults(pageSize1);
		query2.setFirstResult(pageSize2 * (page - 1));
		query2.setMaxResults(pageSize2);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		int pageCount1 = (tongsosale) / pageSize1 + (tongsosale % pageSize1 > 0 ? 1 : 0);
		int pageCount2 = (tongsobc) / pageSize2 + (tongsobc % pageSize2 > 0 ? 1 : 0);
		List<Products> list = query.list();
		List<Products> list1 = query1.list();
		List<Products> list2 = query2.list();
		model.addAttribute("sanpham", list);
		model.addAttribute("sanphamsale", list1);
		model.addAttribute("sanphambc", list2);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		model.addAttribute("pagesize1", pageSize1);
		model.addAttribute("pagecount1", pageCount1);
		model.addAttribute("pagesize2", pageSize2);
		model.addAttribute("pagecount2", pageCount2);
	return "index";
	}
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String getSearch(ModelMap model, HttpSession httpsession, @RequestParam("key") String key,
			@RequestParam(value = "page", defaultValue = "1") int page,@RequestParam(value = "page1", defaultValue = "1") int page1) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 10;
		int tongso1 = 0, pageSize1 = 10;
		String hql = "FROM Products  where status=1 AND name like '%" + key + "%' ORDER BY createdate DESC";
		String hql1 = "FROM News  where status=1 AND title like '%" + key + "%' OR sum_content like '%" + key
				+ "%' OR content_main like '%" + key + "%' ORDER BY createDate DESC";
		Query query = session.createQuery(hql);
		Query query1 = session.createQuery(hql1);
		try {
			if(key == null) {
				return "redirect:./index.htm";
			}else if(key.isEmpty()){
				return "redirect:./index.htm";
			}
		}catch (Exception e) {
			// TODO: handle exception
		} 
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		tongso1 = query1.list().size();
		query1.setFirstResult(pageSize1 * (page - 1));
		query1.setMaxResults(pageSize1);
		int pageCount1 = (tongso1) / pageSize1 + (tongso1 % pageSize1 > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		@SuppressWarnings("unchecked")
		List<News> list1 = query1.list();
		model.addAttribute("sanphamsearch", list);
		model.addAttribute("newssearch", list1);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		model.addAttribute("currentpage1", page1);
		model.addAttribute("pagesize1", pageSize1);
		model.addAttribute("pagecount1", pageCount1);
		return "timkiemsanpham";
	}
	@ModelAttribute("index")
	public String index1(ModelMap model, HttpSession httpsession,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 10;
		String hql = "FROM sanphamsale where trangthai=1 ORDER BY ngaydang DESC";
		String hql1 = "FROM sanphamchitiet where trangthai=1 ORDER BY ngaydang DESC";
		String tintuc = "FROM News where status=1 ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		Query query1 = session.createQuery(hql1);
		Query news = session.createQuery(tintuc);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<sanphamsale> list = query.list();
		@SuppressWarnings("unchecked")
		List<sanphamchitiet> list1 = query1.list();
		@SuppressWarnings("unchecked")
		List<News> news1 = news.list();
		model.addAttribute("tintucssss",news1);
		model.addAttribute("sanphamchitiet", list1);
		model.addAttribute("sanphamkhuyenmai", list);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
	return "index";
	}
	@RequestMapping("intro")
	public String intro() {
	return "nolayout/intro";
	}
	@ModelAttribute("danhmucsanphams")
	public List<Categoryproduct> getdanhmuc(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Categoryproduct";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Categoryproduct> list = query.list();
		application.setAttribute("danhmucsanpham", list);
		return list;
	}
	
	@RequestMapping("cart")
	public String cart() {
	return "cart";
	}
	@RequestMapping("single")
	public String single() {
	return "single";
	}
	@RequestMapping("product")
	public String product() {
	return "product";
	}
	@RequestMapping("NewFile")	
	public String NewFile() {
	return "NewFile";
	}
	@ModelAttribute("listuser")
	public List<Users> getUsers(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "from Users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Users> list = query.list();
		application.setAttribute("listuser", list);
		return list;
	}
	@ModelAttribute("toptintuc")
	public List<News> getTopTinTc(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM News where status=1 ORDER BY views DESC";
		Query query = session.createQuery(hql);
		query.setMaxResults(6);
		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		return list;
	}
	@ModelAttribute("topsanphamhot")
	public List<tintucmoi> topsanphamhot(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM tintucmoi";
		Query query = session.createQuery(hql);
		query.setMaxResults(6);
		@SuppressWarnings("unchecked")
		List<tintucmoi> list = query.list();
		return list;
	}
	@ModelAttribute("danhmucs")
	public List<Categoryproduct> getdanhmuc1(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Categoryproduct";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Categoryproduct> list = query.list();
		application.setAttribute("danhmucs", list);
		return list;
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "detail/{id}")
	public String single(ModelMap model, @PathVariable int id) {
		Session session = factory.getCurrentSession();
		Products product = (Products) session.get(Products.class, id);
		//danhgia
		sanphamchitiet sanphamchitiet = (sanphamchitiet) session.get(sanphamchitiet.class, id);
		sanphamsale sanphamsale = (sanphamsale) session.get(sanphamsale.class, id);
		Categoryproduct ca = (Categoryproduct) session.get(Categoryproduct.class, product.getCategoryproduct().getSubcategoryproduct());
		ThongSoKyThuat tskt = (ThongSoKyThuat) session.get(ThongSoKyThuat.class, id);
		model.addAttribute("tskt", tskt);
		model.addAttribute("details", product);
		model.addAttribute("chitiets", sanphamchitiet);
		model.addAttribute("sales", sanphamsale);
		model.addAttribute("cate", ca);
		String hql = "FROM Products where status=1 ORDER BY createdate DESC";
		String sql = "FROM Products where status=1 ORDER BY Saleprice DESC";
		String tql = "FROM Products where status=1 ORDER BY Numbers";
		String hqlr = "FROM DanhGia where Idproduct="+id;
		Query query = session.createQuery(hql);
		Query query1 = session.createQuery(sql);
		Query query2 = session.createQuery(tql);
		Query queryDG=session.createQuery(hqlr);		
		List<DanhGia> listDG= queryDG.list();
		model.addAttribute("danhgia",listDG);					
		List<Products> list = query.list();
		List<Products> list1 = query1.list();
		List<Products> list2 = query2.list();
		model.addAttribute("sanpham", list);
		model.addAttribute("sanphamsale", list1);
		model.addAttribute("sanphambc", list2);
		return "detail";
	}
	
	@RequestMapping(value = "loadmenu/{id}")
	public String loadmenu(HttpSession httpsession, @PathVariable int id) {
		Session session = factory.getCurrentSession();
		String sql = "FROM Products where Categoryproduct.id =:id";
		Query query = session.createQuery(sql);
		query.setParameter("id", id);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		application.setAttribute("loadproduct", list);
		return "loadmenu";
	}

}

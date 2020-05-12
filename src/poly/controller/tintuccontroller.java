package poly.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import poly.entity.*;



@Transactional
@Controller
@RequestMapping("/tintuc/")
public class tintuccontroller {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;
	@RequestMapping(value = "{link}/{id}")
	public String showCatelory(ModelMap model, @PathVariable("link") String link, @PathVariable("id") int id,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 5;
		CategoryNews cate = (CategoryNews) session.get(CategoryNews.class, id);
		String hql = "from News where status=1 AND idcategorynews=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", cate);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		model.addAttribute("newscate", list);
		model.addAttribute("catenews", cate);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		return "news";
	}
	@RequestMapping("newss")
	public String getAddNew1(ModelMap model) {
		Session session = factory.getCurrentSession();
		String sql = "FROM tintucmoi";
		Query query = session.createQuery(sql);
		@SuppressWarnings("unchecked")
		List<tintucmoi> list = query.list();
		application.setAttribute("newsss", list);
		return "user/newsss";
	}
	@RequestMapping("tintuc")
	public String blog2(ModelMap model, HttpSession httpsession,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 10;
		String hql = "FROM News ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		model.addAttribute("tintuc", new News());
		model.addAttribute("tintucs", list);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		return "nolayout/tintuc";
	}
	@ModelAttribute("tintucs")
	public List<News> getTinTc() {
		Session session = factory.getCurrentSession();
		String hql = "FROM News ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		return list;
	}
	@ModelAttribute("listcategory")
	public List<CategoryNews> getCategorys(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from CategoryNews";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CategoryNews> list = query.list();
		return list;
	}
	@RequestMapping("addnews")
	public String getAddNew(ModelMap model) {
		model.addAttribute("tintuc1", new News());
		return "nolayout/themtintuc";
	}
	@RequestMapping(value = "addnews", method = RequestMethod.POST)
	public String Addnew(ModelMap model, @RequestParam("title") String title, 
			@RequestParam("categorys") int iddanhmuc, @RequestParam("iduser") int iduser,
			@RequestParam("Sum_content") String Sum_content,
			@RequestParam("Content_main") String Content_main, @RequestParam("img") MultipartFile img)
			throws ParseException {
		Date today = new Date();
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = DATE_FORMAT.format(today);
		Session session = factory.openSession();
		CategoryNews categorys = (CategoryNews) session.get(CategoryNews.class, iddanhmuc);
		Users users = (Users) session.get(Users.class, iduser);
		String photoPath = context.getRealPath("/files/tintuc/" + img.getOriginalFilename());
		Date date1 = DATE_FORMAT.parse(date);
		String link = recaptcha.PreQueryString.toUrlFriendly(title);
		try {
			if (img.isEmpty()) {
				model.addAttribute("message", "Chọn File !");
				return "redirect:../tintuc/addnews.htm";
			} else {
				img.transferTo(new File(photoPath));
				News tintuc = new News(users, categorys, title, date1, Sum_content,Content_main, 
						 true, img.getOriginalFilename(), 0, iduser, date1, link);
				Transaction t = session.beginTransaction();
				try {
					session.save(tintuc);
					t.commit();
					model.addAttribute("message", "Thêm Tin Tức thành công !");
					return "redirect:../tintuc/tintuc.htm";
				} catch (Exception e) {
					t.rollback();
					model.addAttribute("message", "Thêm Tin Tức thất bại !");
				} finally {
					session.close();
				}
				model.addAttribute("message", "Thêm Tin Tức thành công !");
				return "nolayout/tintuc";
			}
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return "nolayout/tintuc";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String UpdateTintuc(ModelMap model, @RequestParam("Id") int Id,
			@RequestParam("title") String tieude, @RequestParam("link") String url,
			@RequestParam("Sum_content") String Sum_content, @RequestParam("radio2") Boolean status,
			@RequestParam("categorys") int iddanhmuc, @RequestParam("iduser") int iduser,@RequestParam("Content_main") String Content_main,
			@RequestParam("img") MultipartFile img) {
		Session session = factory.openSession();
		News tintuc = (News) session.get(News.class, Id);
		CategoryNews danhmuc = (CategoryNews) session.get(CategoryNews.class, iddanhmuc);

		String photoPath = context.getRealPath("/files/tintuc/" + img.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			img.transferTo(new File(photoPath));
			tintuc.setImg(img.getOriginalFilename());
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		tintuc.setTitle(tieude);
		tintuc.setLink(url);
		tintuc.setStatus(status);
		tintuc.setCategorys(danhmuc);
		tintuc.setIdusermodify(iduser);
		tintuc.setSum_content(Sum_content);
		tintuc.setContent_main(Content_main);
		try {
			session.update(tintuc);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../tintuc/tintuc.htm";
	}
	@RequestMapping(value = "edit/{id}")
	public String EditFormtt(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		News tintuc = (News) session.get(News.class, id);
		CategoryNews ca = (CategoryNews) session.get(CategoryNews.class, tintuc.getCategorys().getId());

		model.addAttribute("tintucedit", tintuc);
		model.addAttribute("cate", ca);
		return "nolayout/suatintuc";
	}
	@RequestMapping("deletetintuc/{idxoa}")
	public String Deletetintuc(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		News News = (News) session.get(News.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(News);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../tintuc.htm";
	}
	@RequestMapping("tintucmoi")
	public String themtintucmoi(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM tintucmoi";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<tintucmoi> list = query.list();
		model.addAttribute("tintucmo", new tintucmoi());
		model.addAttribute("tintucmois", list);
		return "nolayout/tintucmoi";
	}
	@RequestMapping("themtintucmoi")
	public String themtintucmoi(ModelMap model) {
		model.addAttribute("quankystin", new tintucmoi());
		return "nolayout/themtintucmoi";
	}
	@RequestMapping(value = "themtintucmoi", method = RequestMethod.POST)
	public String themtintucmoi(ModelMap model, @RequestParam("motangan") String motangan, @RequestParam("tieude") String tieude,
			@RequestParam("images") MultipartFile images
			,@RequestParam("images1") MultipartFile images1,@RequestParam("motaanh1") String motaanh1,
			@RequestParam("images2") MultipartFile images2,@RequestParam("motaanh2")String motaanh2,
			@RequestParam("images3") MultipartFile images3,@RequestParam("motaanh3")String motaanh3,
			@RequestParam("noidung")String noidung,@RequestParam("mota")String mota
			)throws ParseException {
		Session session = factory.openSession();
		tintucmoi tintucmoi = new tintucmoi(tieude, motangan, images.getOriginalFilename(), motaanh1, images1.getOriginalFilename(), motaanh2,
				images2.getOriginalFilename(), images3.getOriginalFilename(), motaanh3,noidung, mota);
		Transaction t = session.beginTransaction();
		try {
			if(motangan.isEmpty()) {
				model.addAttribute("message", "vui lòng Nhập tên !");
				return "redirect:../tintuc/themtintucmoi.htm";
			}
			session.save(tintucmoi);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
			return "redirect:../tintuc/tintucmoi.htm";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "nolayout/themtintucmoi";
	}
}

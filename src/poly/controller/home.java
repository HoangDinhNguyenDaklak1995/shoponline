package poly.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
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
import recaptcha.VerifyUtils;

@Transactional
@Controller
public class home {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	@RequestMapping("login")
	public String ShowForm() {
		return "login";
	}
	@RequestMapping("contact")
	public String contact() {
	return "contact";
	}
	@RequestMapping("detail")
	public String detail() {
	return "detail";
	}
	@ModelAttribute("danhmuctintuc")
	public List<CategoryNews> getdtintucs(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CategoryNews";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<CategoryNews> list = query.list();
		application.setAttribute("danhmuctintuc", list);
		return list;
	}
	@ModelAttribute("danhmucsanphamkm")
	public List<tintucmoi> danhmucsanphamkm(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM tintucmoi";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<tintucmoi> list = query.list();
		return list;
	}
	@RequestMapping(value = "{danhmuc}/{link}/{idtintuc}")
	public String showPost(ModelMap model, @PathVariable("danhmuc") String danhmuc, @PathVariable("link") String link,
			@PathVariable("idtintuc") int idtintuc,	@RequestParam(value = "page", defaultValue = "1") int page) {
		int tongso = 0, pageSize = 5;
		Session session = factory.getCurrentSession();
		News tintuc = (News) session.get(News.class, idtintuc);
		CategoryNews cate = (CategoryNews) session.get(CategoryNews.class, tintuc.getCategorys().getId());
		tintuc.setViews(tintuc.getViews() + 1);
		session.update(tintuc);
		String hql = "FROM News where status=1 AND Idcategorynews=:id  ORDER BY createdate DESC";
		String tintuc1 = "FROM News where status=1 ORDER BY createdate DESC";
		String hqlbl = "FROM BinhLuan where Idnews="+idtintuc+" order by Createdate DESC";
		String hqlrBL = "FROM BinhLuan where not subid=0";
		Query news = session.createQuery(tintuc1);
		Query query = session.createQuery(hql);
		Query querybl = session.createQuery(hqlbl);
		Query queryrbl = session.createQuery(hqlrBL);
		
		model.addAttribute("danhmuc",danhmuc);
		model.addAttribute("link",link);
		System.out.println("danh muc" + danhmuc);	
		List<BinhLuan> listbl= querybl.list();
		model.addAttribute("binhluan",listbl);
		List<BinhLuan> listrbl= querybl.list();
		model.addAttribute("binhluan2",listrbl);
		query.setParameter("id", cate);
		query.setMaxResults(6);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		@SuppressWarnings("unchecked")
		List<News> news1 = news.list();
		model.addAttribute("tintucssss",news1);
		model.addAttribute("cate", cate);
		model.addAttribute("tintuc", tintuc);
		model.addAttribute("tintuclq", list);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);		
		return "blog";
	}
	@RequestMapping("faq")
	public String faq() {
	return "faq";
	}
	
	@RequestMapping("tintuc")
	public String index(ModelMap model, HttpSession httpsession,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 5;
		String hql = "FROM News where status=1 ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);

		@SuppressWarnings("unchecked")
		List<News> list = query.list();
		model.addAttribute("News", list);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
	return "blog2";
	}
	@RequestMapping(value = "{link}/{id}")
	public String showCatelory(ModelMap model, @PathVariable("link") String link, @PathVariable("id") int id,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 5;
		Categoryproduct cate = (Categoryproduct) session.get(Categoryproduct.class, id);
		String hql = "from Products where status=1 AND idcategoryproduct=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", cate);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		model.addAttribute("tintuccate", list);
		model.addAttribute("cate", cate);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		return "grid";
	}
	@RequestMapping("register")
	public String ShowFormReg() {
		return "signup";
	}
	@RequestMapping("foruser")
	public String ShowFormuser() {
		return "user/forgotuser";
	}
	@RequestMapping("logout")
	public String Logout(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "redirect:index.htm";
	}
	@Autowired
	ServletContext context;
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String Register(ModelMap model, @RequestParam("email") String email, @RequestParam("pwdcf") String pwd,
			@RequestParam("fullname") String fullname,@RequestParam("username") String username, HttpSession httpsession,
			HttpServletRequest request) {
		Session session = factory.openSession();
		Users users1 = null;
		Roles userrole = (Roles) session.get(Roles.class, 6);
		EnDeCryption cryption = new EnDeCryption("Maynhingi");
		String passmahoa = cryption.encoding(pwd);
		Date date = new Date();
		Transaction t = session.beginTransaction();
		try {
			try {
				String hql = "from Users where email=:email";
				Query query = session.createQuery(hql);
				query.setParameter("email", email);
				users1 = (Users) query.uniqueResult();
				String email1 = users1.getEmail();
				if (email.equals(email1)) {
					model.addAttribute("message", "Email bạn đăng ký đã tồn tại !");
					return "signup";
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				Users user = new Users(fullname, email, passmahoa, date, true, userrole, "avarta.png",username);
				session.save(user);
				t.commit();
				model.addAttribute("message", "Đăng Kí thành công!");
				httpsession.setAttribute("user", user);
			}
		} catch (Exception e) {
			model.addAttribute("message", "Đăng kí thất bại!" + email + pwd + email);
		} finally {
			session.close();
		}
		return "redirect:index.htm";
	}

	public int countlogin = 0;
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @RequestParam("email") String email, @RequestParam("pwd") String pwd,
			HttpSession httpSession, HttpServletRequest request) {
		boolean valid = true;
		String errorString = null;
		Session session = factory.getCurrentSession();
		Users users = null;
		EnDeCryption cryption = new EnDeCryption("sadsad");
		String passmahoa = cryption.encoding(pwd);
		try {
			String hql = "from Users where Username=:email";
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			users = (Users) query.uniqueResult();
			if (!users.getPwd().equals(passmahoa)) {
				model.addAttribute("messagepwd", "Sai Mật khẩu !");
				countlogin++;
				model.addAttribute("countlogin", countlogin);
				return "login";
			}
			if (users.isIs_active() == false) {
				model.addAttribute("message", "Tài khoản của bạn đã bị khóa,vui lòng liên hệ để biết thông tin chi tiết");
				countlogin++;
				model.addAttribute("countlogin", countlogin);
				return "login";
			}		
			if (countlogin > 6) {
				if (valid) {
					String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
					System.out.println("gRecaptchaResponse=" + gRecaptchaResponse);
					// Verify CAPTCHA.
					valid = VerifyUtils.verify(gRecaptchaResponse);
					if (!valid) {
						errorString = "Captcha invalid!";
						countlogin++;
						model.addAttribute("countlogin", countlogin);
						return "login";
					}
				}
				if (!valid) {
					request.setAttribute("message", errorString);
					countlogin++;
					model.addAttribute("countlogin", countlogin);
					return "login";
				} else {
					httpSession.setAttribute("user", users);
					countlogin = 0;
				}
			}
			else {
				httpSession.setAttribute("user", users);
				countlogin = 0;
			}
		} catch (Exception e) {
			model.addAttribute("message", "Bạn chưa nhập tài khoản!");
			model.addAttribute("messagepwd", "Bạn chưa nhập mật khẩu");
			countlogin++;
			model.addAttribute("countlogin", countlogin);
			return "login";
		}
		return "redirect:index.htm";
	}
	@RequestMapping("account")
	public String account() {
	return "account";
	}
	//HÃ m liÃªn káº¿t dá»¯ liá»‡u(Hoangndpk00624)
	@RequestMapping(value = "editugrr/{id}")
	public String EditFormu(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		Users users = (Users) session.get(Users.class, id);
		model.addAttribute("userseditg", users);
		return "account";
	}
	// HÃ m sá»­a thÃ´ng tin cÃ¡ nhÃ¢n ngÆ°á»�i dÃ¹ng (Hoangndpk00624)
	@RequestMapping(value = "updateuserg", method = RequestMethod.POST)
	public String UpdateUser(ModelMap model, @RequestParam("fullname") String fullname,
			@RequestParam("email") String email,@RequestParam("address") String address
			,@RequestParam("phone") String phone,
			@RequestParam("id") int iduser
	) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, iduser);
		Transaction t = session.beginTransaction();
		user.setFullname(fullname);
		user.setAddress(address);
		user.setEmail(email);
		user.setPhone(phone);
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sữa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
			
		} finally {
			session.close();
		}
		return "account";
	}
	// HÃ m thay Ä‘á»•i máº­t kháº©u(Hoangndpk00624)
	@RequestMapping(value = "updateuserpwdg", method = RequestMethod.POST)
	public String UpdateUserPwd(ModelMap model,
			@RequestParam("id") int iduser, @RequestParam("pwdold") String pwdold,
			@RequestParam("pwdnew") String pwdnew, @RequestParam("pwdnewr") String pwdnewr
	) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, iduser);

		EnDeCryption cryption = new EnDeCryption("Ä‘iÃªn Ã ");
		String passmahoa = cryption.encoding(pwdold);
		String passmahoa1 = cryption.encoding(pwdnewr);
		Transaction t = session.beginTransaction();
		try {
			if (!user.getPwd().equals(passmahoa)) {
				model.addAttribute("message", "Mật khẩu cũ không đúng vui lòng nhập lại !");
				return "redirect:account.htm";
			} else {
				user.setPwd(passmahoa1);
				session.update(user);
				t.commit();
				model.addAttribute("message", "Chỉnh sửa thành công !");
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "account";
	}
	@RequestMapping(value = "updateuserimgg", method = RequestMethod.POST)
	public String UpdateUserImg(ModelMap model, @RequestParam("id") int iduser,
			@RequestParam("Img") MultipartFile images) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, iduser);
		String photoPath = context.getRealPath("/files/users/" + images.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			images.transferTo(new File(photoPath));
			user.setImg(images.getOriginalFilename());
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "account";
	}
	// Hàm kết nối ra ngoài

}



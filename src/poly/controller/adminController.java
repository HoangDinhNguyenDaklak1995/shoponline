package poly.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
@RequestMapping("/admin/")
public class adminController {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;

	@RequestMapping("error")
	public String error() {
		return "nolayout/eror";
	}

	@RequestMapping("admin-login")
	public String loginadmin(HttpSession httpSession) {
		return "nolayout/login-admin";
	}

	@RequestMapping("admin")
	public String admin(HttpSession httpSession) {
		return "nolayout/index";
	}

	@RequestMapping("logout")
	public String Logout(HttpSession httpSession) {
		httpSession.removeAttribute("useradmin");
		httpSession.removeAttribute("user");
		return "index";
	}

	@RequestMapping("sp")
	public String sp(HttpSession httpSession) {
		return "nolayout/sp";
	}

	@RequestMapping("tintuc")
	public String tintuc(HttpSession httpSession) {
		return "nolayout/tintuc";
	}

	@RequestMapping("user")
	public String user(HttpSession httpSession) {
		return "nolayout/user";
	}

	@RequestMapping("editu")
	public String editu(HttpSession httpSession) {
		return "nolayout/edituser";
	}

	@RequestMapping(value = "admin-login", method = RequestMethod.POST)
	public String login(ModelMap model, @RequestParam("email") String email, @RequestParam("pwd") String pwd,
			@RequestParam("iduser") int iduser, HttpSession httpSession, HttpServletRequest request) {
		Session session = factory.getCurrentSession();
		Users users = null;
		EnDeCryption cryption = new EnDeCryption("sda");
		String passmahoa = cryption.encoding(pwd);
		try {
			String hql = "from Users where email=:email AND id IN (1,2)";
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			users = (Users) query.uniqueResult();
			String p1 = users.getPwd();
			String passmahoa1 = cryption.decoding(p1);
			String passmahoa2 = cryption.encoding(passmahoa1 + "abc");
			if (!passmahoa.equals(passmahoa2)) {
				model.addAttribute("message", "Sai mật khẩu!");
				return "nolayout/login-admin";
			}
			if (users.isIs_active() == false) {
				model.addAttribute("message", "Tài khoản của bạn đã bị khóa");
				return "nolayout/login-admin";
			}
			httpSession.setAttribute("useradmin", users);
		} catch (Exception e) {
			model.addAttribute("message", "Sai thông tin tài khoản !");
			return "nolayout/login-admin";
		}
		return "redirect:admin.htm";
	}

	@RequestMapping("formuser")
	public String formuser(ModelMap model, HttpSession httpsession,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		Session session = factory.getCurrentSession();
		int tongso = 0, pageSize = 10;
		String hql = "from Users ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		tongso = query.list().size();
		query.setFirstResult(pageSize * (page - 1));
		query.setMaxResults(pageSize);
		int pageCount = (tongso) / pageSize + (tongso % pageSize > 0 ? 1 : 0);
		@SuppressWarnings("unchecked")
		List<Users> list = query.list();
		model.addAttribute("users", list);
		model.addAttribute("currentpage", page);
		model.addAttribute("pagesize", pageSize);
		model.addAttribute("pagecount", pageCount);
		return "nolayout/user";
	}

	@ModelAttribute("listuser")
	public List<Users> getUsers() {
		Session session = factory.getCurrentSession();
		String hql = "from Users";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Users> list = query.list();
		return list;
	}

	@ModelAttribute("listquyen")
	public List<Roles> getQuyen() {
		Session session = factory.getCurrentSession();
		String hql = "from Roles";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Roles> list = query.list();
		return list;
	}
	@ModelAttribute("listdoitac")
	public List<Doitac> getDoitac()  {
		Session session = factory.getCurrentSession();
		String hql = "from Doitac";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Doitac> list = query.list();
		return list;
	}
	@ModelAttribute("listloaisanpham")
	public List<Categoryproduct> getloaisanpham()  {
		Session session = factory.getCurrentSession();
		String hql = "from Categoryproduct";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Categoryproduct> list = query.list();
		return list;
	}

	@ModelAttribute("listnguoidung")
	public List<NguoiDung> getnguoiDungs() {
		Session session = factory.getCurrentSession();
		String hql = "from NguoiDung";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<NguoiDung> list = query.list();
		return list;
	}

	@RequestMapping("deleteu/{idxoa}")
	public String DeleteUser(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(user);
			t.commit();
			model.addAttribute("message", "Xóa dữ liệu thành công !");

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sủa thông tin thất bại!" + e.getMessage());
		} finally {
			session.close();
		}

		return "redirect:../user.htm";

	}

	@RequestMapping(value = "editu/{id}")
	public String editu(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		Users p = (Users) session.get(Users.class, id);
		model.addAttribute("usersedit", p);
		return "nolayout/edituser";
	}

	public Date getdate() throws ParseException {
		Date today = new Date();
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = DATE_FORMAT.format(today);
		Date date1 = DATE_FORMAT.parse(date);
		return date1;
	}

	@RequestMapping(value = "updateuser", method = RequestMethod.POST)
	public String edituser(ModelMap model, @RequestParam("id") int idu, @RequestParam("fullname") String fullname,
			@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("radio2") Boolean trangthai, @RequestParam("address") String address,
			@RequestParam("roles") int idroles, HttpSession httpSession) throws ParseException {
		Session session = factory.openSession();
		Roles roles = (Roles) session.get(Roles.class, idroles);
		Users u = (Users) session.get(Users.class, idu);
		@SuppressWarnings("unused")
		Date date2 = getdate();
		u.setFullname(fullname);
		u.setUsername(username);
		u.setIs_active(trangthai);
		u.setEmail(email);
		u.setAddress(address);
		u.setRoles(roles);
		Transaction t = session.beginTransaction();
		try {
			session.update(u);
			t.commit();
			model.addAttribute("message", "Sửa thông tin thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sữa dữ liệu thất bại !" + e.getMessage());
			httpSession.setAttribute("uu", "Sửa thông tin thành công");
		} finally {
			session.close();
		}
		return "redirect:../admin/user.htm";
	}

	@RequestMapping(value = "updateuserimg", method = RequestMethod.POST)
	public String UpdateUserImg(ModelMap model, @RequestParam("id") int iduser,
			@RequestParam("img") MultipartFile images) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, iduser);

		String photoPath = context.getRealPath("/files/users/" + images.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			images.transferTo(new File(photoPath));
			user.setImg(images.getOriginalFilename());
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thông tin thành công!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại!" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../admin/user.htm";
	}

	@RequestMapping(value = "updateuserpwd", method = RequestMethod.POST)
	public String UpdateUserPwd(ModelMap model, @RequestParam("id") int iduser, @RequestParam("pwdold") String pwdold,
			@RequestParam("pwdnew") String pwdnew, @RequestParam("pwdnewr") String pwdnewr) {
		Session session = factory.openSession();
		Users user = (Users) session.get(Users.class, iduser);
		EnDeCryption cryption = new EnDeCryption("sdas");
		String passmahoa = cryption.encoding(pwdold);
		String passmahoa1 = cryption.encoding(pwdnewr);
		Transaction t = session.beginTransaction();
		try {
			if (!user.getPwd().equals(passmahoa)) {
				model.addAttribute("message", "Mật khẩu cũ không chính xác!");
			} else {
				user.setPwd(passmahoa1);
				session.update(user);
				t.commit();
				model.addAttribute("message", "Chỉnh sửa thành công!");
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../admin/user.htm";
	}
	@RequestMapping("sanpham")
	public String getTinTc1(ModelMap model, HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Products ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		model.addAttribute("sanpham", new Products());
		model.addAttribute("sanphams", list);
		return "nolayout/sanpham";
	}
	@ModelAttribute("sanphams")
	public List<Products> getTinTc() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Products ORDER BY createdate DESC";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		return list;
	}
	@RequestMapping("themsanpham")
	public String getAddNew(ModelMap model) {
		model.addAttribute("sanpham1", new Products());
		return "nolayout/themsanpham";
	}
	@RequestMapping(value = "themsanpham", method = RequestMethod.POST)
	public String Addnewsanpham(ModelMap model,@RequestParam("doitac") int doitac, @RequestParam("name") String name,
			@RequestParam("Categoryproduct") int iddanhmuc, @RequestParam("iduser") int iduser,
			@RequestParam("price") int price, @RequestParam("gianhap") int gianhap,@RequestParam("Id") int idthongso,
			@RequestParam("saleprice") int saleprice, @RequestParam("numbers") int numbers,
			@RequestParam("img") MultipartFile images,@RequestParam("img1") MultipartFile images1
			,@RequestParam("img2") MultipartFile images2,@RequestParam("img3") MultipartFile images3) 
					throws ParseException {
         Products Products = null;
         Date today = new Date();
  		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  		String date = DATE_FORMAT.format(today);
  		Session session = factory.openSession();
  		ThongSoKyThuat ThongSoKyThuat = (ThongSoKyThuat) session.get(ThongSoKyThuat.class, idthongso);
  		Categoryproduct categorys = (Categoryproduct) session.get(Categoryproduct.class, iddanhmuc);
  		Doitac doitac2 = (Doitac) session.get(Doitac.class, doitac);
  		Users users = (Users) session.get(Users.class, iduser);
		String photoPath = context.getRealPath("/files/sanpham/" + images.getOriginalFilename());
		String photoPath1 = context.getRealPath("/files/sanpham/" + images1.getOriginalFilename());
		String photoPath2 = context.getRealPath("/files/sanpham/" + images2.getOriginalFilename());
		String photoPath3 = context.getRealPath("/files/sanpham/" + images3.getOriginalFilename());
		Date date1 = DATE_FORMAT.parse(date);
		try {
			try {
				if(name.isEmpty()) {
					model.addAttribute("messagesanpham", "vui lòng Nhập tên sản phẩm !");
					return "redirect:../admin/sanpham.htm";
				}
				String hql = "from Products where name=:name";
				Query query = session.createQuery(hql);
				query.setParameter("name", name);
				Products = (Products) query.uniqueResult();
				String name1 = Products.getName();
				if (name.equals(name1)) {
					model.addAttribute("messagesanpham", "Tên sản phẩm đã tồn tại !");
					return "redirect:../admin/sanpham.htm";
				}
			} catch (Exception e) {
				if (name.isEmpty()) {
					model.addAttribute("messagesanpham", "Chọn File !");
					return "nolayout/themsanpham";
				} else {
					images.transferTo(new File(photoPath));
					images1.transferTo(new File(photoPath1));
					images2.transferTo(new File(photoPath2));
					images3.transferTo(new File(photoPath3));
					Products Products1 = new Products(users, doitac2, categorys, ThongSoKyThuat, name, price, gianhap, saleprice,
							images.getOriginalFilename(), images1.getOriginalFilename(), images2.getOriginalFilename(), 
							images3.getOriginalFilename(), true, date1, numbers);
					Transaction t = session.beginTransaction();
					try {
						session.save(Products1);
						t.commit();
						model.addAttribute("messagesanpham", "Thêm sản phẩm thành công !");
						return "redirect:../admin/sanpham.htm";
					} catch (Exception ex) {
						t.rollback();
						model.addAttribute("messagesanpham", "Thêm sản phẩm thất bại !");
					} finally {
						session.close();
					}
					model.addAttribute("messagesanpham", "Thêm sản phẩm thành công !");
					return "redirect:../admin/sanpham.htm";
				}
			}
		
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		return "nolayout/sanpham";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String UpdateTintuc(ModelMap model, @RequestParam("id") int idsanpham,
			@RequestParam("name") String name, @RequestParam("radio2") Boolean trangthai,
			@RequestParam("Categoryproduct") int iddanhmuc, 
			@RequestParam("price") int price, @RequestParam("gianhap") int gianhap,
			@RequestParam("saleprice") int saleprice, @RequestParam("numbers") int numbers,@RequestParam("doitac") int doitac,
			@RequestParam("img") MultipartFile images,@RequestParam("img1") MultipartFile images1
			,@RequestParam("img2") MultipartFile images2,@RequestParam("img3") MultipartFile images3) {
		Session session = factory.openSession();
		Products sanpham = (Products) session.get(Products.class, idsanpham);
		Categoryproduct danhmuc = (Categoryproduct) session.get(Categoryproduct.class, iddanhmuc);
        Doitac doitac2 = (Doitac) session.get(Doitac.class, doitac);
		String photoPath = context.getRealPath("/files/sanpham/" + images.getOriginalFilename());
		String photoPath1 = context.getRealPath("/files/sanpham/" + images1.getOriginalFilename());
		String photoPath2 = context.getRealPath("/files/sanpham/" + images2.getOriginalFilename());
		String photoPath3 = context.getRealPath("/files/sanpham/" + images3.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			images.transferTo(new File(photoPath));
			sanpham.setImg(images.getOriginalFilename());
			images1.transferTo(new File(photoPath1));
			sanpham.setImg1(images1.getOriginalFilename());
			images2.transferTo(new File(photoPath2));
			sanpham.setImg2(images2.getOriginalFilename());
			images3.transferTo(new File(photoPath3));
			sanpham.setImg3(images3.getOriginalFilename());
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		sanpham.setDoitac(doitac2);
		sanpham.setName(name);
		sanpham.setGianhap(gianhap);
		sanpham.setStatus(trangthai);
		sanpham.setCategoryproduct(danhmuc);	
		sanpham.setNumbers(numbers);
		sanpham.setSaleprice(saleprice);
		try {
			session.update(sanpham);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../admin/sanpham.htm";
	}
	@RequestMapping("editsanpham")
	public String editsanpham(HttpSession httpSession) {
		return "nolayout/editsanpham";
	}
	@RequestMapping(value = "editsanpham/{id}")
	public String EditFormtt(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Products products = (Products) session.get(Products.class, id);
		Categoryproduct ca = (Categoryproduct) session.get(Categoryproduct.class, products.getCategoryproduct().getSubcategoryproduct());
		model.addAttribute("sanphamedit", products);
		model.addAttribute("cate", ca);
		return "nolayout/editsanpham";
	}
	public List<Products> GetAlltintuc() {
		Session session = factory.getCurrentSession();
		String hql = "from Products";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Products> list = query.list();
		return list;
	}
	@RequestMapping("deletesanpham/{idxoa}")
	public String DeleteTintuc(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		Products Products = (Products) session.get(Products.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(Products);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại!" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../sanpham.htm";
	}
}

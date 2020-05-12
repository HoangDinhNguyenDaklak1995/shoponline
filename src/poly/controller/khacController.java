package poly.controller;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.entity.*;

@Transactional
@Controller
@RequestMapping("/khac/")
public class khacController {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	// Nhập danh sách quyền từ entity và kết nối (Hoangndpk00624)
	@RequestMapping("doitac")
	public String Doitac(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Doitac";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Roles> list = query.list();
		model.addAttribute("Doitacs", list);
		return "nolayout/doitac";
	}
	@Transactional
	@RequestMapping(value = "themdoitac", method = RequestMethod.POST)
	public String doitac(ModelMap model, @RequestParam("name") String name, @RequestParam("address") String address,
			@RequestParam("phone") String phone,@RequestParam("Description") String Description, @RequestParam("iduser") int iduser
			)throws ParseException {
		Session session = factory.openSession();
		Users users = (Users) session.get(Users.class, iduser);
		Doitac user = new Doitac(users, name, address, phone, Description);
		Transaction t = session.beginTransaction();
		try {
			if(name.isEmpty()) {
				model.addAttribute("message", "vui lòng Nhập tên !");
				return "redirect:../khac/themdoitac.htm";
			}
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
			return "redirect:../khac/doitac.htm";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "nolayout/themdoitac";
	}
	@RequestMapping("themdoitac")
	public String getdoitac(ModelMap model) {
		model.addAttribute("doitac1", new Doitac());
		return "nolayout/themdoitac";
	}
	@RequestMapping(value = "updatedoitac", method = RequestMethod.POST )
	public String Updatedoitac(ModelMap model, 
			@RequestParam("iddoitac") int iddoitac, @RequestParam("name") String name, @RequestParam("address") String address,
			@RequestParam("phone") String phone,@RequestParam("Description") String Description, @RequestParam("iduser") int iduser){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Doitac user = (Doitac) session.get(Doitac.class,iddoitac);
		user.setName(name);
		user.setAddress(address);
		user.setDescription(Description);
		user.setPhone(phone);
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		}
		finally {
			session.close();
		}
		return "redirect:../khac/doitac.htm";
	}
	@RequestMapping("suadoitac")
	public String suaDoitac(HttpSession httpSession) {
		return "nolayout/suadoitac";
	}
	@RequestMapping(value = "editdoitac/{id}")
	public String EditFormttDoitac(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Doitac tintuc = (Doitac) session.get(Doitac.class, id);
		model.addAttribute("Doitacedit", tintuc);
		return "nolayout/suadoitac";
	}
	@RequestMapping("deletedoitac/{idxoa}")
	public String DeleteDoitac(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		Doitac sanphamsale = (Doitac) session.get(Doitac.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(sanphamsale);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Xóa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../doitac.htm";
	}
	@Transactional
	// Nhập danh sách quyền từ entity và kết nối (Hoangndpk00624)
	@RequestMapping("quyenhan")
	public String ShowList(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Roles";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Roles> list = query.list();
		model.addAttribute("roless", list);
		return "nolayout/quyenhan";
	}
	@RequestMapping("themquyenhan")
	public String getAddNew(ModelMap model) {
		model.addAttribute("quyenhan1", new Roles());
		return "nolayout/themquyenhan";
	}
	// thêm quyền (Hoangndpk00624)
	@Transactional
	@RequestMapping(value = "themquyenhan", method = RequestMethod.POST)
	public String Register2(ModelMap model, @RequestParam("name") String name, @RequestParam("description") String description) {
		Session session = factory.openSession();
		Roles user = new Roles(name, description);
		Transaction t = session.beginTransaction();
		try {
			if(name.isEmpty()) {
				model.addAttribute("message", "vui lòng Nhập tên !");
				return "redirect:../khac/themquyenhan.htm";
			}
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
			return "redirect:../khac/quyenhan.htm";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "nolayout/quyenhan";
	}
	@RequestMapping(value = "update", method = RequestMethod.POST )
	public String UpdateUser(ModelMap model, 
			@RequestParam("Idroles") int Idroles,
			 @RequestParam("name") String name, @RequestParam("description") String description){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Roles user = (Roles) session.get(Roles.class,Idroles);
		user.setName(name);
		user.setDescription(description);
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		}
		finally {
			session.close();
		}
		return "redirect:../khac/quyenhan.htm";
	}
	@RequestMapping("suaquyenhan")
	public String suasanphamchitiet(HttpSession httpSession) {
		return "nolayout/suaquyenhan";
	}
	@RequestMapping(value = "edit/{id}")
	public String EditFormtt(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Roles tintuc = (Roles) session.get(Roles.class, id);
		model.addAttribute("rolesedit", tintuc);
		return "nolayout/suaquyenhan";
	}
	@RequestMapping("deleteroles/{idxoa}")
	public String Deletesanphamchitietc(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		Roles sanphamsale = (Roles) session.get(Roles.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(sanphamsale);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../quyenhan.htm";
	}
	@RequestMapping("themsanpham")
	public String themsanpham(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from Categoryproduct";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Categoryproduct> list = query.list();
		model.addAttribute("themsanphams", list);
		return "nolayout/loaisanpham";
	}
	@RequestMapping("themloaisanpham")
	public String getAddNew1(ModelMap model) {
		model.addAttribute("quyenhan1", new Categoryproduct());
		return "nolayout/themloaisanpham";
	}
	// thêm loại sản phẩm(Hoangndpk00624)
	@Transactional
	@RequestMapping(value = "themloaisanpham", method = RequestMethod.POST)
	public String themloaisanpham(ModelMap model, @RequestParam("Name") String Name, @RequestParam("Subcategoryproduct") int Subcategoryproduct,
			@RequestParam("Url") String Url,@RequestParam("Status") String Status) throws ParseException {
		Session session = factory.openSession();
		Date today = new Date();
		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = DATE_FORMAT.format(today);
		Date date1 = DATE_FORMAT.parse(date);
		Categoryproduct user = new Categoryproduct(Name, Subcategoryproduct, Url, date1, Status);
		Transaction t = session.beginTransaction();
		try {
			if(Name.isEmpty()) {
				model.addAttribute("message", "vui lòng Nhập tên loại !");
				return "redirect:../khac/themsanpham.htm";
			}
			session.save(user);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
			return "redirect:../khac/themsanpham.htm";
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "nolayout/loaisanpham";
	}
	@RequestMapping(value = "sualoaisanpham", method = RequestMethod.POST )
	public String Updateloai(ModelMap model, 
			@RequestParam("Id") int Id, @RequestParam("Name") String Name, @RequestParam("Subcategoryproduct") int Subcategoryproduct,
			@RequestParam("Url") String Url,@RequestParam("Status") String Status){
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Categoryproduct user = (Categoryproduct) session.get(Categoryproduct.class,Id);
		user.setName(Name);
		user.setStatus(Status);
		user.setUrl(Url);
		try {
			session.update(user);
			t.commit();
			model.addAttribute("message", "Chỉnh sửa thành công !");
			return "redirect:../khac/themsanpham.htm";
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		}
		finally {
			session.close();
		}
		return "redirect:../khac/themsanpham.htm";
	}
	@RequestMapping("sualoaisanpham")
	public String sualoai(HttpSession httpSession) {
		return "nolayout/sualoaisanpham";
	}
	@RequestMapping(value = "editloaisanpham/{id}")
	public String EditFormt(ModelMap model, @PathVariable("id") Integer id) {
		Session session = factory.getCurrentSession();
		Categoryproduct tintuc = (Categoryproduct) session.get(Categoryproduct.class, id);
		model.addAttribute("loaisanphamedit", tintuc);
		return "nolayout/sualoaisanpham";
	}
	@RequestMapping("deleteloaisp/{idxoa}")
	public String Deletesanphamchitiec(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		Categoryproduct sanphamsale = (Categoryproduct) session.get(Categoryproduct.class, idxoa);
		Transaction t = session.beginTransaction();
		try {
			session.delete(sanphamsale);
			t.commit();
			model.addAttribute("message", "Xóa thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../themsanpham.htm";
	}
}

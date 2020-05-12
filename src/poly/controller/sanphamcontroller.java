package poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
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
import org.springframework.web.multipart.MultipartFile;

import poly.entity.*;

@Transactional
@Controller
@RequestMapping("/sanpham/")
public class sanphamcontroller {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;
	@RequestMapping(value = "updatesanphamchitiet", method = RequestMethod.POST)
	public String Updatesp(ModelMap model,@RequestParam("Tensanphamchitet") String Tensanphamchitet, 
			@RequestParam("giabanchitiet") int giabanchitiet, @RequestParam("giamgiachitiet") int giamgiachitiet,
			@RequestParam("img") MultipartFile img,@RequestParam("radio2")boolean Trangthai,
			@RequestParam("soluongchitiet") int soluongchitiet,@RequestParam("idchitiet") int idchitiet
			,@RequestParam("Noidung") String Noidung
			,@RequestParam("Noidunglon") String Noidunglon){
		Session session = factory.openSession();
		sanphamchitiet sanpham = (sanphamchitiet) session.get(sanphamchitiet.class, idchitiet);
		String photoPath = context.getRealPath("/files/sanpham/" + img.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			img.transferTo(new File(photoPath));
			sanpham.setImg(img.getOriginalFilename());
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		sanpham.setTensanphamchitet(Tensanphamchitet);
		sanpham.setGiabanchitiet(giabanchitiet);
		sanpham.setGiamgiachitiet(giamgiachitiet);
		sanpham.setSoluongchitiet(soluongchitiet);
		sanpham.setTrangthai(Trangthai);
		sanpham.setNoidung(Noidung);
		sanpham.setNoidunglon(Noidunglon);
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
		return "redirect:../sanpham/sanphamchitiet.htm";
	}
	@RequestMapping(value = "editsanphamchitiet/{id}")
	public String editsp(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		sanphamchitiet p = (sanphamchitiet) session.get(sanphamchitiet.class, id);
		model.addAttribute("sanphamchitietsedit", p);
		return "nolayout/suasanphamchitiet";
	}
	public List<sanphamchitiet> sanphamchitiet() {
		Session session = factory.getCurrentSession();
		String hql = "from sanphamchitiet";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<sanphamchitiet> list = query.list();
		return list;
	}
	@RequestMapping("deletesanphamchitiet/{idxoa}")
	public String Deletesanphamchitietc(ModelMap model, @PathVariable("idxoa") int idxoa) {
		Session session = factory.openSession();
		sanphamchitiet sanphamsale = (sanphamchitiet) session.get(sanphamchitiet.class, idxoa);
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
		return "redirect:../sanphamchitiet.htm";
	}
	@RequestMapping(value = "updatesanpham", method = RequestMethod.POST)
	public String UpdateTintuc(ModelMap model,@RequestParam("tensanphamsale") String tensanphamsale, 
			@RequestParam("giabansale") int giabansale, @RequestParam("giamgiasale") int giamgiasale,
			@RequestParam("anhsanphamsale") MultipartFile anhsanphamsale,
			@RequestParam("soluongsale") int soluongsale,@RequestParam("id") int id,@RequestParam("noidungsale") String noidungsale,
			@RequestParam("Noidung") String Noidung
			,@RequestParam("Noidunglon") String Noidunglon){
		Session session = factory.openSession();
		sanphamsale sanpham = (sanphamsale) session.get(sanphamsale.class, id);
		String photoPath = context.getRealPath("/files/sanpham/" + anhsanphamsale.getOriginalFilename());
		Transaction t = session.beginTransaction();
		try {
			anhsanphamsale.transferTo(new File(photoPath));
			sanpham.setAnhsanphamsale(anhsanphamsale.getOriginalFilename());
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		sanpham.setTensanphamsale(tensanphamsale);
		sanpham.setGiabansale(giabansale);	
		sanpham.setGiamgiasale(giamgiasale);
		sanpham.setSoluongsale(soluongsale);
		sanpham.setNoidungsale(noidungsale);
		sanpham.setNoidung(Noidung);
		sanpham.setNoidunglon(Noidunglon);
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
		return "redirect:../sanpham/sanphamsale.htm";
	}
	@RequestMapping(value = "editsanpham/{id}")
	public String editu(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		Products p = (Products) session.get(Products.class, id);
		model.addAttribute("sanphamsedit", p);
		return "nolayout/editsanpham";
	}
	public List<Products> GetAllsanphamsale() {
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
			model.addAttribute("message", "Chỉnh sửa thất bại !" + e.getMessage());
		} finally {
			session.close();
		}
		return "redirect:../sanpham.htm";
	}
}

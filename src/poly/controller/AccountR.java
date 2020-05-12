package poly.controller;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.types.User;

import poly.entity.BinhLuan;
import poly.entity.Categoryproduct;
import poly.entity.DanhGia;
import poly.entity.Doitac;
import poly.entity.News;
import poly.entity.Products;
import poly.entity.Roles;
import poly.entity.ThongSoKyThuat;
import poly.entity.Users;

@Controller
@Transactional
public class AccountR {
	@Autowired
	ServletContext application;
	@Autowired
	SessionFactory factory;
	private static final HttpTransport TRANSPORT = new NetHttpTransport();
    private static final JsonFactory JSON_FACTORY = new JacksonFactory();
    
    
	@RequestMapping(value="/signin-google",method=RequestMethod.POST)
    // Đăng nhập bằng google
    public String signingoogle(@RequestBody String idtoken, HttpSession httpSession   ) {
        System.out.println("idtoken :" + idtoken);

        GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(TRANSPORT, JSON_FACTORY)
                .setAudience(Collections
                        .singletonList("15786562009-dn9luosgbn6itt60r4pg3vuq56gju1n6.apps.googleusercontent.com"))
                // Or, if multiple clients access the backend:
                // .setAudience(Arrays.asList(CLIENT_ID_1, CLIENT_ID_2, CLIENT_ID_3))
                .build();

        GoogleIdToken idToken;
        Users user = null;
        Session session = factory.openSession();
        try {
        	
        	Transaction t = session.beginTransaction();
            idToken = verifier.verify(idtoken);
            if (idToken != null) {
                Payload payload = idToken.getPayload();

                // Print user identifier
                String userId = payload.getSubject();
                System.out.println("User ID: " + userId);

                // Get profile information from payload
                String email = payload.getEmail();
                
                //mahoa
                EnDeCryption cryption = new EnDeCryption("Maynhingi");
                String passmahoa = cryption.encoding("123456");
                
                boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
                String name = (String) payload.get("name");
                String pictureUrl = (String) payload.get("picture");
                String locale = (String) payload.get("locale");
                String familyName = (String) payload.get("family_name");
                String givenName = (String) payload.get("given_name");
                System.out.println("GOOOGLE NEF : " + givenName +"--"+ familyName
                		+ pictureUrl + givenName );
                String hql="from Users where Username ='"+userId+"'";
                Query query = session.createQuery(hql);
                user = (Users) query.uniqueResult();
                if (user == null) {
                    user = new Users();
                    user.setUsername(userId);
                    user.setPwd(passmahoa);
                    user.setEmail(email);
                    user.setFullname(name);
                    user.setGoogleID(userId);
                    user.setImg(pictureUrl);
                    user.setIs_active(true);
                    user.setCreatedate(new Date());
                    Roles roles = (Roles) session.get(Roles.class, 6);
                    user.setRoles(roles);
    				session.save(user);
    				t.commit();
                }

                httpSession.setAttribute("user", user);
            } else {
                System.out.println("Invalid ID token.");

            }
        } catch (GeneralSecurityException e) {
            // TODO Auto-generated catch block
        	System.out.println(e.getMessage()+"1");
            e.printStackTrace();

        } catch (IOException e) {
            // TODO Auto-generated catch block
        	System.out.println(e.getMessage()+"2");
            e.printStackTrace();

        }
        return "index";
        
    }

    @RequestMapping("/signin-facebook")

    // Đăng Nhập bằng facebook
    public  String signinFacebook(@RequestBody String accessToken, HttpSession httpSession){
        System.out.println("THU ACE BOOK NEG : " +accessToken);
        FacebookClient fbClient = new DefaultFacebookClient(accessToken);
        User me = fbClient.fetchObject("me", User.class,
                Parameter.with("fields", "picture,first_name,last_name,gender,name,email"));

      //mahoa
        EnDeCryption cryption = new EnDeCryption("Maynhingi");
        String passmahoa = cryption.encoding("123456");
        
        System.out.println("MAIL :" +me.getPicture().getUrl() +me.getId()+me.getName()+me.getFirstName()
        +me.getEmail()+me.getLastName()+me.getAbout()+me.getBio()+me.getBirthday()
        +me.getGender()+me.getHometownName()+me.getHometown()+me.getLink()+me.getLocale());
        Users user = null;
        Session session = factory.openSession();
    	Transaction t = session.beginTransaction();
        try {
        	String hql="from Users where Username ='"+me.getId()+"'";
            Query query = session.createQuery(hql);
            user = (Users) query.uniqueResult();
            if (user == null) {
                user = new Users();
                user.setUsername(me.getId());
                user.setPwd(passmahoa);
                user.setFacebookid(me.getId());
                user.setEmail(me.getEmail());
                user.setFullname(me.getLastName()+" "+me.getFirstName());
                user.setImg(me.getPicture().getUrl());
                user.setIs_active(true);
                user.setCreatedate(new Date());
                Roles roles = (Roles) session.get(Roles.class, 6);
                user.setRoles(roles);
				session.save(user);
				t.commit();
				
            }
            httpSession.setAttribute("user", user);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return "index";
    }
    
    
    //danh gia
    @RequestMapping(value="danhgia", method = RequestMethod.POST)
    public String Adddanhgia(ModelMap model,@RequestParam("userID") int uid,@RequestParam("idsp") int idsp,@RequestParam("content") String noidung,
    		@RequestParam(value="rating", defaultValue="1") int diem) 
					throws ParseException {
         Date today = new Date();
  		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  		String date = DATE_FORMAT.format(today);
  		Session session = factory.openSession();
  		Users users = (Users) session.get(Users.class, uid);
		Date date1 = DATE_FORMAT.parse(date);
		Products sp= (Products) session.get(Products.class, idsp);
		System.out.println(noidung+diem);
		try {
			try {
				if(noidung.isEmpty()) {
					model.addAttribute("messagesanpham", "vui lòng nội dung !");
					return "redirect:/detail/"+idsp+".html";
				} else {
					DanhGia dg= new DanhGia(sp, users, diem, date1, noidung);
					Transaction t = session.beginTransaction();
					try {
						session.save(dg);
						t.commit();
						model.addAttribute("messagesanpham", "Đã đăng đánh giá !");
						return "redirect:/detail/"+idsp+".html";
					} catch (Exception ex) {
						t.rollback();
						model.addAttribute("messagesanpham", "Thêm sản phẩm thất bại !");
					} finally {
						session.close();
					}
				}
			} catch (Exception e) {
				
			}
		
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} 
		return "redirect:/detail/"+idsp+".html";
	}
    
    //binhluan
    @RequestMapping(value="binhluan", method = RequestMethod.POST)
    public String Addcmt(ModelMap model,@RequestParam("userID") int uid,@RequestParam("idbv") int idbv,
    		@RequestParam("content") String noidung, @RequestParam(value="subid", defaultValue="0") int subid,
    		@RequestParam("danhmuc") String danhmuc, @RequestParam("link") String link)
		throws ParseException {
         Date today = new Date();
  		SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  		String date = DATE_FORMAT.format(today);
  		Session session = factory.openSession();
  		Users users = (Users) session.get(Users.class, uid);
  		News news=(News) session.get(News.class, idbv);
  		
		Date date1 = DATE_FORMAT.parse(date);
		System.out.println(noidung+idbv+uid);
		System.out.println("subid "+ subid);
		System.out.println("danh muc" + danhmuc+"link: "+link);
		try {
			try {
				if(noidung.isEmpty()) {
					model.addAttribute("messagesanpham", "vui lòng nội dung !");
					return "redirect:/"+danhmuc+"/"+link+"/"+idbv+".htm";
				} else {
					BinhLuan bl=new BinhLuan(users, 0, news, null, noidung, date1, true, null, subid);
					Transaction t = session.beginTransaction();
					try {
						session.save(bl);
						t.commit();
						model.addAttribute("messagesanpham", "Đã đăng bình luận !");
						return "redirect:/"+danhmuc+"/"+link+"/"+idbv+".htm";
					} catch (Exception ex) {
						t.rollback();
						model.addAttribute("messagesanpham", "Thêm bình luận thất bại !");
					} finally {
						session.close();
					}
				}
			} catch (Exception e) {
				
			}
		
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} 
		return "redirect:/"+danhmuc+"/"+link+"/"+idbv+".htm";
	}
}

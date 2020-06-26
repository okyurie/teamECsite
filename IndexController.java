package jp.co.internous.react.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import jp.co.internous.react.model.domain.MstCategory;
import jp.co.internous.react.model.domain.MstProduct;
import jp.co.internous.react.model.form.SearchForm;
import jp.co.internous.react.model.mapper.MstCategoryMapper;
import jp.co.internous.react.model.mapper.MstProductMapper;
import jp.co.internous.react.model.session.LoginSession;

@Controller
@RequestMapping("/react")
public class IndexController {
	
	@Autowired
	MstCategoryMapper mstCategoryMapper;
	
	@Autowired
	MstProductMapper mstProductMapper;
	
	@Autowired
	protected LoginSession loginSession;
	
	Gson gson = new Gson();

	@RequestMapping("/")
	public String index(Model m) {
		
		if (!loginSession.isLogined() && loginSession.getTmpUserId() == 0) {
			long tmpUserId = (long)(Math.random() * 1000000000 * -1);
			while(tmpUserId > -100000000) {
			tmpUserId  = tmpUserId * 10;
			}
			loginSession.setTmpUserId(tmpUserId);
		}
		
		m.addAttribute("loginSession", loginSession);
			
		List<MstCategory> categories = mstCategoryMapper.findAll();
		m.addAttribute("categories",categories);
		m.addAttribute("selected", 0);
		
		List<MstProduct> products = mstProductMapper.findAll();
		m.addAttribute("products", products);

		return "index";
	}
	
	
	@RequestMapping("/searchItem")
	public String searchItem(SearchForm f, Model m) {
		// カテゴリー情報を取得
		List<MstCategory> categories = mstCategoryMapper.findAll();

		// 商品情報をリスト取得
		List<MstProduct> products;
		// 検索ワードをスペース変換/削除処理
		String keywords = f.getKeywords().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();

		// カテゴリーとキーワードで商品検索
		// (i)categoryなし→キーワードのみで検索（キーワードがなければすべてになる）
		if (f.getCategory() == 0) {
			products = mstProductMapper.findByProductName(keywords.split(" "));

		// (ii)どっちもあり（キーワードがなければそのカテゴリーがすべて取得される）
		} else {
			products = mstProductMapper.findByCategoryIdAndProductName(f.getCategory(), keywords.split(" "));
		}
		
		m.addAttribute("categories",categories);
		m.addAttribute("selected", f.getCategory());
		m.addAttribute("keywords", keywords);
		m.addAttribute("products", products);
		
		m.addAttribute("loginSession", loginSession);
		return "index";	
	}
	
}

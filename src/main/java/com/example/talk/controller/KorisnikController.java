package com.example.talk.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.talk.repository.KursRepository;

import model.*;

@Controller
@RequestMapping(value="/korisnikController")
public class KorisnikController {
	@Autowired 
	KursRepository kr;

	@RequestMapping(value = "/getSviKurseviUtisak", method = RequestMethod.GET)
	public String getSviKurseviUtisak(HttpServletRequest request) {
		List<Kurs> utisak = kr.findAll();
		request.getSession().setAttribute("utisak", utisak);

		return "prikazSvihKursevaZaUtisak";
	}

	@RequestMapping(value = "/getKursevUtisak", method = RequestMethod.GET)
	public String getKursevUtisak(HttpServletRequest request,Integer idKurs) {
		Kurs k=  kr.findById(idKurs).get();
		request.getSession().setAttribute("k", k);
		String utisak = k.getUtisak();
		List<String>kursic= new ArrayList<String>();
		kursic.add(utisak);
		request.getSession().setAttribute("kursic", kursic);
		return "prikazSvihKursevaZaUtisak";
	}
	
	@RequestMapping(value="/filtriranjeLekcije", method=RequestMethod.GET)
	public String sviKurseviF(HttpServletRequest request, String brLekcija) {
		
		List<Kurs> kurseviF=kr.findAll();
		int brojLekcija=Integer.parseInt(brLekcija);
		
		List<Kurs> filtriraniKursevi=new ArrayList<>();
		for(Kurs k:kurseviF) {
			List<Lekcija> lekcije=k.getLekcijas();
			if(lekcije.size()==brojLekcija) {
				filtriraniKursevi.add(k);
			}
			
		}
		
		request.getSession().setAttribute("filtriraniKLekcija", filtriraniKursevi);
		
		return "filtriranjeKursevaLekcije";
	}
	
	@RequestMapping(value="/filtriranjeOcena", method=RequestMethod.GET)
	public String sviKursevifOcenA(HttpServletRequest request, String ocenaK) {
		
		List<Kurs> kurseviF=kr.findAll();
		int ocena=Integer.parseInt(ocenaK);
		
		List<Kurs> filtrirani=new ArrayList<>();
		for(Kurs k:kurseviF) {
			String unetaOcena=k.getOcena();
			int unetaOcenaInt=Integer.parseInt(unetaOcena);
			if(unetaOcenaInt == ocena) {
				filtrirani.add(k);
			}
			
		}
		
		request.getSession().setAttribute("filtriraniKOcena", filtrirani);
		
		return "filtriranjeKursevaOcena";
	}
	
	@RequestMapping(value="/filtriranjeRec", method=RequestMethod.GET)
	public String sviKurseviFRec(HttpServletRequest request, String rec) {
		
		List<Kurs> kurseviF=kr.findAll();
		
		List<Kurs> filtrirani=new ArrayList<>();
		for(Kurs k:kurseviF) {
			if(k.getNaziv().contains(rec)) {
				filtrirani.add(k);
			}
			
		}
		
		request.getSession().setAttribute("filtriraniKRec", filtrirani);
		
		return "filtriranjeKursevaRec";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	@RequestMapping(value="/getNajboljiKursevi", method = RequestMethod.GET)
	public String getNajboljiKursevi(HttpServletRequest request) {
		
		ZoneId defaultZoneId = ZoneId.systemDefault();
		LocalDate now = LocalDate.now();
		LocalDate earlier = now.minusMonths(1);
		 
		Date date = Date.from(now.atStartOfDay(defaultZoneId).toInstant());
		Date dateEarlier = Date.from(earlier.atStartOfDay(defaultZoneId).toInstant());
		
		String ocena="5";
		
		List<Kurs> najboljiKursevi = kr.kurseviOcenaDatum(ocena, dateEarlier, date);
		request.getSession().setAttribute("najboljikursevi", najboljiKursevi);
		
		return "najboljeOcenjeniKursevi";
		
	}
	
	
}

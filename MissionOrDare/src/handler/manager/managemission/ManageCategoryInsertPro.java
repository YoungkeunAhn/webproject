package handler.manager.managemission;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageCategoryInsertPro implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_category_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		request.setCharacterEncoding("utf-8");
		
		String path = "C:/test2/";
		MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request;
		MultipartFile file = mpr.getFile("category_image");
		String large_category = mpr.getParameter("largeCategory");
		large_category = new String(large_category.getBytes("8859_1"), "utf-8");
		String small_category = mpr.getParameter("smallCategory");
		small_category = new String(small_category.getBytes("8859_1"), "utf-8");
		
		String originName = file.getOriginalFilename();
		String extension = "."+FilenameUtils.getExtension(originName);
		String newFile = path + large_category + small_category + extension;
		String newFileName = large_category + small_category + extension;
		file.transferTo(new File(newFile));
		
		MissionCategoryDto missionCategoryDto = new MissionCategoryDto();
		missionCategoryDto.setLarge_category(large_category);
		missionCategoryDto.setSmall_category(small_category);
		missionCategoryDto.setCategory_image(newFileName);
		int result = manageMissionDao.insertCategory(missionCategoryDto);
		
		mpr.setAttribute("result", result);
		
		
		return new ModelAndView("manager/pages/manage_category_insertPro");
	}
}

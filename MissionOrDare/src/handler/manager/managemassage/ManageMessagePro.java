package handler.manager.managemassage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class ManageMessagePro implements CommandHandler {
   @RequestMapping("/manage_message_pro")
   @Override
   public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
       
	   
	   return new ModelAndView("manager/pages/manage_message_pro");
   }
}
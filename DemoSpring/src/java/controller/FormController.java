  
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import model.*;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
@RequestMapping(value="/form")
public class FormController {
    @RequestMapping(value="/dangky",method= RequestMethod.GET)
    public String dangky(ModelMap mm){
        mm.addAttribute("tk", new Taikhoan());
        return "dangky";
    }
    @RequestMapping(value="/xulydangky", method = RequestMethod.POST)
    public String xulydangky(@ModelAttribute(value="tk") Taikhoan tk, ModelMap mm){
        mm.put("tk",tk);
        return "wellcome";
    }
}

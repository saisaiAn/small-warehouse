package cn.interceptor;

import cn.Before.service.EmpService;
import cn.Before.service.JedisClientImp;
import cn.bean.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BeforeInterceptor implements HandlerInterceptor {
    @Autowired
    private  JedisClientImp jedisClientImp;
    @Autowired
    private EmpService empService;
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        Emp empReturn = (Emp) httpServletRequest.getSession().getAttribute("empBefore");
        if (empReturn==null||empReturn.equals("")){
            String empNo="";
            try{
                empNo =jedisClientImp.get("empNo");
                jedisClientImp.del("empNo");
            }catch (Exception e){
                e.printStackTrace();
            }
            Emp empe=new Emp();
            empe.setEmptype(0);
            empe.setEmpno(Integer.parseInt(empNo));
            empService.updateBeforeEmpType(empe);
            httpServletResponse.sendRedirect("/SSMDemo1/hello");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

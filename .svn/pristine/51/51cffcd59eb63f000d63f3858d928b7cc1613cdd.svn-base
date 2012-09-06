package com.hrm.controller;


import java.awt.Color;
import java.awt.Font;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.AxisLocation;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.labels.StandardCategorySeriesLabelGenerator;
import org.jfree.chart.labels.StandardCategoryToolTipGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.chart.title.TextTitle;
import org.jfree.chart.urls.StandardCategoryURLGenerator;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.hrm.dto.DepartDto;
import com.hrm.pojo.Depart;
import com.hrm.pojo.Salary;
import com.hrm.service.DepartService;
import com.hrm.service.SalaryService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	private SalaryService salaryService;
	@Autowired
	private DepartService departService;
	
	
	@RequestMapping("/home")
	public String home(){
		return "manager-home";
	}
	@RequestMapping("/salary")
	public String salary(Model model){
		List<Salary> list = salaryService.findAll();
		model.addAttribute("salaryList", list);
		return "manager-salary";
	}
	@RequestMapping("/salaryfangan")
	public String fangan(){
		return "manager-salary-fangan";
	}
	@RequestMapping("/departsalary")
	public String departsalary(HttpSession session){
		List<Depart> list = departService.findAll();
		List<DepartDto> departDtos = new ArrayList<DepartDto>();
		for (Depart depart : list) {
			DepartDto dto = new DepartDto();
			dto.setEnglishnames(depart.getEnglishnames());
			dto.setNames(depart.getNames());
			departDtos.add(dto);
		}
		session.setAttribute("departList", departDtos);
		return "manager-depart-salarystatis";
	}
	@RequestMapping(value="/depart.json",produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Depart> getDepart(HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("UTF-8");
		List<Depart> list = departService.findAll();
		List<DepartDto> departDtos = new ArrayList<DepartDto>();
		for (Depart depart : list) {
			DepartDto dto = new DepartDto();
			dto.setEnglishnames(depart.getEnglishnames());
			dto.setNames(depart.getNames());
			departDtos.add(dto);
		}
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=UTF-8");
		
		Gson gson = new Gson();
		String json = gson.toJson(departDtos);
		System.out.println(json);
		out.print(json);
		
		out.flush();
		out.close();
		return null;
	} 
	@RequestMapping(value="/searchsalary",method=RequestMethod.POST)
	public String searchsalary(String yuefen,String bumen,Model model){
		List<Salary> list = salaryService.findSalaryBysearch(yuefen, bumen);
		model.addAttribute("salaryList", list);
		return "manager-salary";
	}
	@RequestMapping("/tupian")
	public ModelAndView tupian(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		response.setCharacterEncoding("UTF-8");  
		response.setContentType("text/html;charset=UTF-8");  
        String yuefen = request.getParameter("yuefen");
        String name = request.getParameter("name");
        Depart depart = departService.findByDepartname(name);
       
        String type = depart.getNames();  
        
        CategoryDataset data = getCategoryBar3DDataset(name, yuefen);  
        
        HttpSession session = request.getSession();  
        Writer out = response.getWriter();  
  
        String filename = createBarChart(data, type + yuefen + "月份员工工资3D图",  
                "员工姓名", "工资", 550, 450, session, new PrintWriter(out),  
                "imgMap", true);  
  
        String file = request.getContextPath()  
                + "/servlet/DisplayChart?filename=" + filename;  
        ModelAndView mav = new ModelAndView();  
        mav.addObject("file", file);  
        mav.setViewName("manager-depart-salarystatis");  
        return mav;  
	}
	public CategoryDataset getCategoryBar3DDataset(String name, String yuefen) {  
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();  
        List<Salary> salaryList = salaryService.findSalaryBysearch(yuefen, name);
        for (Salary salary : salaryList) {
			dataset.addValue(salary.getTotal(), salary.getWorker().getNames(), "凯盛信息技术有限公司");
		}
        return dataset;  
    }  
	public String createBarChart(CategoryDataset dataset, String title,  
            String xtitle, String ytitle, int width, int height,  
            HttpSession session, PrintWriter pw, String useMap, boolean is3D) {  
        String filename = "";  
        JFreeChart chart = ChartFactory.createBarChart3D(title,// 图表标题  
                xtitle,// 目录轴的显示标签(x轴)  
                ytitle,// 数值轴的显示标签（y轴）  
                dataset, PlotOrientation.VERTICAL,// 图表方向：水平、垂直  
                true,// 是否显示图例(对于简单的柱状图必须是false)  
                true,// 是否tooltip  
                true// 是否生成URL链接  
                );  
        Font font = new Font("宋体", Font.BOLD, 16);  
        TextTitle barTitle = new TextTitle(title, font);  
        // 设置正上方的标题  
        chart.setTitle(barTitle);  
        // 设置底部标题  
        chart.getLegend().setItemFont(new Font("宋体", Font.PLAIN, 12));  
        //chart.getLegend().setItemLabelPadding(new RectangleInsets());  
        CategoryPlot plot = chart.getCategoryPlot();// 获得图表区域对象  
  
        // 设置图表的纵轴和横轴org.jfree.chart.axis.CategoryAxis  
        CategoryAxis domainAxis = plot.getDomainAxis();// X轴  
        domainAxis.setLowerMargin(0.1);// 设置距离图片左端距离此时为10%  
        domainAxis.setUpperMargin(0.1);// 设置距离图片右端距离此时为百分之10  
        domainAxis.setCategoryLabelPositionOffset(10);// 图表横轴与标签的距离(10像素)  
        domainAxis.setCategoryMargin(0.2);// 横轴标签之间的距离20%  
        // 设置X坐标上的文字  
        domainAxis.setTickLabelFont(font);  
        // 设置X轴标题  
        domainAxis.setLabelFont(font);  
       
        // 设定柱子的属性  
        ValueAxis rangeAxis = plot.getRangeAxis();  
        rangeAxis.setUpperMargin(0.1);// 设置最高的一个柱与图片顶端的距离(最高柱的10%)  
        // 设置Y坐标上的文字  
        rangeAxis.setTickLabelFont(font);  
        // 设置Y轴标题  
        rangeAxis.setLabelFont(font);  
  
        // 设置图表的颜色  
       
        BarRenderer renderer;  
        if (is3D) {  
            renderer = new BarRenderer3D();  
            renderer.setBaseToolTipGenerator(new StandardCategoryToolTipGenerator());  
            renderer.setBaseItemURLGenerator(new StandardCategoryURLGenerator(  
                    "detailBar3D.do", "type", "school"));  
        } else {  
            renderer = new BarRenderer();  
            renderer.setBaseToolTipGenerator(new StandardCategoryToolTipGenerator());  
            renderer.setBaseItemURLGenerator(new StandardCategoryURLGenerator(  
                    "detailBar.do", "type", "school"));  
        }  
        // 显示每个柱的数值，并修改该数值的字体属性  
        renderer.setIncludeBaseInRange(true);  
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator(  
                        "{0}=￥{2}",NumberFormat.getNumberInstance()));  
        renderer.setBaseOutlinePaint(Color.red);  
        renderer.setSeriesPaint(0, new Color(0, 255, 255));// 计划柱子的颜色为青色  
        renderer.setSeriesOutlinePaint(0, Color.BLACK);// 边框为黑色  
        renderer.setSeriesPaint(1, new Color(0, 255, 0));// 实报柱子的颜色为绿色  
        renderer.setSeriesOutlinePaint(1, Color.red);// 边框为红色  
        renderer.setItemMargin(0.1);// 组内柱子间隔为组宽的10%  
        //java.lang.String labelFormat:"{0}={1}({2})":会显示成：apple=120(5%)   
        //java.text.NumberFormat类有三个方法可以产生下列数据的标准格式化器：  
        //数字：NumberFormat.getNumberInstance();  
        //货币：NumberFormat.getCurrencyInstance();  
        //百分数：NumberFormat.getPercentInstance();  
          
        //设置底部  
        renderer.setLegendItemLabelGenerator(new StandardCategorySeriesLabelGenerator("{0}"));  
        renderer.setBaseItemLabelsVisible(true);  
        plot.setRenderer(renderer);// 使用我们设计的效果  
          
        // 设置纵横坐标的显示位置  
        plot.setDomainAxisLocation(AxisLocation.BOTTOM_OR_LEFT);// 学校显示在下端(柱子竖直)或左侧(柱子水平)  
        plot.setRangeAxisLocation(AxisLocation.BOTTOM_OR_LEFT); // 人数显示在下端(柱子水平)或左侧(柱子竖直)  
        StandardEntityCollection sec = new StandardEntityCollection();  
        ChartRenderingInfo info = new ChartRenderingInfo(sec);  
        try {  
            filename = ServletUtilities.saveChartAsPNG(chart, width, height,  
                    info, session);  
            ChartUtilities.writeImageMap(pw, useMap, info, false);// 输出MAP信息  
            pw.flush();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        return filename;  
    }  
}

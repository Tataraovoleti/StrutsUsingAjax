package com.tatarao.actions;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tatarao.forms.AjaxForm;

public class AjaxAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		AjaxForm ajaxForm = (AjaxForm)form; 
		response.setHeader("cache-control", "no-cache");
		PrintWriter pw = response.getWriter();
		pw.println("Hello " + ajaxForm.getName());
		pw.flush();
		return null;
	}
}

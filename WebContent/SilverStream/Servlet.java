package oz;


import java.awt.*;
import java.util.*;
import java.math.*;
import com.sssw.rt.gui.*;
import com.sssw.rt.util.*;
import com.sssw.rt.event.*;
import java.awt.event.*;
import com.sssw.srv.api.*;
import com.sssw.srv.mail.*;
import com.sssw.srv.busobj.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.security.Principal;
import com.sssw.shr.http.*;
import com.sssw.shr.page.AgpPage;
import oz.server.OZServlet;

public class Servlet extends OZServlet 
	implements AgiInitDatas,
	AgiHttpListener
{
	private Vector _ag_children = new Vector();
	private Vector _ag_names = new Vector();
	private String _ag_dbname = null;
	
	private javax.servlet.ServletConfig ag_servletConfig;
	
	

	public void destroy()
	{
		super.destroy();
		return;
	}

	public javax.servlet.ServletConfig getServletConfig()
	{
		return ag_servletConfig;
	}

	public String getServletInfo()
	{
		String returnValue = null;
		return returnValue;
	}

	public void init(javax.servlet.ServletConfig config)
		throws javax.servlet.ServletException
	{
		super.init(config);
		ag_servletConfig = config;
	}

	public void service(javax.servlet.ServletRequest req, javax.servlet.ServletResponse res)
		throws javax.servlet.ServletException, java.io.IOException
	{
		super.service(req, res);
		return;
	}

	public Servlet()
	{
		//==== Warning: SilverStream-generated method: do not edit. All changes will be lost ===

		return;
	}

	public void ag_initDataStores(AgoBusinessObjectEvent e) throws Exception
	{
		//==== Warning: SilverStream-generated method: do not edit. All changes will be lost ===
		return;
	}

	
}

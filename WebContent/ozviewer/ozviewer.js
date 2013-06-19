if(navigator.appName == "Microsoft Internet Explorer") {

  var OZViewerObject = document.createElement('<object id = "OZReportViewer" classid="CLSID:0DEF32F8-170F-46f8-B1FF-4BF7443F5F25" width="100%" height="100%"></object>');

  var OZViewerParam1 = document.createElement('<param name="connection.servlet" value="http://127.0.0.1:8080/oz/server">');
  var OZViewerParam2 = document.createElement('<param name="connection.reportname" value="/CategoryName/ReportName.ozr">');
  var OZViewerParam3 = document.createElement('<param name="viewer.isframe" value="false">');

  OZViewerObject.appendChild(OZViewerParam1);
  OZViewerObject.appendChild(OZViewerParam2);
  OZViewerObject.appendChild(OZViewerParam3);

  RunOZViewer.appendChild(OZViewerObject);

} else if(navigator.appName == "Netscape") {
    if(navigator.appVersion.charAt(0) == "5"){
      if(navigator.userAgent.indexOf("Firefox/3")!=-1){

        var OZViewerObject = document.createElement('object');
        OZViewerObject.setAttribute("id", "OZReportViewer");
        OZViewerObject.setAttribute("width", "100%");
        OZViewerObject.setAttribute("height", "100%");
        OZViewerObject.setAttribute("type","application/OZRViewerPlugin");

        var OZViewerParam1 = document.createElement('param');
        OZViewerParam1.setAttribute("name", "connection.servlet");
        OZViewerParam1.setAttribute("value", "http://127.0.0.1:8080/oz/server");
        var OZViewerParam2 = document.createElement('param');
        OZViewerParam2.setAttribute("name", "connection.reportname");
        OZViewerParam2.setAttribute("value", "/CategoryName/ReportName.ozr");
        var OZViewerParam3 = document.createElement('param');
        OZViewerParam3.setAttribute("name", "viewer.isframe");
        OZViewerParam3.setAttribute("value", "false");

        OZViewerObject.appendChild(OZViewerParam1);
        OZViewerObject.appendChild(OZViewerParam2);
        OZViewerObject.appendChild(OZViewerParam3);

        RunOZViewer.appendChild(OZViewerObject);

    }
  }
}

if(navigator.appName == "Microsoft Internet Explorer") {

  var ZTransferXObject = document.createElement('<object width = "0" height = "0" ID="ZTransferX" classid="CLSID:C7C7225A-9476-47AC-B0B0-FF3B79D55E67" codebase="http://127.0.0.1:8080/CustomNameSpace/ZTransferX_2,2,0,8.cab#version=2,2,0,8"></object>');

  var ZTransferXParam1 = document.createElement('<param name="download.Server" value="http://127.0.0.1/CustomNameSpace/">');
  var ZTransferXParam2 = document.createElement('<param name="download.Port" value="8080">');
  var ZTransferXParam3 = document.createElement('<param name="download.Instruction" value="ozrviewer.idf">');
  var ZTransferXParam4 = document.createElement('<param name="install.Base" value="<PROGRAMS>/Forcs">');
  var ZTransferXParam5 = document.createElement('<param name="install.Namespace" value="CustomNameSpace">');

  ZTransferXObject.appendChild(ZTransferXParam1);
  ZTransferXObject.appendChild(ZTransferXParam2);
  ZTransferXObject.appendChild(ZTransferXParam3);
  ZTransferXObject.appendChild(ZTransferXParam4);
  ZTransferXObject.appendChild(ZTransferXParam5);

  InstallOZViewer.appendChild(ZTransferXObject);

} else if(navigator.appName == "Netscape") {
    if(navigator.appVersion.charAt(0) == "5"){
      if(navigator.userAgent.indexOf("Firefox/3")!=-1){

        var ZTransferXObject = document.createElement('object');
        ZTransferXObject.setAttribute("id", "ZTransferX");
        ZTransferXObject.setAttribute("width", "0");
        ZTransferXObject.setAttribute("height", "0");
        ZTransferXObject.setAttribute("type","application/ZtransferXPlugin;version=1,0,4,0");
        ZTransferXObject.setAttribute("codebase","http://127.0.0.1:8080/CustomNameSpace/OZViewer_1,0,4,0.xpi");

        var ZTransferXParam1 = document.createElement('param');
        ZTransferXParam1.setAttribute("name", "download.Server");
        ZTransferXParam1.setAttribute("value", "http://127.0.0.1/CustomNameSpace/");
        var ZTransferXParam2 = document.createElement('param');
        ZTransferXParam2.setAttribute("name", "download.Port");
        ZTransferXParam2.setAttribute("value", "8080");
        var ZTransferXParam3 = document.createElement('param');
        ZTransferXParam3.setAttribute("name", "download.Instruction");
        ZTransferXParam3.setAttribute("value", "ozrviewer.idf");
        var ZTransferXParam4 = document.createElement('param');
        ZTransferXParam4.setAttribute("name", "install.Base");
        ZTransferXParam4.setAttribute("value", "<PROGRAMS>/Forcs");
        var ZTransferXParam5 = document.createElement('param');
        ZTransferXParam5.setAttribute("name", "install.Namespace");
        ZTransferXParam5.setAttribute("value", "CustomNameSpace");

        ZTransferXObject.appendChild(ZTransferXParam1);
        ZTransferXObject.appendChild(ZTransferXParam2);
        ZTransferXObject.appendChild(ZTransferXParam3);
        ZTransferXObject.appendChild(ZTransferXParam4);
        ZTransferXObject.appendChild(ZTransferXParam5);

        InstallOZViewer.appendChild(ZTransferXObject);

    }
  }
}

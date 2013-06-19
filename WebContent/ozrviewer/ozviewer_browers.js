var OZViewerObject;

function Create_Div() {
    var objDiv = document.createElement("div");
    objDiv.id = "RunOZViewer";
    document.body.appendChild(objDiv);
}

function Initialize_OZViewer(ObjectID, ClassID, Width, Height, Type) {
    if(navigator.appName == "Microsoft Internet Explorer") { //IE
        OZViewerObject = document.createElement('<object id = "' + ObjectID + '" classid = "' + ClassID + '" width = "' + Width + '" height = "' + Height + '"></object>');
    } else if(navigator.appName == "Netscape" || navigator.appName == "Opera") { //Safari, Firefox, Chrome, Opera
        OZViewerObject = document.createElement('object');
        OZViewerObject.setAttribute("id", ObjectID);
        OZViewerObject.setAttribute("width", Width);
        OZViewerObject.setAttribute("height", Height);
        OZViewerObject.setAttribute("type", Type);
    }
}

function Insert_OZViewer_Param(ParameterName, ParameterValue) {
    if(navigator.appName == "Microsoft Internet Explorer") { //IE
        var OZViewerParam = document.createElement('<param name = "' + ParameterName + '" value = "' + ParameterValue + '">');
        OZViewerObject.appendChild(OZViewerParam);
    } else if(navigator.appName == "Netscape" || navigator.appName == "Opera") { //Safari, Firefox, Chrome, Opera
        var OZViewerParam = document.createElement('param');
        OZViewerParam.setAttribute("name", ParameterName);
        OZViewerParam.setAttribute("value", ParameterValue);
        OZViewerObject.appendChild(OZViewerParam);
    }
}

function Start_OZViewer() {
    RunOZViewer.appendChild(OZViewerObject);
}
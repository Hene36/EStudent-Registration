
       
       // Popup window code
        function newPopup(url) 
        {
	        newPopupAudio = window.open(
		        url,'newPopupAudio','height=300,width=350,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no,status=no')
        }
 
                
   
    
    //check picture type
    function checkFileExtensionPicture(elem,obj) 
    {
        var chkext;
        chkext='JPG,GIF,PNG';
        

        
        var filePath = elem.value;

        if(filePath.indexOf('.') == -1)
        return false;

        var validExtensions = new Array();
        var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();


        validExtensions=chkext.split(',');
        for(var i = 0; i < validExtensions.length; i++) 
        {
        //alert(validExtensions[i]);
        if(ext.toUpperCase() == validExtensions[i])

        return true;
        }

        alert('Invalid file format, only ' + chkext + ' files are allowed.');
        var who=document.getElementsByName(obj)[0];

        who.value="";var who2= who.cloneNode(false);
        who2.onchange= who.onchange;+

        who.parentNode.replaceChild(who2,who);

        return false;
    }
    
    


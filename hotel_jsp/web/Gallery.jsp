<%-- 
    Document   : Gallery
    Created on : 12/05/2011, 10:03:46 AM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page: Gallery</title>
        <link type="text/css" href="<%=request.getContextPath()%>/css/ui-lightness/jquery-ui-1.8.12.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui-1.8.12.custom.min.js"></script>
        <script type="text/javascript">
            // ButoonGallery
            $('#ButoonGallery').button().click(function(){
            });
        </script>
        <script>
            //Button
	$(function() {
		$( "button, input:submit, a", ".demo" ).button();
		$( "a", ".demo" ).click(function() { return false; });
	});
	</script>
        <script type="text/javascript">
            var GB_ROOT_DIR = "./greybox/";
        </script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/greybox/AJS.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/greybox/AJS_fx.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/greybox/gb_scripts.js"></script>
    <link href="<%=request.getContextPath()%>/greybox/gb_styles.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/static_files/help.js"></script>
    <link href="<%=request.getContextPath()%>/static_files/help.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
       <h3>Image gallery</h3>
       <script type="text/javascript">
           var image_set = [{'caption': 'Terraza', 'url': 'http://img705.imageshack.us/img705/6171/gallery1ja.jpg'},
                            {'caption': 'Terraza1', 'url': 'http://img703.imageshack.us/img703/9415/gallery2fj.jpg'},
                            {'caption': 'Balcon', 'url': 'http://img220.imageshack.us/img220/7751/gallery3p.jpg'},
                            {'caption': 'Dentro', 'url': 'http://img839.imageshack.us/img839/4161/gallery4ut.jpg'},
                            {'caption': 'Sala', 'url': 'http://img94.imageshack.us/img94/7008/gallery5oj.jpg'}];
        </script>
       <ul>
           <li>
               <a href="#" onclick="return GB_showImageSet(image_set, 1)"><button id="ButoonGallery" class="ui-state-default ui-corner-all">Lanzamien de la Galeria</button></a>
           </li>
           <li>
               <a href="<%=request.getContextPath()%>/static_files/Gallery1.jpg" rel="gb_imageset[nice_pics]" title="Terraza" onclick="return parent.GB_show('Terraza', this.href)" >
                   <img src="<%=request.getContextPath()%>/static_files/Gallery1_thumb.gif" />
               </a>
           </li>
           <li>
               <a href="<%=request.getContextPath()%>/static_files/Gallery2.jpg" rel="gb_imageset[nice_pics]" title="Terraza1" onclick="return parent.GB_show('Terraza1', this.href)">
                   <img src="<%=request.getContextPath()%>/static_files/Gallery2_thumb.gif" />
               </a>
           </li>
           <li>
               <a href="<%=request.getContextPath()%>/static_files/Gallery3.jpg" rel="gb_imageset[nice_pics]" title="Balcon" onclick="return parent.GB_show('Balcon', this.href)">
                   <img src="<%=request.getContextPath()%>/static_files/Gallery3_thumb.gif" />
               </a>
           </li>
           <li>
               <a href="<%=request.getContextPath()%>/static_files/Gallery4.jpg" rel="gb_imageset[nice_pics]" title="Dentro" onclick="return parent.GB_show('Dentro', this.href)">
                   <img src="<%=request.getContextPath()%>/static_files/Gallery4_thumb.gif" />
               </a>
           </li>
           <li>
               <a href="<%=request.getContextPath()%>/static_files/Gallery5.jpg" rel="gb_imageset[nice_pics]" title="Sala" onclick="return parent.GB_show('Sala', this.href)">
                   <img src="<%=request.getContextPath()%>/static_files/Gallery5_thumb.gif" />
               </a>
           </li>
       </ul>
    </body>
</html>

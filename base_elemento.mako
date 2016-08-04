<%def name="elemento(contenido)">
  <%
    import random
    placeholders = ""
    retorno = "" 
    retorno +=  """ 
<h2>%s</h2>
<ul data-role="listview" data-inset="true">	
  <li style="border:0"><img alt="%s" src="%s" />
  <div><!--%s -->
   <p>%s</p> 
  </div>
""" % ( contenido["titulo"], contenido["descripcion_imagen"], contenido["imagen_principal"], contenido["titulo"], contenido["descripcion"])

    retorno += """<div id="masImagenes"><div class="letrero">Imagenes:</div><div class="fotos"> """

    posicion = int(random.random() * 1000000)
    retorno += """
	 <a href="#popup%(posicion)s" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-link">
	 <img class="popphoto hoverZoomLink" src="%(thumb)s" alt="%(descripcion)s">
	 </a>
	 """ % {"imagen": contenido["imagen_principal"].replace("thumb","version-web"), "descripcion": contenido["descripcion"], "thumb": contenido["imagen_principal"], "posicion": posicion}
         
    placeholders += """<div data-role="popup" id="popup%(posicion)s" data-corners="false"><a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img class="popphoto" src="%(imagen)s" style="max-height:512px;" alt="%(descripcion)s"></div>""" % {"imagen": contenido["imagen_principal"].replace("thumb","version-web"), "descripcion": contenido["descripcion"], "thumb": contenido["imagen_principal"], "posicion": posicion}


    if contenido["mas_imagenes"]:
       
       for imagen in contenido["mas_imagenes"]:
         posicion = int(random.random() * 1000000)	
         retorno += """
	 <a href="#popup%(posicion)s" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-link">
	 <img class="popphoto hoverZoomLink" src="%(thumb)s" alt="%(descripcion)s">
	 </a>
	 """ % {"imagen": imagen[0].replace("thumb","version-web"), "descripcion": imagen[1], "thumb": imagen[0], "posicion": posicion}
         
         placeholders += """<div data-role="popup" id="popup%(posicion)s" data-corners="false"><a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img class="popphoto" src="%(imagen)s" style="max-height:512px;" alt="%(descripcion)s"></div>""" % {"imagen": imagen[0].replace("thumb","version-web"), "descripcion": imagen[1], "thumb": imagen[0], "posicion": posicion}

    retorno += placeholders
    retorno += "</div></div></li></ul>"
    return retorno 

  %>
</%def>

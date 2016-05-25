<%def name="elemento(contenido)">
  <%
    retorno = "" 
    retorno +=  """<a href="%s" data-lightbox="galeria" class="galeria-normal" data-title="%s">
  <img src="%s" />
  <div><h1>%s </H1>
   <p>%s</p> 
  </div>
</a>
""" % (contenido["imagen_principal"].replace("thumb","version-web"), contenido["descripcion_imagen"], contenido["imagen_principal"], contenido["titulo"], contenido["descripcion"])

    if contenido["mas_imagenes"]:
       retorno += """<div id="masImagenes"><div class="letrero">M&aacute;s imagenes:</div><div class="fotos"> """
       for imagen in contenido["mas_imagenes"]:
         retorno += """<a href="%s" data-lightbox="galeria" class="galeria-small" data-title="%s">
                          <img src="%s" />
                       </a>""" % (imagen[0].replace("thumb","version-web"), imagen[1], imagen[0])
       retorno += """</div></div> """
    return retorno

  %>
</%def>

IT
:dialog {label="STRELICE";

:row{
: boxed_column {label="Concave";alignment = centered;height = 10 ;fixed_width = true; width = 75 ;color=black;
: image {key = "Img1" ; alignment = centered; color=black;height = 10 ;width = 50;fixed_width = true;}

:button{key="BTN1"; width=40; height=4; alignment = centered; fixed_width = true; label="2 Segments";}
:button{key="BTN2"; width=40; height=4; alignment = centered; fixed_width = true; label="4 Segments";}
:button{key="BTN3"; width=40; height=4; alignment = centered; fixed_width = true; label="6 Segments";}
:button{key="BTN4"; width=40; height=4; alignment = centered; fixed_width = true; label="8 Segments";}
:button{key="BTN5"; width=40; height=4; alignment = centered; fixed_width = true; label="10 Segments";}
:button{key="BTN6"; width=40; height=4; alignment = centered; fixed_width = true; label="12 Segments";}
:button{key="BTN7"; width=40; height=4; alignment = centered; fixed_width = true; label="14 Segments";}

}



: boxed_column {label="Convex";alignment = centered;height = 10 ;fixed_width = true; width = 75 ;color=black;
: image {key = "Img2" ; alignment = centered; color=black;height = 10 ;width = 50;fixed_width = true;}

:button{key="BTN8"; width=40; height=4; alignment = centered; fixed_width = true; label="2 Segments";}
:button{key="BTN9"; width=40; height=4; alignment = centered; fixed_width = true; label="4 Segments";}
:button{key="BTN10"; width=40; height=4; alignment = centered; fixed_width = true; label="6 Segments";}
:button{key="BTN11"; width=40; height=4; alignment = centered; fixed_width = true; label="8 Segments";}
:button{key="BTN12"; width=40; height=4; alignment = centered; fixed_width = true; label="10 Segments";}
:button{key="BTN13"; width=40; height=4; alignment = centered; fixed_width = true; label="12 Segments";}
:button{key="BTN14"; width=40; height=4; alignment = centered; fixed_width = true; label="14 Segments";}







}
}




 :spacer {height=0.0;}
 : row {
    fixed_width = true;
    alignment = centered;
 :button {key="cancel"; label="&Cancel"; is_cancel=true; is_default=true; fixed_width=true; width=12.0; alignment=centered;}
 :button {key="Info"; label="Info"; fixed_width=true; width=12.0; alignment=centered;}
 }
 :spacer {height=0.0;}
}

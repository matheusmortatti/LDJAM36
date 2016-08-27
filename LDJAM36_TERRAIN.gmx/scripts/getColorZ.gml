/// getColorZ(zz)

var zz = clamp(argument[0], 0, 240);
var r = 0, b = 0, g = 0, a = 1;

if (zz >50) {
    a = 0.8 - zz/255;
    b = 255
    g = 255 - (zz-50)/205 * 200;
}
else if(zz <=50 and zz > 25) {
    b = clamp(zz+50, 0, 255);
    g = abs(200-zz);
    r = 200 - abs(200-zz);
}
else if(zz <=25 and zz > 1) {
    g = (zz-1)/24 * 200;
    r = 0;
    b = 0;
}
else {
    r = 255 - zz * 150;
    g = 255 - zz * 150;
    b = 255 - zz * 150;
}

draw_set_alpha(a);
return make_color_rgb(r, g, b)

/// getColorZ(zz)

var zz = clamp(argument[0], 0, 240);
var r = 0, b = 0, g = 0, a = 1;
var col = -1;

if (zz >60 or zz == 0) {
    /*a = 0.8 - zz/255;
    b = 255
    g = 255 - (zz-50)/205 * 200;*/
     col = 2;
}
else if(zz <=60 and zz > 40) {
    /*b = clamp(zz+50, 0, 255);
    g = abs(200-zz);
    r = 200 - abs(200-zz);*/
     col = 5;
}
else if(zz <=40 and zz > 25) {
    /*b = clamp(zz+50, 0, 255);
    g = abs(200-zz);
    r = 200 - abs(200-zz);*/
     col = 3;
}
else if(zz <=25 and zz > 6) {
    /*g = (zz-1)/24 * 200;
    r = 0;
    b = 0;*/
    col = 0;
}
else if (zz <= 6 and zz > 3) {
    /*r = 255 - zz * 150;
    g = 255 - zz * 150;
    b = 255 - zz * 150;*/
    col = 1;
}
else {
    col = 4;
}

draw_set_alpha(a);
return col//make_color_rgb(r, g, b)

/// getColorZ(zz)

var zz = clamp(argument[0], 0, 240);
var r = 0, b = 0, g = 0;

if (zz >160) {
    b = zz;
    g = 350-zz
}
else if(zz <=160 and zz > 100) {
    b = 240;
    g = 255 - (zz-100)/60 * 30;
    r = 255 - (zz-100)/60 * 255
}
else if(zz <=100 and zz > 25) {
    g = (zz-25)/75 * 200;
    r = 0;
    b = 0;
}
else {
    r = 255 - zz/20 * 230;
    g = 255 - zz/20 * 230;
    b = 255 - zz/20 * 230;
}

/*
if (zz >= 100) {
    b = 50 + (zz - 50)/50 * 200;
}
else if (zz > 50 and zz < 75)
{
    b = 255;
    g = 200;
    r = zz*2;
    
}
else if (zz <= 50 and zz > 30)
{
    g = 50 + (zz/50)*200;
}
else
{
    r = 50 + (zz/50)*200;
    g = 50 + (zz/50)*200;
    b = 50 + (zz/50)*200;
}



r = zz;
g = zz;
b = zz; */

return make_color_rgb(r, g, b)

//generate(width. height, grid, block_size, center_x, center_y)

var width = argument[0];
var height = argument[1]
var grid = argument[2];
var block_size = argument[3];
var center_x = argument[4];
var center_y = argument[5];

var maxDist = 150;

var w = maxDist*2;
var h = maxDist*2;
var x_i = center_x - maxDist;
var y_i = center_y - maxDist;

for( x_i = 0; x_i < width; x_i++)
{
    for(y_i = 0; y_i < height; y_i++)
    {
        var distanceX = (center_x-x_i)*(center_x-x_i);
        var distanceY = (center_y-y_i)*(center_y-y_i);
        
        var distanceToCenter = sqrt(distanceX+distanceY)*block_size;
        
        if (distanceToCenter < maxDist) {
            var zz = getPerlinNoise(x_i, y_i, 100, block_size);
            grid[# x_i, y_i] = abs(distanceToCenter-zz);
        }
    }
}

//generate(width. height, grid, block_size, center_x, center_y)

var width = argument[0];
var height = argument[1]
var grid = argument[2];
var block_size = argument[3];
var center_x = argument[4];
var center_y = argument[5];

for(var i = 0; i < width; i++)
{
    for(var j = 0; j < height; j++)
    {
        var distanceX = (center_x-i)*(center_x-i);
        var distanceY = (center_y-j)*(center_y-j);
        
        var distanceToCenter = sqrt(distanceX+distanceY)*block_size;
        
        if (distanceToCenter < 175) {
            var zz = getPerlinNoise(i, j, 100, block_size);
            grid[# i, j] = abs(distanceToCenter-zz);
        }
    }
}

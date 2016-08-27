//generate(width. height, grid, block_size)

var width = argument[0];
var height = argument[1]
var grid = argument[2];
var block_size = argument[3];

for(var i = 0; i < width; i++)
{
    for(var j = 0; j < height; j++)
    {
        var distanceX = (room_width/(2*block_size)-i)*(room_width/(2*block_size)-i);
        var distanceY = (room_height/(2*block_size)-j)*(room_height/(2*block_size)-j);
        
        var distanceToCenter = sqrt(distanceX+distanceY)*block_size;
        
        var zz = getPerlinNoise(i, j, 100, block_size);
        grid[# i, j] = abs(distanceToCenter-zz);
    }
}

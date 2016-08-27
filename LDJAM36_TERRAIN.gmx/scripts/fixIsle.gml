/// fixIsle(grid, width, height, size, xx, yy, last_x, last_y)

var grid = argument[0];
var width = argument[1];
var height = argument[2];
var size = argument[3];
var xx = argument[4];
var yy = argument[5];
var last_x = argument[6];
var last_y = argument[7];

var isle_minsize = 5;
var water_count=0
var current_size=0

if (grid[#xx, yy] > 50) {
    current_size++;
    for(var i = xx-1; i>0 and i<width and i < xx+2; i++) {
        for(var j = yy-1; j>0 and j < height and j < yy+2; j++) {
            if (i!=xx and j!=yy and i != last_x and j!=last_y and grid[#i, j] >50) {
                current_size += fixIsle(grid, width, height, size, i, j, xx, yy);
            }
            else if (grid[#i, j] < 50) {
                water_count++;
            }
        }
    }
}

if (current_size < isle_minsize) {
    grid[#xx, yy] = irandom_range(0, 49);
}

return current_size;

// getPerlinNoise(xx, yy, range, block_size)

var xx = argument[0];
var yy = argument[1];
var range = argument[2] div 2;
var chunk_size = argument[3];

var noise = 0;



while(chunk_size > 0)
{
    var index_x = xx div chunk_size;
    var index_y = yy div chunk_size;
    
    var t_x = (xx % chunk_size) / chunk_size;
    var t_y = (yy % chunk_size) / chunk_size;
    
    var r_00 = randomSeed(range, index_x, index_y);
    var r_01 = randomSeed(range, index_x, index_y+1);
    var r_10 = randomSeed(range, index_x+1, index_y);
    var r_11 = randomSeed(range, index_x+1, index_y+1);
    
    var r_0 = lerp(r_00, r_01, t_y);
    var r_1 = lerp(r_10, r_11, t_x);
    
    noise += lerp(r_0, r_1, t_x);
    
    chunk_size = chunk_size div 2;
    range = range div 2;
    range = max(1, range);
}

return noise;

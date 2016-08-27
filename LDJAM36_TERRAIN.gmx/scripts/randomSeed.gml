// randomSeed(range, seed_x, seed_y)

var range = argument[0];
var num = 0;
switch(argument_count)
{
    case 2:
        num = argument[1];
        break;
    case 3:
        num = argument[1] + argument[2]*845;
        break;
}

random_set_seed(terrain_generator.seed + num);
var rand = irandom_range(0, range);

return rand;

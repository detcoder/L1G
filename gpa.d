import std.stdio, std.string, std.conv;

void main()
{
	int score;
	string scores;
	
	int elements = to!int(chomp(stdin.readln()));
	scores = chomp(stdin.readln());
	
	foreach(char c; scores)
	{
		switch(c)
		{
			case 'A': score++;goto case;
			case 'B': score++;goto case;
			case 'C': score++;goto case;
			case 'D': score++;goto case;
			case 'F': break;
			default:stderr.writefln("Invalid score value(%c)!", c);assert(0);
		}
	}
	
	writefln("%g", to!float(score)/elements);
}

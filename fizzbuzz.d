import std.stdio, std.string, std.conv;

void main()
{
	string str;
	
	foreach(i; 1..101)
	{
		if(i % 3)
		{
			if(i % 5)
			{
				str ~= text(i) ~ "\n";
			}
			else
			{
				str ~= "Buzz\n";
			}
		}
		else if(i % 5)
		{
			str ~= "Fizz\n";
		}
		else
		{
			str ~= "FizzBuzz\n";
		}
	}
	writeln(str);
}

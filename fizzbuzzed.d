import std.stdio, std.string, std.conv;

string FizzBuzzCTFE()
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
	return str;
}

pragma(msg, FizzBuzzCTFE());

void main()
{}

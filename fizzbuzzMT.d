import std.stdio, std.string, std.conv;
import std.concurrency;

void FizzBuzzMT(Tid master, int start, int end)
{
	string str;
	
	foreach(i; start..end+1)
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
	send(master, start, str.idup);
}

void main()
{
	for(int i=1;i<100;i+=10)
	{
		spawn(&FizzBuzzMT, thisTid, i, i+9);
	}
	auto results = new string[10];
	foreach(_; 0..10)
	{
		receive
		(
			(int i, string result)
			{
				results[(i-1)/10] = result;
			}
		);
	}
	write(results);
}

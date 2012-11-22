import std.stdio, std.string, std.conv;

/***
 * とりたてて何の変哲も無いfizzbuzz
 * というか実装者の腕前が悪すぎて…
 */
void main()
{
	string str;
	// D言語のforeachはjavaとかの拡張for文っぽい
	foreach(i; 1..101)
	{
		if(i % 3)
		{
			if(i % 5)
			{
				//std.conv 数字を文字列型に変換する関数
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

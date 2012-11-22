import std.stdio, std.string, std.conv;
/*******************************************************************************
 * FizzBuzzをCTFE（コンパイル時実行）する
 */

/*******************************************************************************
 * fizzbuzz.dのロジックベタ写し
 * 違う点はstringで返している所
 */
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

// pragma(msg でコンパイル時にメッセージ表示
// CTFEable関数を入れるとコンパイル時に実行される
pragma(msg, FizzBuzzCTFE());
// void = 虚無
void main()
{}

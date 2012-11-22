import std.stdio, std.string, std.conv;
import std.concurrency;

/*******************************************************************************
 * Phobos（標準ライブラリ、std）だけでマルチスレッド
 */

/*******************************************************************************
 * 別スレッドで演算する関数
 * 引数:Tid-スレッドID、start-開始値、end-終了値
 */
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
	// send関数で親スレッドに第二引数以下の値を返す
	send(master, start, str.idup);
}

void main()
{
	for(int i=1;i<100;i+=10)
	{
		// スレッドをたたき起こす
		spawn(&FizzBuzzMT, thisTid, i, i+9);
	}
	auto results = new string[10];
	foreach(_; 0..10)
	{
		// receiveで受け取る
		// 順番ソートはかえってくるstartの値でやる
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

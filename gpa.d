import std.stdio, std.string, std.conv;
/*******************************************************************************
 * GPA計算を行う
 */
void main()
{
	int score;
	string scores;
	
	// std.conv to関数 !の後ろはテンプレート引数
	int elements = to!int(chomp(stdin.readln()));
	scores = chomp(stdin.readln());
	
	// D言語のstringの実態はimmutable char[]なので、foreachで一文字づつ出せる
	foreach(char c; scores)
	{
		switch(c)
		{
			// D言語のswitchは暗黙の下降（break文が無いと次のケースへ行く）が、
			// 出来ない為、goto caseで明示的に降りる。c/c++のバグ温床潰し
			case 'A': score++;goto case;
			case 'B': score++;goto case;
			case 'C': score++;goto case;
			case 'D': score++;goto case;
			case 'F': break;
			// D言語のswitch文はdefault節必須。バグ温床潰し
			default:stderr.writefln("Invalid score value(%c)!", c);assert(0);
		}
	}
	
	// 片方をintからfloatに変換して計算すると、もう片方も暗黙でcastされる
	writefln("%g", to!float(score)/elements);
}

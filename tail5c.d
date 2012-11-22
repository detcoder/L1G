import std.stdio, std.range, std.string, std.conv;
/*******************************************************************************
 * tail -n 5相当のプログラム。古典的Cっぽい書き方
 */
void main()
{
	string outstr;
	// autoによる型推論
	auto size = cast(int)stdin.size;
	
	// 関数内関数。やろうと思えばクロージャも
	char get1byte()
	{
		// stdio.getFPでCのFILE*を取ることができる
		return cast(char)fgetc(stdin.getFP());
	}
	
	// D言語では0は偽
	if(size)
	{
		stdin.seek(0, SEEK_END);
		auto c = get1byte();
		if(!stdin.eof)
		{
			outstr = to!string(c);
		}
	}
	for(int i=1,linecount=0;i<size; i++)
	{
		char c;
		stdin.seek(-i, SEEK_END);
		c = get1byte();
		if(c == '\n')
		{
			linecount++;
			if(linecount > 5)break;
		}
		outstr = to!string(c) ~ outstr;
	}
	write(outstr);
}

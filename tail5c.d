import std.stdio, std.range, std.string, std.conv;

void main()
{
	string outstr;
	auto size = cast(int)stdin.size;
	
	char get1byte()
	{
		return cast(char)fgetc(stdin.getFP());
	}
	
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

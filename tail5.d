import std.stdio, std.algorithm, std.range;

void main()
{
	// (c) @mono_shoo
	writeln(stdin.byLine().map!(a=>a.idup).array.retro.take(5).retro.join("\n"));
}

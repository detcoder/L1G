import std.stdio, std.string, std.conv;
/*******************************************************************************
 * GPA計算を行う。其ノ二
 */
void main()
{
	int score;
	string scores;
	
	int elements = to!int(chomp(stdin.readln()));
	scores = chomp(stdin.readln());
	
	// count関数で何度出てくるかを計算する
	score += count(scores, "A") * 4;
	score += count(scores, "B") * 3;
	score += count(scores, "C") * 2;
	score += count(scores, "D") * 1;
	
	writefln("%g", cast(float)score/elements);
}
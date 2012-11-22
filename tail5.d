import std.stdio, std.algorithm, std.range;
/*******************************************************************************
 * tail -n 5相当の動作を行うプログラム。ワンライナー版
 */
void main()
{
	// (c) @mono_shoo
	writeln(stdin.byLine().map!(a=>a.idup).array.retro.take(5).retro.join("\n"));
	// USCFなメソッドチェインを行なってワンライナーを書く
	// byLineがバッファを上書きしまくるため、mapで各要素（string）をidup
	// （配列のコピー）で複製しarrayで保存する
}

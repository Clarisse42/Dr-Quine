/*
	tqt
*/
const main = () =>
/*
	tqt
*/
console.log(tqt());
const tqt = () => "/*\n\ttqt\n*/\nconst main = () =>\n/*\n\ttqt\n*/\nconsole.log(tqt());\nconst tqt = " + tqt + ";\nmain();";
main();
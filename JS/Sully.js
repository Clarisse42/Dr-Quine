tqt=()=> {
	const { exec } = require('child_process');
	var i = 5;
	if (i === 0) return;
	i--;
	var child = "Sully_"+i+".js";
	i++;
	require('fs').writeFileSync(child, 'tqt='+tqt.toString().replace(i, i - 1)+'\ntqt();\n');
	i--;
	exec("node "+child);
}
tqt();

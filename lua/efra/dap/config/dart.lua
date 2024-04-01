local dap = require("dap")

-- Dart / Flutter
dap.adapters.dart = {
	type = "executable",
	command = "dart",
	args = { "debug_adapter" },
}
dap.adapters.flutter = {
	type = "executable",
	command = "flutter",
	args = { "debug_adapter" },
}
dap.configurations.dart = {
	{
		type = "dart",
		request = "launch",
		name = "Launch dart",
		dartSdkPath = "C:/flutter/bin/dart-sdk/bin/dart", -- ensure this is correct
		flutterSdkPath = "C:/flutter/bin/flutter", -- ensure this is correct
		program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
		cwd = "${workspaceFolder}",
		-- console = "internalConsole",
	},
	{
		type = "flutter",
		request = "launch",
		name = "Launch flutter",
		dartSdkPath = "C:/flutter/bin/dart-sdk/bin/dart", -- ensure this is correct
		flutterSdkPath = "C:/flutter/bin/flutter", -- ensure this is correct
		program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
		cwd = "${workspaceFolder}",
		-- console = "internalConsole",
	},
}

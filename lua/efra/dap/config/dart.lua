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
		dartSdkPath = "/usr/bin/flutter/bin/cache/dart-sdk/bin", -- ensure this is correct
		flutterSdkPath = "/usr/flutter/bin", -- ensure this is correct
		-- program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
		program = "${file}", -- ensure this is correct
		cwd = "${workspaceFolder}",
		-- console = "internalConsole",
	},
	{
		type = "flutter",
		request = "launch",
		name = "Launch flutter",
		dartSdkPath = "/usr/bin/flutter/bin/cache/dart-sdk/bin", -- ensure this is correct
		flutterSdkPath = "/usr/flutter/bin", -- ensure this is correct
		-- program = "${workspaceFolder}/lib/main.dart", -- ensure this is correct
		program = "${file}", -- ensure this is correct
		cwd = "${workspaceFolder}",
		-- console = "internalConsole",
	},
}

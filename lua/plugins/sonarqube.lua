return { {
	"iamkarasik/sonarqube.nvim",
	config = function()
		local ext = vim.fn.stdpath("data") .. "/mason/packages/sonarlint-language-server/extension"
		local cmd = { vim.fn.exepath("java"), "-jar", ext .. "/server/sonarlint-ls.jar", "-stdio", "-analyzers" }
		for _, a in ipairs({ "go", "html", "iac", "java", "javasymbolicexecution", "js", "php", "python", "text", "xml" }) do
			table.insert(cmd, ext .. "/analyzers/sonar" .. a .. ".jar")
		end
		require("sonarqube").setup({
			lsp = { cmd = cmd },
			csharp = {
				omnisharpDirectory = ext .. "/omnisharp",
				csharpOssPath = ext .. "/analyzers/sonarcsharp.jar",
				csharpEnterprisePath = ext .. "/analyzers/csharpenterprise.jar",
			},
		})
	end,
} }

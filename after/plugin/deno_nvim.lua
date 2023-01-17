require "deno-nvim".setup({
	server = {
		on_attach = on_attach,
		capabilities = lsp_flags,
		settings = {
			deno = {
				inlayHints = {
					parameterNames = {
						enabled = "all"
					},
					parameterTypes = {
						enabled = true
					},
					variableTypes = {
						enabled = true
					},
					propertyDeclarationTypes = {
						enabled = true
					},
					functionLikeReturnTypes = {
						enabled = true
					},
					enumMemberValues = {
						enabled = true
					},
				}

			}
		}
	}
})

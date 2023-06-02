-- luacheck: ignore 113
-- luacheck: ignore 142

return {
	s("edf", {
		t("export default function "),
		i(1),
		t({ "() {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
}

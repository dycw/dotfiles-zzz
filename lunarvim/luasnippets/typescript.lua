-- luacheck: ignore 113
-- luacheck: ignore 142

return {
	s("eaf", {
		t("export async function "),
		i(1),
		t({ "() {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
	s("ec", {
		t("export const "),
		i(1),
	}),
	s("ef", {
		t("export function "),
		i(1),
		t({ "() {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
	s("edaf", {
		t("export default async function "),
		i(1),
		t({ "() {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
	s("edf", {
		t("export default function "),
		i(1),
		t({ "() {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
	s("edfp", {
		t({ "type Props = {", "  " }),
		i(3),
		t({ "", "}", "", "export default function " }),
		i(1),
		t({ "({}: Props) {", "  " }),
		i(2),
		t({ "", "}" }),
	}),
}

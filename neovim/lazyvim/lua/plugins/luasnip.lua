return {
	"L3MON4D3/LuaSnip",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		ls.add_snippets("python", {
			-- generic
			s("bp", { t("breakpoint()") }),

			-- standard library: dataclasses
			s("fdadataclass", { t("from dataclasses import dataclass") }),
			s("fdafield", { t("from dataclasses import field") }),
			s("fdafields", { t("from dataclasses import fields") }),
			s("fdareplace", { t("from dataclasses import replace") }),

			-- standard library: datetime
			s("imdt", { t("import datetime as dt") }),

			-- standard library: enum
			s("fenauto", { t("from enum import auto") }),
			s("fenenum", { t("from enum import Enum") }),

			-- standard library: itertools
			s("fitislice", { t("from itertools import islice") }),
			s("fitrepeat", { t("from itertools import repeat") }),
			s("fitzipequal", { t("from itertools import zip_equal") }),

			-- standard library: pathlib
			s("fpapath", { t("from pathlib import Path") }),

			-- standard library: re
			s("fresearch", { t("from re import search") }),

			-- standard library: typing
			s("ftyannotated", { t("from typing import Annotated") }),
			s("ftyany", { t("from typing import Any") }),
			s("ftycast", { t("from typing import cast") }),
			s("ftyiterable", { t("from typing import Iterable") }),
			s("ftyiterator", { t("from typing import Iterator") }),
			s("ftyoptional", { t("from typing import Optional") }),
			s("ftyunion", { t("from typing import Union") }),

			-- third party: beartype
			s("fbebeartype", { t("from beartype import beartype") }),

			-- third party: hypothesis
			s("fhyassume", { t("from hypothesis import assume") }),
			s("fhygiven", { t("from hypothesis import given") }),
			s("fhyreproduce", { t("from hypothesis import reproduce_failure") }),
			s("fhysettings", { t("from hypothesis import settings") }),
			s("fhystdata", { t("from hypothesis.strategies import data") }),

			-- third party: loguru
			s("flologger", { t("from loguru import logger") }),

			-- third party: numpy
			s("imnp", { t("import numpy as np") }),
			s("fnparange", { t("from numpy import arange") }),
			s("fnparray", { t("from numpy import array") }),
			s("fnpisfinite", { t("from numpy import isfinite") }),
			s("fnpisnan", { t("from numpy import isnan") }),
			s("fnpnan", { t("from numpy import nan") }),
			s("fnpndarray", { t("from numpy import ndarray") }),
			s("fnpones", { t("from numpy import ones") }),
			s("fnponeslike", { t("from numpy import ones_like") }),
			s("fnptyndarray", { t("from numpy.typing import NDArray") }),
			s("fnpzeros", { t("from numpy import zeros") }),
			s("fnpzeroslike", { t("from numpy import zeros_like") }),

			-- third party: pandas
			s("impd", { t("import pandas as pd") }),
			s("fpddataframe", { t("from pandas import DataFrame") }),
			s("fpdreadpickle", { t("from pandas import read_pickle") }),
			s("fpdseries", { t("from pandas import Series") }),
			s("fpdtopickle", { t("from pandas import to_pickle") }),

			-- third party: pprint
			s("fpppprint", { t("from pprint import pprint") }),

			-- third party: pytest
			s("fpyfixture", { t("from pytest import fixture") }),
			s("fpymark", { t("from pytest import mark") }),
			s("fpyparam", { t("from pytest import param") }),
			s("fpyraises", { t("from pytest import raises") }),

			-- third party: tabluate
			s("ftatabulate", { t("from tabluate import tabulate") }),

			-- third party: xarray
			s("fxadataarray", { t("from xarray import DataArray") }),
			s("fxadatasetl", { t("from xarray import Dataset") }),
		})
	end,
}

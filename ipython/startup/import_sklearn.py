from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sklearn  # noqa: F401
    from sklearn.base import BaseEstimator  # noqa: F401
    from sklearn.compose import ColumnTransformer  # noqa: F401
    from sklearn.compose import TransformedTargetRegressor  # noqa: F401
    from sklearn.compose import make_column_selector  # noqa: F401
    from sklearn.compose import make_column_transformer  # noqa: F401
    from sklearn.ensemble import RandomForestClassifier  # noqa: F401
    from sklearn.ensemble import RandomForestRegressor  # noqa: F401
    from sklearn.impute import SimpleImputer  # noqa: F401
    from sklearn.linear_model import LinearRegression  # noqa: F401
    from sklearn.linear_model import Ridge  # noqa: F401
    from sklearn.metrics import accuracy_score  # noqa: F401
    from sklearn.metrics import confusion_matrix  # noqa: F401
    from sklearn.metrics import mean_squared_error  # noqa: F401
    from sklearn.metrics import r2_score  # noqa: F401
    from sklearn.model_selection import GridSearchCV  # noqa: F401
    from sklearn.model_selection import RandomizedSearchCV  # noqa: F401
    from sklearn.model_selection import TimeSeriesSplit  # noqa: F401
    from sklearn.model_selection import cross_val_score  # noqa: F401
    from sklearn.model_selection import cross_validate  # noqa: F401
    from sklearn.model_selection import train_test_split  # noqa: F401
    from sklearn.pipeline import FeatureUnion  # noqa: F401
    from sklearn.pipeline import Pipeline  # noqa: F401
    from sklearn.pipeline import make_pipeline  # noqa: F401
    from sklearn.pipeline import make_union  # noqa: F401
    from sklearn.preprocessing import FunctionTransformer  # noqa: F401
    from sklearn.preprocessing import LabelEncoder  # noqa: F401
    from sklearn.preprocessing import MaxAbsScaler  # noqa: F401
    from sklearn.preprocessing import MinMaxScaler  # noqa: F401
    from sklearn.preprocessing import OneHotEncoder  # noqa: F401
    from sklearn.preprocessing import PowerTransformer  # noqa: F401
    from sklearn.preprocessing import QuantileTransformer  # noqa: F401
    from sklearn.preprocessing import RobustScaler  # noqa: F401
    from sklearn.preprocessing import StandardScaler  # noqa: F401
    from sklearn.tree import DecisionTreeClassifier  # noqa: F401
    from sklearn.tree import DecisionTreeRegressor  # noqa: F401
    from sklearn.utils.validation import check_random_state  # noqa: F401

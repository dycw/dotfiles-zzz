from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sklearn  # noqa: F401
    from sklearn.base import (
        BaseEstimator,  # noqa: F401
    )
    from sklearn.compose import (
        ColumnTransformer,  # noqa: F401
        TransformedTargetRegressor,  # noqa: F401
        make_column_selector,  # noqa: F401
        make_column_transformer,  # noqa: F401
    )
    from sklearn.ensemble import (
        RandomForestClassifier,  # noqa: F401
        RandomForestRegressor,  # noqa: F401
    )
    from sklearn.impute import (
        SimpleImputer,  # noqa: F401
    )
    from sklearn.linear_model import (
        LinearRegression,  # noqa: F401
        Ridge,  # noqa: F401
    )
    from sklearn.metrics import (
        accuracy_score,  # noqa: F401
        confusion_matrix,  # noqa: F401
        mean_squared_error,  # noqa: F401
        r2_score,  # noqa: F401
    )
    from sklearn.model_selection import (
        GridSearchCV,  # noqa: F401
        RandomizedSearchCV,  # noqa: F401
        TimeSeriesSplit,  # noqa: F401
        cross_val_score,  # noqa: F401
        cross_validate,  # noqa: F401
        train_test_split,  # noqa: F401
    )
    from sklearn.pipeline import (
        FeatureUnion,  # noqa: F401
        Pipeline,  # noqa: F401
        make_pipeline,  # noqa: F401
        make_union,  # noqa: F401
    )
    from sklearn.preprocessing import (
        FunctionTransformer,  # noqa: F401
        LabelEncoder,  # noqa: F401
        MaxAbsScaler,  # noqa: F401
        MinMaxScaler,  # noqa: F401
        OneHotEncoder,  # noqa: F401
        PowerTransformer,  # noqa: F401
        QuantileTransformer,  # noqa: F401
        RobustScaler,  # noqa: F401
        StandardScaler,  # noqa: F401
    )
    from sklearn.tree import (
        DecisionTreeClassifier,  # noqa: F401
        DecisionTreeRegressor,  # noqa: F401
    )
    from sklearn.utils.validation import (
        check_random_state,  # noqa: F401
    )

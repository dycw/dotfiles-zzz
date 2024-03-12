from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sklearn  # noqa: F401
    from sklearn.base import (  # noqa: F401
        BaseEstimator,
    )
    from sklearn.compose import (  # noqa: F401
        ColumnTransformer,
        TransformedTargetRegressor,
        make_column_selector,
        make_column_transformer,
    )
    from sklearn.ensemble import (  # noqa: F401
        RandomForestClassifier,
        RandomForestRegressor,
    )
    from sklearn.impute import (  # noqa: F401
        SimpleImputer,
    )
    from sklearn.linear_model import (  # noqa: F401
        LinearRegression,
        Ridge,
    )
    from sklearn.metrics import (  # noqa: F401
        accuracy_score,
        confusion_matrix,
        mean_squared_error,
        r2_score,
    )
    from sklearn.model_selection import (  # noqa: F401
        GridSearchCV,
        RandomizedSearchCV,
        TimeSeriesSplit,
        cross_val_score,
        cross_validate,
        train_test_split,
    )
    from sklearn.pipeline import (  # noqa: F401
        FeatureUnion,
        Pipeline,
        make_pipeline,
        make_union,
    )
    from sklearn.preprocessing import (  # noqa: F401
        FunctionTransformer,
        LabelEncoder,
        MaxAbsScaler,
        MinMaxScaler,
        OneHotEncoder,
        PowerTransformer,
        QuantileTransformer,
        RobustScaler,
        StandardScaler,
    )
    from sklearn.tree import (  # noqa: F401
        DecisionTreeClassifier,
        DecisionTreeRegressor,
    )
    from sklearn.utils.validation import (  # noqa: F401
        check_random_state,
    )

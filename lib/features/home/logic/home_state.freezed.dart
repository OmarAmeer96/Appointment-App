// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationLoadingImplCopyWith<T, $Res> {
  factory _$$SpecializationLoadingImplCopyWith(
          _$SpecializationLoadingImpl<T> value,
          $Res Function(_$SpecializationLoadingImpl<T>) then) =
      __$$SpecializationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SpecializationLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationLoadingImpl<T>>
    implements _$$SpecializationLoadingImplCopyWith<T, $Res> {
  __$$SpecializationLoadingImplCopyWithImpl(
      _$SpecializationLoadingImpl<T> _value,
      $Res Function(_$SpecializationLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecializationLoadingImpl<T> implements SpecializationLoading<T> {
  const _$SpecializationLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecializationLoading<T> implements HomeState<T> {
  const factory SpecializationLoading() = _$SpecializationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationSuccessImplCopyWith<T, $Res> {
  factory _$$SpecializationSuccessImplCopyWith(
          _$SpecializationSuccessImpl<T> value,
          $Res Function(_$SpecializationSuccessImpl<T>) then) =
      __$$SpecializationSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SpecializationsResponseModel specializationsResponseModel});
}

/// @nodoc
class __$$SpecializationSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationSuccessImpl<T>>
    implements _$$SpecializationSuccessImplCopyWith<T, $Res> {
  __$$SpecializationSuccessImplCopyWithImpl(
      _$SpecializationSuccessImpl<T> _value,
      $Res Function(_$SpecializationSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationsResponseModel = null,
  }) {
    return _then(_$SpecializationSuccessImpl<T>(
      null == specializationsResponseModel
          ? _value.specializationsResponseModel
          : specializationsResponseModel // ignore: cast_nullable_to_non_nullable
              as SpecializationsResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecializationSuccessImpl<T> implements SpecializationSuccess<T> {
  const _$SpecializationSuccessImpl(this.specializationsResponseModel);

  @override
  final SpecializationsResponseModel specializationsResponseModel;

  @override
  String toString() {
    return 'HomeState<$T>.specializationSuccess(specializationsResponseModel: $specializationsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationSuccessImpl<T> &&
            (identical(other.specializationsResponseModel,
                    specializationsResponseModel) ||
                other.specializationsResponseModel ==
                    specializationsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationsResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => __$$SpecializationSuccessImplCopyWithImpl<T,
          _$SpecializationSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
  }) {
    return specializationSuccess(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
  }) {
    return specializationSuccess?.call(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(specializationsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationSuccess<T> implements HomeState<T> {
  const factory SpecializationSuccess(
          final SpecializationsResponseModel specializationsResponseModel) =
      _$SpecializationSuccessImpl<T>;

  SpecializationsResponseModel get specializationsResponseModel;
  @JsonKey(ignore: true)
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationErrorImplCopyWith<T, $Res> {
  factory _$$SpecializationErrorImplCopyWith(_$SpecializationErrorImpl<T> value,
          $Res Function(_$SpecializationErrorImpl<T>) then) =
      __$$SpecializationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SpecializationErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationErrorImpl<T>>
    implements _$$SpecializationErrorImplCopyWith<T, $Res> {
  __$$SpecializationErrorImplCopyWithImpl(_$SpecializationErrorImpl<T> _value,
      $Res Function(_$SpecializationErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SpecializationErrorImpl<T>(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecializationErrorImpl<T> implements SpecializationError<T> {
  const _$SpecializationErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState<$T>.specializationError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationErrorImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => __$$SpecializationErrorImplCopyWithImpl<T,
          _$SpecializationErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationsResponseModel specializationsResponseModel)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
  }) {
    return specializationError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(
            SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
  }) {
    return specializationError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationsResponseModel specializationsResponseModel)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
  }) {
    return specializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
  }) {
    return specializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(this);
    }
    return orElse();
  }
}

abstract class SpecializationError<T> implements HomeState<T> {
  const factory SpecializationError(final ErrorHandler errorHandler) =
      _$SpecializationErrorImpl<T>;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

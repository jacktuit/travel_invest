// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/png/apple.png');

  /// File path: assets/png/applogo.png
  AssetGenImage get applogo => const AssetGenImage('assets/png/applogo.png');

  /// File path: assets/png/auth_image.png
  AssetGenImage get authImage =>
      const AssetGenImage('assets/png/auth_image.png');

  /// File path: assets/png/facebook.png
  AssetGenImage get facebook => const AssetGenImage('assets/png/facebook.png');

  /// File path: assets/png/google.png
  AssetGenImage get google => const AssetGenImage('assets/png/google.png');

  /// File path: assets/png/logo_app.png
  AssetGenImage get logoApp => const AssetGenImage('assets/png/logo_app.png');

  /// File path: assets/png/logo_with_name.png
  AssetGenImage get logoWithName =>
      const AssetGenImage('assets/png/logo_with_name.png');

  /// File path: assets/png/prize.png
  AssetGenImage get prize => const AssetGenImage('assets/png/prize.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    apple,
    applogo,
    authImage,
    facebook,
    google,
    logoApp,
    logoWithName,
    prize,
  ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/bell_filled.svg
  String get bellFilled => 'assets/svg/bell_filled.svg';

  /// File path: assets/svg/bookmark_filled.svg
  String get bookmarkFilled => 'assets/svg/bookmark_filled.svg';

  /// File path: assets/svg/bookmark_outlined.svg
  String get bookmarkOutlined => 'assets/svg/bookmark_outlined.svg';

  /// File path: assets/svg/explore_filled.svg
  String get exploreFilled => 'assets/svg/explore_filled.svg';

  /// File path: assets/svg/explore_outlined.svg
  String get exploreOutlined => 'assets/svg/explore_outlined.svg';

  /// File path: assets/svg/home_filled.svg
  String get homeFilled => 'assets/svg/home_filled.svg';

  /// File path: assets/svg/home_outlined.svg
  String get homeOutlined => 'assets/svg/home_outlined.svg';

  /// File path: assets/svg/profile_filled.svg
  String get profileFilled => 'assets/svg/profile_filled.svg';

  /// File path: assets/svg/profile_outlined.svg
  String get profileOutlined => 'assets/svg/profile_outlined.svg';

  /// List of all assets
  List<String> get values => [
    bellFilled,
    bookmarkFilled,
    bookmarkOutlined,
    exploreFilled,
    exploreOutlined,
    homeFilled,
    homeOutlined,
    profileFilled,
    profileOutlined,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/uz.json
  String get uz => 'assets/translations/uz.json';

  /// List of all assets
  List<String> get values => [uz];
}

class Assets {
  const Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

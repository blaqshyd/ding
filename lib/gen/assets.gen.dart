/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsArtisteGen {
  const $AssetsArtisteGen();

  /// File path: assets/artiste/Upstream-10.png
  AssetGenImage get upstream10 =>
      const AssetGenImage('assets/artiste/Upstream-10.png');

  /// File path: assets/artiste/Upstream-11.png
  AssetGenImage get upstream11 =>
      const AssetGenImage('assets/artiste/Upstream-11.png');

  /// File path: assets/artiste/Upstream-12.png
  AssetGenImage get upstream12 =>
      const AssetGenImage('assets/artiste/Upstream-12.png');

  /// File path: assets/artiste/Upstream-13.png
  AssetGenImage get upstream13 =>
      const AssetGenImage('assets/artiste/Upstream-13.png');

  /// File path: assets/artiste/Upstream-8.png
  AssetGenImage get upstream8 =>
      const AssetGenImage('assets/artiste/Upstream-8.png');

  /// File path: assets/artiste/Upstream-9.png
  AssetGenImage get upstream9 =>
      const AssetGenImage('assets/artiste/Upstream-9.png');
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/apple.svg
  String get apple => 'assets/logos/apple.svg';

  /// File path: assets/logos/ding_logo.png
  AssetGenImage get dingLogo =>
      const AssetGenImage('assets/logos/ding_logo.png');

  /// File path: assets/logos/google.png
  AssetGenImage get googlePng => const AssetGenImage('assets/logos/google.png');

  /// File path: assets/logos/google.svg
  String get googleSvg => 'assets/logos/google.svg';

  /// File path: assets/logos/google1.svg
  String get google1 => 'assets/logos/google1.svg';
}

class Assets {
  Assets._();

  static const $AssetsArtisteGen artiste = $AssetsArtisteGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  String get path => _assetName;

  String get keyName => _assetName;
}

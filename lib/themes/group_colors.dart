import 'package:flutter/material.dart';

@immutable
class ColorsGroup extends ThemeExtension<ColorsGroup> {
  final Color? backgroundCategory;

  const ColorsGroup({
    required this.backgroundCategory,
  });

  @override
  ColorsGroup copyWith({Color? backgroundCategory}) {
    return ColorsGroup(
        backgroundCategory: backgroundCategory ?? this.backgroundCategory);
  }

  @override
  ColorsGroup lerp(ColorsGroup? other, double t) {
    if (other == null) {
      return this;
    }
    return ColorsGroup(
      backgroundCategory:
          Color.lerp(backgroundCategory, other.backgroundCategory, t)!,
    );
  }
}

library theme_button;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// * [width] The width of the view
///
/// * [height] The height of the view
///
/// * [duration] The duration of animation of the view
/// The default is a second
///
/// * [onChanged] Dark or light mode listener of the view
class ThemeButton extends StatefulWidget {
  const ThemeButton({
    super.key,
    this.width = 72,
    this.height = 72,
    this.duration = const Duration(seconds: 1),
    this.padding = EdgeInsets.zero,
    this.onChanged,
  });
  final double width, height;
  final Duration duration;
  final EdgeInsets padding;
  final ValueChanged<bool>? onChanged;

  @override
  State<StatefulWidget> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  var _value = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: IconButton(
        onPressed: _onPressed,
        padding: widget.padding,
        icon: LottieBuilder.asset(
          'assets/animation.json',
          package: 'theme_button',
          controller: _controller,
          repeat: false,
          reverse: false,
        ),
      ),
    );
  }

  void _onPressed() {
    if (_controller.isAnimating) {
      return;
    }
    if (_value) {
      _controller.reverse(from: 0.5);
    } else {
      _controller.animateTo(0.5);
    }
    _value = !_value;
    widget.onChanged?.call(_value);
  }
}

import 'package:flutter/material.dart';

class WishIcon extends StatefulWidget {
  final VoidCallback onTapFn;
  bool? initialValue;
  WishIcon({
    super.key,
    required this.onTapFn,
    this.initialValue,
  });

  @override
  State<WishIcon> createState() => _WishIconState();
}

class _WishIconState extends State<WishIcon> {
  bool? _isWished;
  @override
  void initState() {
    _isWished = widget.initialValue ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(
        () {
          widget.onTapFn();
          _isWished = !_isWished!;
        },
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          _isWished! ? Icons.favorite : Icons.favorite_border,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}

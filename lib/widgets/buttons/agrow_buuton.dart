import 'package:agrow/exports.dart';

class AgrowButton extends StatelessWidget {
  const AgrowButton({
    super.key,
    this.height,
    this.width,
    this.buttonColor,
    this.textColor,
    required this.onPressed,
    this.child,
    this.text,
    this.textStyle,
    this.padding,
    this.radius,
    this.prefix,
    this.isBordered,
    this.borderColor,
    this.elevation,
  });

  final double? height;
  final double? width;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final EdgeInsets? padding;
  final Widget? child;
  final String? text;
  final TextStyle? textStyle;
  final double? radius;
  final Widget? prefix;
  final bool? isBordered;
  final Color? borderColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? double.infinity, height ?? 56.0.h),
        elevation: elevation ?? 0,
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          side: isBordered == true
              ? BorderSide(
                  color: borderColor ?? AppColors.primaryColor,
                  width: 1.0,
                )
              : BorderSide.none,
          borderRadius: BorderRadius.circular(radius ?? 8.0.r),
        ),
      ),
      onPressed: onPressed,
      icon: prefix ?? const SizedBox.shrink(),
      label: Padding(
        padding: padding ?? EdgeInsets.symmetric(vertical: 16.h),
        child: child ??
            Text(
              text ?? 'text',
              style: textStyle ??
                  AppTextStyles.medium.copyWith(
                    color: textColor ?? Colors.white,
                  ),
            ),
      ),
    );
  }
}

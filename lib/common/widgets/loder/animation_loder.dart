import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

/// A widget for displaying an animated loading indicator with optional text and action button.
class TAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the TAnimationLoaderWidget.
  /// I
  /// Parameters:
  /// - text: The text to be displayed below the animation.
  /// - animation: The path to the Lottie animation file.
  /// - showAction: Whether to show an action button below the text.
  /// - actionText: The text to be displayed on the action button.
  /// - onActionPressed: Callback function to be executed when the action button is pressed.
  const TAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(

          children: [
            Lottie.asset(animation,
                width: 50,
                    ), // Display Lottie animation
            const SizedBox(height: KSizes.defaultSpace),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ), // Text
            const SizedBox(height: KSizes.defaultSpace),
            showAction
                ? SizedBox(
                    width: 70,
                    child: OutlinedButton(
                      onPressed: onActionPressed,
                      style:
                          OutlinedButton.styleFrom(backgroundColor: KColors.dark),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: KColors.light),
                      ), // Text
                    ), // OutlinedButton
                  ) // Sized Box
                : const SizedBox(),
          ],
        ),
      ), // Column
    ); // Center
  }
}

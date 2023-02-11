import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class FormButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final void Function() onTap;

  const FormButton({
    super.key,
    required this.text,
    required this.disabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size5),
            color: disabled
                ? Colors.grey.shade300
                : Theme.of(context).primaryColor,
          ),
          duration: const Duration(milliseconds: 250),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

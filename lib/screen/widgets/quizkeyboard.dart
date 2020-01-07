import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class QuizKeyboard extends StatelessWidget
    with KeyboardCustomPanelMixin<String>
    implements PreferredSizeWidget {
  final ValueNotifier<String> notifier;
  final FocusNode focusNode;

  QuizKeyboard({
    Key key,
    this.notifier,
    this.focusNode,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(280);

  String _formatValue(String value) {
    final updatedValue = value;
    // final finalValue = updatedValue.substring(0, updatedValue.length - 2) +
    //     updatedValue.substring(updatedValue.length - 2, updatedValue.length);
    return updatedValue;
  }

  void _onTapSymbol(String value) {
    if (value == "Done") {
      focusNode.unfocus();
      return;
    }
    final currentValue = notifier.value;
    final temp = currentValue + value;
    updateValue(_formatValue(temp));
  }

  void _onTapBackspace() {
    final currentValue = notifier.value;
    final temp = currentValue.substring(0, currentValue.length - 1);
    updateValue(_formatValue(temp));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Color(0xFF313131),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            _buildButton(text: "θ"),
            _buildButton(text: "ɪ"),
            _buildButton(text: "ʒ"),
            _buildButton(text: "ɚ"),
            _buildButton(text: "5"),
            _buildButton(text: "ʊ"),
            _buildButton(text: "1"),
            _buildButton(text: "2"),
            _buildButton(text: "a"),
            _buildButton(icon: Icons.backspace, color: Colors.black),
            _buildButton(text: "0"),
            _buildButton(text: "Done", color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    String text,
    IconData icon,
    Color color,
  }) =>
      QuizButton(
        text: text,
        icon: icon,
        color: color,
        onTap: () => icon != null ? _onTapBackspace() : _onTapSymbol(text),
      );
}

class QuizButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData icon;
  final Color color;

  const QuizButton({
    Key key,
    this.text,
    this.onTap,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5.0),
      color: color ?? Color(0xFF4A4A4A),
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: FittedBox(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: icon != null
                ? Icon(
                    icon,
                    color: Colors.white,
                  )
                : Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

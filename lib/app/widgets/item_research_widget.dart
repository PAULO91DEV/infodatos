import 'package:flutter/material.dart';

class ItemResearchWidget extends StatefulWidget {
  final String text;
  final String tooltip;
  final bool isChecked;
  final bool isEnabled;
  final ValueChanged<bool> onChanged;

  ItemResearchWidget({
    Key key,
    @required this.text,
    this.isChecked = false,
    this.isEnabled = true,
    this.tooltip,
    this.onChanged,
  }) : super(key: key);

  @override
  _ItemResearchWidgetState createState() => _ItemResearchWidgetState();
}

class _ItemResearchWidgetState extends State<ItemResearchWidget> {
  bool _isChecked;

  @override
  void initState() {
    super.initState();
    this._isChecked = this.widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.grey[200],
          width: 200,
          child: CheckboxListTile(
            title: Text(this.widget.text),
            value: this._isChecked,
            onChanged: (this.widget.isEnabled
                ? (newValue) {
                    setState(() {
                      this._isChecked = !this._isChecked;
                    });
                    this.widget.onChanged(this._isChecked);
                  }
                : null),
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
        ),
        Opacity(
          opacity: (this.widget.isEnabled ? 1.0 : 0.5),
          child: IconButton(
            onPressed: (this.widget.isEnabled ? () {} : null),
            icon: Icon(Icons.help),
            tooltip: (this.widget.isEnabled ? this.widget.tooltip : null),
            color: Colors.grey,
            iconSize: 22.0,
          ),
        )
      ],
    );
  }
}

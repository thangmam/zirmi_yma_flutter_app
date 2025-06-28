import 'package:flutter/material.dart';
import 'package:yma_app/utils/db_helper.dart';

class ConfirmDeleteFeeDialog extends StatefulWidget {
  final int feeId;
  const ConfirmDeleteFeeDialog({super.key, required this.feeId});

  @override
  State<ConfirmDeleteFeeDialog> createState() => _ConfirmDeleteFeeDialogState();
}

class _ConfirmDeleteFeeDialogState extends State<ConfirmDeleteFeeDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm delete?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () async {
            await DbHelper().deleteFee(feeId: widget.feeId);

            Navigator.of(context).pop(true);
          },
          child: Text("Proceed"),
        ),
      ],
    );
  }
}

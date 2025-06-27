import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:yma_app/utils/db_helper.dart';

class AddMemberFeeDialog extends StatefulWidget {
  final int memberId;
  const AddMemberFeeDialog({super.key, required this.memberId});

  @override
  State<AddMemberFeeDialog> createState() => _AddMemberFeeDialogState();
}

class _AddMemberFeeDialogState extends State<AddMemberFeeDialog> {
  final _amountCtrl = TextEditingController();
  final _paidOnCtrl = TextEditingController();
  final _yearCtrl = TextEditingController();

  DateTime? _selectedDate;

  @override
  void dispose() {
    _amountCtrl.dispose();
    _paidOnCtrl.dispose();
    _yearCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add Member Fee"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          TextFormField(
            controller: _amountCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Amount"),
            ),
          ),
          TextFormField(
            controller: _paidOnCtrl,
            onTap: () async {
              _selectedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(DateTime.now().year),
                lastDate: DateTime(DateTime.now().year + 1),
              );

              if (_selectedDate != null) {
                _paidOnCtrl.text = DateFormat(
                  "dd-MMM-yyyy",
                ).format(_selectedDate!);
              }
              log(
                "selected date -> $_selectedDate",
                name: 'add_member_fee_dialog',
              );
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Paid on"),
            ),
          ),
          TextFormField(
            controller: _yearCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Year"),
            ),
          ),
          TextButton(
            onPressed: () async {
              if (_amountCtrl.text.isEmpty) {
                MotionToast.error(
                  description: Text("Member Fee chhu lut rawh"),
                  displaySideBar: false,
                ).show(context);
                return;
              }
              if (_selectedDate == null) {
                MotionToast.error(
                  description: Text("Pek ni thlang rawh"),
                  displaySideBar: false,
                ).show(context);
                return;
              }
              if (_yearCtrl.text.isEmpty) {
                MotionToast.error(
                  description: Text("Year chhu lut rawh"),
                  displaySideBar: false,
                ).show(context);
                return;
              }
              await DbHelper().addFeeForMember(
                memberId: widget.memberId,
                fee: double.parse(_amountCtrl.text),
                paidOn: _selectedDate!,
                year: int.parse(_yearCtrl.text),
              );
              Navigator.of(context).pop(true);
            },

            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}

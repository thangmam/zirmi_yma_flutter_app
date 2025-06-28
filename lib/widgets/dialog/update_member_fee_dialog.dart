import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:yma_app/database/app_database.dart';
import 'package:yma_app/utils/db_helper.dart';

class UpdateMemberFeeDialog extends StatefulWidget {
  final MemberFeeData fee;
  const UpdateMemberFeeDialog({super.key, required this.fee});

  @override
  State<UpdateMemberFeeDialog> createState() => _AddMemberFeeDialogState();
}

class _AddMemberFeeDialogState extends State<UpdateMemberFeeDialog> {
  final _amountCtrl = TextEditingController();
  final _paidOnCtrl = TextEditingController();
  final _yearCtrl = TextEditingController();

  DateTime? _selectedDate;

  @override
  void initState() {
    _amountCtrl.text = widget.fee.amountPaid.toString();
    _paidOnCtrl.text = DateFormat("dd-MMM-yyyy").format(widget.fee.paidOn);
    _yearCtrl.text = widget.fee.year.toString();
    _selectedDate = widget.fee.paidOn;
    super.initState();
  }

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
      title: Text("Update Member Fee"),
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

              await DbHelper().updateFeeForMember(
                feeId: widget.fee.id,
                fee: double.parse(_amountCtrl.text),
                paidOn: _selectedDate!,
                year: int.parse(_yearCtrl.text),
              );

              Navigator.of(context).pop(true);
            },

            child: Text("Update"),
          ),
        ],
      ),
    );
  }
}

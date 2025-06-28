import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yma_app/database/app_database.dart';
import 'package:yma_app/utils/db_helper.dart';
import 'package:yma_app/widgets/dialog/add_member_fee_dialog.dart';
import 'package:yma_app/widgets/dialog/confirm_delete_fee_dialog.dart';
import 'package:yma_app/widgets/dialog/update_member_fee_dialog.dart';

class MemberFeeScreen extends StatefulWidget {
  final MemberInfoData member;
  const MemberFeeScreen({super.key, required this.member});

  @override
  State<MemberFeeScreen> createState() => _MemberFeeScreenState();
}

class _MemberFeeScreenState extends State<MemberFeeScreen> {
  List<MemberFeeData>? _feeList;

  @override
  initState() {
    super.initState();
    _fetchFees(page: 1);
  }

  Future<void> _fetchFees({int page = 1}) async {
    final result = await DbHelper().getFeesForMember(
      memberId: widget.member.id,
      page: 1,
    );
    if (_feeList == null) {
      _feeList = result;
    } else {
      _feeList!.addAll(result);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.member.hming),
        actions: [
          IconButton(
            onPressed: () async {
              final result = await showDialog<bool?>(
                context: context,
                builder: (context) =>
                    AddMemberFeeDialog(memberId: widget.member.id),
              );
              log("showDialog return - $result", name: 'member_fee_screen');
              if (result == true) {
                _feeList?.clear();
                _fetchFees(page: 1);
              }
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        itemBuilder: (context, index) {
          final fee = _feeList![index];
          return Card.outlined(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Year: ${fee.year}", style: TextStyle(fontSize: 20)),
                  Text(
                    "Amount Paid : ${fee.amountPaid}",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "Paid on: ${DateFormat("dd-MMM-yyyy").format(fee.paidOn)}",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () async {
                          final result = await showDialog<bool?>(
                            context: context,
                            builder: (context) =>
                                UpdateMemberFeeDialog(fee: fee),
                          );
                          if (result == true) {
                            _feeList?.clear();
                            _fetchFees(page: 1);
                          }
                        },
                        child: Text("Edit"),
                      ),
                      TextButton(
                        onPressed: () async {
                          final result = await showDialog<bool?>(
                            context: context,
                            builder: (context) =>
                                ConfirmDeleteFeeDialog(feeId: fee.id),
                          );

                          if (result == true) {
                            _feeList?.clear();
                            _fetchFees(page: 1);
                          }
                        },
                        child: Text(
                          "Delete",
                          style: TextStyle(color: Colors.red.shade800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _feeList?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 4);
        },
      ),
    );
  }
}

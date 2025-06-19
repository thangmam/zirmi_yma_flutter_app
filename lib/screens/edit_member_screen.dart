import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:yma_app/constants/common_const.dart';
import 'package:yma_app/database/app_database.dart';
import 'package:yma_app/utils/db_helper.dart';

class EditMemberScreen extends StatefulWidget {
  final MemberInfoData member;
  const EditMemberScreen({super.key, required this.member});

  @override
  State<EditMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<EditMemberScreen> {
  final _hmingCtrl = TextEditingController();

  final _paHmingCtrl = TextEditingController();
  final _nuHmingCtrl = TextEditingController();
  final _currentAddrCtrl = TextEditingController();
  final _prevAddrCtrl = TextEditingController();

  String _addressStatus = CommonConst.addressStatusAwmNghet;
  String _gender = CommonConst.genderFemale;

  String _martialStatus = CommonConst.maritalStatusMarried;

  @override
  void dispose() {
    _hmingCtrl.dispose();
    _paHmingCtrl.dispose();
    _currentAddrCtrl.dispose();
    _prevAddrCtrl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _hmingCtrl.text = widget.member.hming;
    _paHmingCtrl.text = widget.member.paHming ?? '';
    _nuHmingCtrl.text = widget.member.nuHming ?? '';
    _currentAddrCtrl.text = widget.member.currentAddress;

    log(
      "address status ${widget.member.addressStatus}",
      name: 'edit_member_screen',
    );

    _martialStatus = widget.member.maritalStatus;
    _gender = widget.member.gender;
    _addressStatus = widget.member.addressStatus;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update member")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              SizedBox(height: 10),
              TextFormField(
                controller: _hmingCtrl,
                decoration: InputDecoration(
                  labelText: "Hming*",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              TextFormField(
                controller: _paHmingCtrl,
                decoration: InputDecoration(
                  labelText: "Pa Hming",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              TextFormField(
                controller: _nuHmingCtrl,
                decoration: InputDecoration(
                  labelText: "Nu Hming",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              TextFormField(
                controller: _currentAddrCtrl,
                decoration: InputDecoration(
                  labelText: "Khua/Veng*",
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      value: CommonConst.genderFemale,
                      title: Text("Female"),
                      groupValue: _gender,
                      onChanged: (value) {
                        if (value != null) {
                          _gender = value;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      value: CommonConst.genderMale,
                      title: Text("Male"),
                      groupValue: _gender,
                      onChanged: (value) {
                        if (value != null) {
                          _gender = value;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      value: CommonConst.addressStatusAwmNghet,
                      title: Text("Awm nghet"),
                      groupValue: _addressStatus,
                      onChanged: (value) {
                        if (value != null) {
                          _addressStatus = value;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      value: CommonConst.addressStatusPem,
                      title: Text("Pem"),
                      groupValue: _addressStatus,
                      onChanged: (value) {
                        if (value != null) {
                          _addressStatus = value;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ],
              ),
              if (_addressStatus == CommonConst.addressStatusPem)
                TextFormField(
                  controller: _prevAddrCtrl,
                  decoration: InputDecoration(
                    labelText: "Khua/Veng hmasa",
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              DropdownButtonFormField<String>(
                value: _martialStatus,
                decoration: InputDecoration(
                  label: Text("Marital Status"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: CommonConst.maritalStatusMarried,
                    child: Text("Married"),
                  ),
                  DropdownMenuItem(
                    value: CommonConst.maritalStatusSingle,
                    child: Text("Single"),
                  ),
                  DropdownMenuItem(
                    value: CommonConst.maritalStatusWidow,
                    child: Text("Widow"),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    _martialStatus = value;
                  }
                },
              ),
              OutlinedButton(
                onPressed: () async {
                  if (_hmingCtrl.text.isEmpty) {
                    log("Hming chhu lut lo", name: "add_member_screen");
                    MotionToast.error(
                      description: Text(
                        "Hming chhu lut rawh!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      displaySideBar: false,
                    ).show(context);
                    return;
                  }
                  if (_currentAddrCtrl.text.isEmpty) {
                    MotionToast.error(
                      description: Text(
                        "Khua/Veng chhu lut rawh",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      displaySideBar: false,
                    ).show(context);
                    return;
                  }

                  if (_addressStatus == CommonConst.addressStatusPem) {
                    if (_prevAddrCtrl.text.isEmpty) {
                      MotionToast.error(
                        description: Text(
                          "Khua/Veng hmasa chhu lut rawh",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        displaySideBar: false,
                      ).show(context);
                      return;
                    }
                  }

                  log("Ready to insert to database", name: "add_member_screen");

                  await DbHelper().updateMember(
                    memberId: widget.member.id,
                    hming: _hmingCtrl.text,
                    currentAddress: _currentAddrCtrl.text,
                    gender: _gender,
                    maritalStatus: _martialStatus,
                    addressStatus: _addressStatus,
                    nuHming: _nuHmingCtrl.text,
                    paHming: _paHmingCtrl.text,
                    previousAddress: _prevAddrCtrl.text,
                  );
                  MotionToast.success(
                    description: Text("Member updated successfully"),
                    displaySideBar: false,
                  ).show(context);
                  Navigator.of(context).pop(true);
                },
                child: Text("Update member"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}

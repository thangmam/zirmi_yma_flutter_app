import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:yma_app/database/app_database.dart';
import 'package:yma_app/screens/edit_member_screen.dart';
import 'package:yma_app/screens/member_fee_screen.dart';
import 'package:yma_app/utils/db_helper.dart';
import 'package:yma_app/utils/debouncer.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  List<MemberInfoData>? _memberList;

  bool _isLoading = true;

  Timer? _timer;
  final _debouncer = Debouncer();

  final _searchCtrl = TextEditingController();

  @override
  void initState() {
    _fetchYMAMembers(page: 1);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _debouncer.dispose();
    _searchCtrl.dispose();
  }

  Future<void> _fetchYMAMembers({int page = 1}) async {
    _memberList = await DbHelper().getMemberList(
      page: 1,
      keyword: _searchCtrl.text,
    );
    _isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("YMA Member list")),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _buildMainContent(context),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextFormField(
            controller: _searchCtrl,
            decoration: InputDecoration(
              label: Text("Search YMA member"),
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (s) {
              // log("onChanged called : $s", name: 'member_list_screen');
              _debouncer.debounce(() {
                log("Ready to query database $s", name: 'member_list_screen');
                _fetchYMAMembers(page: 1);
              }, duration: Duration(milliseconds: 400));
            },
          ),
        ),
        SizedBox(height: 10),
        if (_memberList == null || _memberList?.isEmpty == true)
          Center(child: Text("YMA Member dah luh a la ni lo")),

        if (_memberList?.isNotEmpty == true)
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                _isLoading = true;
                _memberList?.clear();
                setState(() {});
                _fetchYMAMembers(page: 1);
                return Future.delayed(Duration(milliseconds: 200));
              },
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 12),
                separatorBuilder: (context, index) {
                  return SizedBox(height: 4);
                },
                itemBuilder: (context, index) {
                  final member = _memberList![index];
                  return Card.outlined(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            member.hming,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(member.gender),
                          Text(
                            member.currentAddress,
                            style: TextStyle(color: Colors.black54),
                          ),
                          if (member.nuHming != null)
                            Text(member.nuHming ?? ''),
                          if (member.paHming != null)
                            Text(member.paHming ?? ''),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _deleteMember(member.id);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red.shade800,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  final shouldRefresh =
                                      await Navigator.of(context).push<bool?>(
                                        MaterialPageRoute(
                                          builder: (ctx) =>
                                              EditMemberScreen(member: member),
                                        ),
                                      );
                                  if (shouldRefresh == true) {
                                    _isLoading = true;
                                    _memberList?.clear();
                                    setState(() {});
                                    _fetchYMAMembers(page: 1);
                                  }
                                },
                                icon: Icon(Icons.edit, color: Colors.green),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MemberFeeScreen(member: member),
                                    ),
                                  );
                                },
                                child: Text("Fees"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _memberList?.length ?? 0,
              ),
            ),
          ),
      ],
    );
  }

  Future<void> _deleteMember(int memberId) async {
    final confirmDelete = await showDialog<bool?>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm delete?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Close"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text("Proceed"),
          ),
        ],
      ),
    );
    if (confirmDelete == true) {
      // delete member from database
      await DbHelper().deleteMember(memberId: memberId);
      MotionToast.info(
        description: Text("Member deleted successfully"),
        displaySideBar: false,
      ).show(context);
      _isLoading = true;
      _memberList?.clear();
      setState(() {});
      _fetchYMAMembers(page: 1);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:yma_app/utils/db_helper.dart';
import 'package:yma_app/utils/member_changed_notifyer.dart';
import 'package:yma_app/widgets/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _memberCount = 0;

  @override
  void initState() {
    MemberChangedNotifyer().addListener(memberChangedListener);
    _getMembersCount();
    super.initState();
  }

  @override
  void dispose() {
    MemberChangedNotifyer().removeListener(memberChangedListener);

    super.dispose();
  }

  void memberChangedListener() {
    _getMembersCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Young Mizo Association")),
      drawer: SideMenu(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Member: $_memberCount",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            TextButton(
              onPressed: () {
                _getMembersCount();
              },
              child: Text("Refresh"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getMembersCount() async {
    _memberCount = await DbHelper().getTotalMember();
    setState(() {});
  }
}

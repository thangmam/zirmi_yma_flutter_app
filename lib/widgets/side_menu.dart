import 'package:flutter/material.dart';
import 'package:yma_app/screens/add_member_screen.dart';
import 'package:yma_app/screens/member_list_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 240,
      child: Column(
        children: [
          SizedBox(height: 30),
          _buildMenuItem(
            title: "Add Member",
            icon: Icons.people,
            child: AddMemberScreen(),
          ),
          _buildMenuItem(
            title: "Member List",
            icon: Icons.people_rounded,
            child: MemberListScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String title,
    required IconData icon,
    Widget? child,
  }) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        if (child != null) {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (ctx) => child));
        }
      },
    );
  }
}

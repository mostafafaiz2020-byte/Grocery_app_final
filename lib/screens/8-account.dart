// screens/8-account.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';
import 'package:grocery_app1/widgets/8_account_info.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profale.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '𝑴𝒐𝒔𝒕𝒂𝒇𝒂 𝑭𝒂𝒊𝒛',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          '✉️ 𝒎𝒐𝒔𝒕𝒂𝒇𝒂.𝒇𝒂𝒊𝒛𝟐𝟎𝟐𝟎@𝒈𝒎𝒂𝒊𝒍.𝒄𝒐𝒎',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xff7C7C7C),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            const AccountInfo(icon: Icons.shopping_bag_outlined, text: 'Order'),
            const Divider(),

            const AccountInfo(
              icon: Icons.contact_page_outlined,
              text: 'My Details',
            ),
            const Divider(),

            const AccountInfo(
              icon: Icons.location_on_outlined,
              text: 'Delivery Address',
            ),
            const Divider(),

            const AccountInfo(
              icon: Icons.credit_card_outlined,
              text: 'Payment Methods',
            ),
            const Divider(),

            const AccountInfo(
              icon: Icons.confirmation_number_outlined,
              text: 'Promo Cord',
            ),
            const Divider(),

            const AccountInfo(
              icon: Icons.notifications_none_outlined,
              text: 'Notifecations',
            ),
            const Divider(),

            const AccountInfo(icon: Icons.help_outline, text: 'Help'),
            const Divider(),

            const AccountInfo(icon: Icons.error_outline, text: 'About'),
            const Divider(),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: SizedBox(
                width: double.infinity,
                height: 67,
                child: GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Home();
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      children: [
                        Icon(Icons.logout_outlined, color: Color(0xff53B175)),
                        SizedBox(width: 15),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff53B175),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/constants/app_color.dart';

class DashboardTransactionButton extends StatelessWidget {
  const DashboardTransactionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton.icon(
        onPressed: () {
          // Sprint 4
        },
        icon: const Icon(Icons.point_of_sale_rounded, color: Colors.white),
        label: const Text(
          "Mulai Transaksi",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}

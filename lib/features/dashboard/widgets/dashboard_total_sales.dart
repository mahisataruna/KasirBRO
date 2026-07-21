import 'package:flutter/material.dart';

import '../../../core/constants/app_color.dart';

class DashboardTotalSales extends StatelessWidget {
  final double totalSales;
  final int totalTransaction;

  const DashboardTotalSales({
    super.key,
    required this.totalSales,
    required this.totalTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.payments_rounded, color: AppColor.primary, size: 30),
              SizedBox(width: 10),
              Text(
                "Penjualan Hari Ini",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),

          const SizedBox(height: 24),

          Text(
            "Rp ${totalSales.toStringAsFixed(0)}",
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$totalTransaction Transaksi",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text("Hari Ini", style: TextStyle(color: Colors.grey.shade600)),
            ],
          ),
        ],
      ),
    );
  }
}

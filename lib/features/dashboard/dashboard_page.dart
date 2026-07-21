import 'package:flutter/material.dart';

import '../../core/constants/app_color.dart';
import 'widgets/dashboard_header.dart';
import 'widgets/dashboard_total_sales.dart';
import 'widgets/dashboard_stat_card.dart';
import 'widgets/dashboard_transaction_button.dart';
import 'widgets/dashboard_recent_activity.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              DashboardHeader(),

              DashboardTotalSales(totalSales: 0, totalTransaction: 0),
              SizedBox(height: 10),

              Row(
                children: [
                  // stat card
                  DashboardStatCard(
                    icon: Icons.receipt_long,
                    color: Colors.blue,
                    title: "Order",
                    value: "0",
                  ),
                  DashboardStatCard(
                    icon: Icons.coffee,
                    color: Colors.brown,
                    title: "Produk",
                    value: "0",
                  ),
                ],
              ),

              Row(
                children: [
                  DashboardStatCard(
                    icon: Icons.star,
                    color: Colors.amber,
                    title: "Favorit",
                    value: "-",
                  ),
                  DashboardStatCard(
                    icon: Icons.attach_money,
                    color: Colors.green,
                    title: "Pendapatan",
                    value: "Rp0",
                  ),
                ],
              ),
              SizedBox(height: 20),
              // cta button
              DashboardTransactionButton(),
              // recent aktf
              DashboardRecentActivity(),
            ],
          ),
        ),
      ),
    );
  }
}

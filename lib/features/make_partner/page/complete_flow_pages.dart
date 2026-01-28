import 'package:flutter/material.dart';
import 'dart:async';

import 'build_choose_result.dart';

// ===== 1. SEARCHING PAGE =====
class SearchingPage extends StatefulWidget {
  final List<String> selectedPlatforms;

  const SearchingPage({Key? key, required this.selectedPlatforms})
    : super(key: key);

  @override
  State<SearchingPage> createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> {
  Map<String, SearchStatus> platformStatus = {};
  int currentSearchingIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Initialize all platforms as pending
    for (var platform in widget.selectedPlatforms) {
      platformStatus[platform] = SearchStatus.pending;
    }
    startSearching();
  }

  void startSearching() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentSearchingIndex < widget.selectedPlatforms.length) {
        setState(() {
          // Set current as searching
          platformStatus[widget.selectedPlatforms[currentSearchingIndex]] =
              SearchStatus.searching;
        });

        // After 2 seconds, mark as success and move to next
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            setState(() {
              platformStatus[widget.selectedPlatforms[currentSearchingIndex]] =
                  SearchStatus.success;
              currentSearchingIndex++;

              // If all done, navigate to results
              if (currentSearchingIndex >= widget.selectedPlatforms.length) {
                _timer?.cancel();
                Future.delayed(const Duration(milliseconds: 500), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BuildChooseResultPage(),
                    ),
                  );
                });
              }
            });
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'We are searching for your\ncompany...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: widget.selectedPlatforms.length,
                itemBuilder: (context, index) {
                  final platform = widget.selectedPlatforms[index];
                  final status = platformStatus[platform]!;

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: status == SearchStatus.success
                          ? Colors.green[50]
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: status == SearchStatus.success
                            ? Colors.green[200]!
                            : Colors.grey[200]!,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          platform,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        _buildStatusIndicator(status),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusIndicator(SearchStatus status) {
    switch (status) {
      case SearchStatus.pending:
        return Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300]!, width: 2),
          ),
        );
      case SearchStatus.searching:
        return SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green[700]!),
          ),
        );
      case SearchStatus.success:
        return Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green[700],
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 16),
        );
    }
  }
}

enum SearchStatus { pending, searching, success }

// ===== 2. RESULT PAGE =====
class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Result',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'We were able to find 2 of your services,\nbusinesses or companies',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  _buildBusinessCard(
                    context,
                    'eten & drinker cafe',
                    '199 Oakway Lane, Woodland Hills, CA 91303',
                    'https://images.unsplash.com/photo-1554118811-1e0d58224f24',
                  ),
                  const SizedBox(height: 16),
                  _buildBusinessCard(
                    context,
                    'KlippKroog restaurant',
                    '42 Barnsby Street, Beverly Hills, CA 90210',
                    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BuildChooseResultPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Select and continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBusinessCard(
    BuildContext context,
    String name,
    String address,
    String imageUrl,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Container(
              height: 160,
              color: Colors.grey[300],
              child: const Center(
                child: Icon(Icons.restaurant, size: 60, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        address,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/di/dependency_injection.dart';
import 'package:rick_and_morty/presentation/characters/bloc/characters_screen_bloc.dart';
import 'package:rick_and_morty/presentation/characters/enums/gender_type.dart';
import 'package:rick_and_morty/presentation/characters/enums/status_type.dart';
import 'package:rick_and_morty/presentation/characters/widgets/character_card.dart';
import 'package:rick_and_morty/presentation/characters/widgets/characters_filter_widget.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  var currentPage = 1;
  String _query = '';
  Timer? _debounce;
  StatusType? _selectedStatus;
  GenderType? _selectedGender;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272b33),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/app_logo.png'),
        ),
        leadingWidth: 60.0,
        title: const Text(
          'The Rick and Morty API',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: TextField(
                      controller: _searchController,
                      onChanged: _onSearchChanged,
                      cursorColor: const Color(0xFF272b33),
                      decoration: InputDecoration(
                        hintText: 'Search characters...',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Color(0xFF3c3e44), width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      onPressed: _showFilterDialog,
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                    if (_selectedStatus != null || _selectedGender != null)
                      const Positioned(
                        right: 9,
                        top: 10,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.green,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<CharactersScreenBloc, CharactersScreenState>(
              listener: (context, state) {
                if (state.errorMessage != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Something went wrong'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              builder: (_, state) {
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  child: Stack(
                    children: [
                      if (state.characterCards.isEmpty && !state.isLoading)
                        const Center(
                          child: Text(
                            'No characters found.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )
                      else
                        Scrollbar(
                          controller: _scrollController,
                          thumbVisibility: true,
                          trackVisibility: true,
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: state.characterCards.length,
                            padding: const EdgeInsets.all(16.0),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: CharacterCard(
                                    viewModel: state.characterCards[index]),
                              );
                            },
                          ),
                        ),
                      if (state.isLoading)
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0x459E9E9E),
                          ),
                          child: Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<CharactersScreenBloc>().add(CharactersScreenEvent.loadMore(
            pages: currentPage + 1,
            name: _query,
            status: _selectedStatus,
            gender: _selectedGender,
          ));

      currentPage++;
    }
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        setState(() {
          _query = value;
          currentPage = 1;
        });

        context.read<CharactersScreenBloc>().add(CharactersScreenEvent.search(
              name: _query,
              status: _selectedStatus,
              gender: _selectedGender,
            ));
      },
    );
  }

  void _onFilter() {
    getIt<CharactersScreenBloc>().add(
      CharactersScreenEvent.search(
        name: _searchController.text,
        status: _selectedStatus,
        gender: _selectedGender,
      ),
    );
  }

  Future<void> _onRefresh() async {
    context.read<CharactersScreenBloc>().add(
          CharactersScreenEvent.search(
            name: _searchController.text,
            status: _selectedStatus,
            gender: _selectedGender,
          ),
        );
  }

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) {
        var selectedStatus = _selectedStatus;
        var selectedGender = _selectedGender;

        return AlertDialog(
          backgroundColor: const Color(0xFF3c3e44),
          title: const Text(
            'Filter Characters',
            style: TextStyle(color: Colors.white),
          ),
          content: CharactersFilterWidget(
            selectedStatus: selectedStatus,
            selectedGender: selectedGender,
            onStatusChanged: (val) {
              selectedStatus = val;
            },
            onGenderChanged: (val) {
              selectedGender = val;
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                setState(() {
                  _selectedStatus = null;
                  _selectedGender = null;
                });

                _onFilter();
              },
              child: const Text(
                'Clear',
                style: TextStyle(color: Colors.red),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);

                setState(() {
                  _selectedStatus = selectedStatus;
                  _selectedGender = selectedGender;
                });

                _onFilter();
              },
              child: const Text('Apply'),
            ),
          ],
        );
      },
    );
  }
}

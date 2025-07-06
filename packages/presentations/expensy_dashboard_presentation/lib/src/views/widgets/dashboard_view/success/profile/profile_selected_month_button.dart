import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:intl/intl.dart';

class ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButton extends StatefulWidget {
  const ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButton({super.key});

  @override
  State<ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButton> createState() =>
      _ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButtonState();
}

class _ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButtonState
    extends State<ExpensyDashboardPresentationViewSuccessPageProfileSelectedMonthButton> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  late DateTime _selectedMonthDate;
  late String _selectedMonthLabel;

  final List<DateTime> _monthDates = List.generate(
    12,
        (index) {
      final now = DateTime.now();
      return DateTime(now.year, now.month - index, 1);
    },
  );

  @override
  void initState() {
    super.initState();
    _selectedMonthDate = DateTime(DateTime.now().year, DateTime.now().month, 1);
    _selectedMonthLabel = "This month";
  }

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _removeDropdown();
    }
  }

  void _removeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _onMonthSelected(DateTime monthDate) {
    setState(() {
      _selectedMonthDate = monthDate;
      _selectedMonthLabel = DateFormat("MMMM yyyy").format(monthDate);
    });

    _removeDropdown();

    // Dispatch your BLoC event with selected DateTime
    context.read<ExpensyDashboardPresentationRemoteBloc>().add(
      ExpensyDashboardPresentationRemoteSelectedMonthChanged(context, selectedMonth: monthDate),
    );
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height + 4,
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 4),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 250),
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shrinkWrap: true,
                children: _monthDates.map((monthDate) {
                  final label = DateFormat("MMMM yyyy").format(monthDate);
                  return ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                    title: Text(
                      label,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: label == _selectedMonthLabel ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    onTap: () => _onMonthSelected(monthDate),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: _toggleDropdown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedMonthLabel,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(width: 5),
            Icon(
              _overlayEntry != null ? FontAwesomeIcons.angleUp : FontAwesomeIcons.angleDown,
              size: 15,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _removeDropdown();
    super.dispose();
  }
}

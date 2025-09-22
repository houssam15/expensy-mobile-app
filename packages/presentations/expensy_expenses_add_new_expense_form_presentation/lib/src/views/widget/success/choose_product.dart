import "package:expensy_common/expensy_common.dart";
import "package:expensy_expenses_add_new_expense_form_presentation/src/views/widget/success/category_item.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "../widget.dart";

class ChooseProduct extends StatefulWidget {
  ChooseProduct({
    super.key,
    this.categories = const [],
    this.selectedCategoryProducts = const [],
    this.selectedProduct,
    this.onCategoryClicked,
    this.selectedCategory,
    this.onProductClicked,
    this.onTotalChanged,
    this.onSaveClicked
  });

  final List<ExpensyExpenseCategory> categories;
  final ExpensyExpenseCategory? selectedCategory;
  final List<ExpensyProduct> selectedCategoryProducts;
  final ExpensyProduct? selectedProduct;
  final void Function(ExpensyExpenseCategory)? onCategoryClicked;
  final void Function(ExpensyProduct)? onProductClicked;
  final  void Function(double? total)? onTotalChanged;
  final void Function()? onSaveClicked;

  @override
  State<ChooseProduct> createState() => _ChooseProductState();
}

class _ChooseProductState extends State<ChooseProduct> {
  TextEditingController? _totalController;

  @override
  void initState() {
    super.initState();
    _totalController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.65,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Header with close button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           InkWell(
                               onTap : () => Navigator.pop(context),
                               child: Icon(Icons.close,size: 20)
                           ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Choose a category section
                    _buildSectionHeader(
                      title: "Choose a category",
                      onAdd: () {},
                    ),
                    const SizedBox(height: 10),

                    // Category list or selected category
                    if (widget.selectedCategory == null)
                      SizedBox(
                        height: 120,
                        child: widget.categories.isNotEmpty
                            ? ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: widget.categories.length,
                                itemBuilder: (context, index) => CategoryItem(
                                  category: widget.categories[index],
                                  onTap: () => widget.onCategoryClicked?.call(widget.categories[index]),
                                ),
                              )
                            : const Center(
                                  child: Text("No categories available"),
                              ),
                      )
                    else CategoryItem(category: widget.selectedCategory!),

                    if (widget.selectedCategory != null) const SizedBox(height: 16),

                    // Choose a product section (only shown when category is selected)
                    if (widget.selectedCategory != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionHeader(
                            title: "Choose a product",
                            onAdd: () {},
                          ),
                          const SizedBox(height: 10),
                          if(widget.selectedProduct== null)
                          SizedBox(
                            height: 150,
                            child: widget.selectedCategoryProducts.isNotEmpty
                                ? ListView.builder(
                              itemCount: widget.selectedCategoryProducts.length,
                              itemBuilder: (context, index) => ProductItem(
                                product: widget.selectedCategoryProducts[index],
                                onTap: () => widget.onProductClicked
                                    ?.call(widget.selectedCategoryProducts[index]),
                              ),
                            )
                                : const Center(
                              child: Text("No products available for this category"),
                            ),
                          )
                          else
                          ProductItem(
                            product: widget.selectedProduct!
                          )
                        ],
                      ),
                    const SizedBox(height: 10),
                    // Add total section (fixed at bottom)
                    if (widget.selectedProduct != null)
                      Column(
                        children: [
                          _buildSectionHeader(
                            title: "Add total for ${widget.selectedProduct?.getName() ?? 'selected product'}",
                            hideAddButton: true
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextFormField(
                              controller: _totalController,
                              onChanged: (value) {
                                try{
                                  widget.onTotalChanged?.call(double.parse(value));
                                }catch(_){}
                              },
                              decoration: InputDecoration(
                                labelText: 'Amount',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey, // Label color when not focused
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black
                                ),
                                suffix: Text(
                                  "DH",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey
                                  ),
                                ),
                                prefixIcon: const Icon(Icons.attach_money),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                // Control colors for different states
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.blue, width: 2.0), // Focused border color
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.grey), // Normal border color
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.red), // Error border color
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.red, width: 2.0), // Focused error border
                                ),
                                // Label color when focused
                                floatingLabelStyle: TextStyle(
                                  color: Colors.blue, // Color when focused
                                  fontSize: 14,
                                ),
                                // Prefix icon color
                                prefixIconColor: Colors.grey, // Normal state
                                // Prefix icon color when focused
                                focusColor: Colors.blue, // Affects the cursor and selection handle
                                // Cursor color
                                //cursorColor: Colors.blue,
                                // Text color
                                //style: TextStyle(color: Colors.black87),
                              ),
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,


                            )
                          ),
                        ],
                      ),

                    // Add flexible spacer to push content to top
                    if(widget.selectedProduct!=null && _totalController?.text.isNotEmpty == true)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: widget.onSaveClicked,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        ),
                        child: const Text('Save product'),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader({required String title, VoidCallback? onAdd,bool hideAddButton = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(
        mainAxisAlignment: hideAddButton ? MainAxisAlignment.start : MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
          if(!hideAddButton)
          InkWell(
            onTap: onAdd,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
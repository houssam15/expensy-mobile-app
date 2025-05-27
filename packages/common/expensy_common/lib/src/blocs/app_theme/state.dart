part of "bloc.dart";

class ExpensyCommonAppThemeState extends Equatable{
  ThemeMode themeMode;

  ExpensyCommonAppThemeState({
    this.themeMode = ThemeMode.light
  });

  ExpensyCommonAppThemeState copyWith({
    ThemeMode? themeMode
  }){
    return ExpensyCommonAppThemeState(
      themeMode: themeMode ?? this.themeMode
    );
  }

  bool isDark(){
    return themeMode == ThemeMode.dark;
  }

  @override
  List<Object?> get props => [themeMode];
}
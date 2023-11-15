import 'package:flutter/material.dart';

sealed class ButtonClick{
  final String value;
  ButtonClick(this.value);
}

class EqualsButtonClick extends ButtonClick{
  EqualsButtonClick(super.value);

}
class CommonButtonClick extends ButtonClick{
  CommonButtonClick(super.value);

}

class ClearButtonClick extends ButtonClick{
  ClearButtonClick(super.value);

}
class ClearEntryButtonClick extends ButtonClick{
  ClearEntryButtonClick(super.value);

}



class CustomButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const CustomButtonHub({super.key,required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    final colorOnPrimary = Theme.of(context).colorScheme.onPrimary;
    final colorPrimary = Theme.of(context).colorScheme.primary;
    final colorOnTertiary = Theme.of(context).colorScheme.onTertiary;
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: [
        Button(
          value: '%',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'CE',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(ClearEntryButtonClick(value)),
        ),
        Button(
          value: 'C',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        Button(value: '',color:  colorPrimary),
        Button(
          value: '7',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '8',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '9',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '/',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '4',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '5',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '6',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '*',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '1',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '2',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '3',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '-',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '0',
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '.',
          color: colorOnPrimary,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '=',
          color: colorOnTertiary,
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key,required this.value, this.color,this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : ()=> onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child:  Center(child: Text(value,style: Theme.of(context).textTheme.displaySmall,)),
        ),
      ),
    );
  }
}


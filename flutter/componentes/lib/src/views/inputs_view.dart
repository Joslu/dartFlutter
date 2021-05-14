import 'package:flutter/material.dart';

class InputsView extends StatefulWidget {
  const InputsView({Key key}) : super(key: key);

  @override
  _InputsViewState createState() => _InputsViewState();
}

class _InputsViewState extends State<InputsView> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';

  String _poderSeleccionado = 'Volar';

  List<String> _poderes = ['Fuego', 'Invissible', 'Volar', 'Visión'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
          Divider(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          counter: Text('Letrass ${_nombre.length}'),
          hintText: 'Nombre',
          labelText: 'Nombre',
          helperText: 'Escribe tu nombre',
          suffixIcon: Icon(Icons.person),
          icon: Icon(Icons.account_box_outlined)),
      textCapitalization: TextCapitalization.sentences,
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Correo es $_email'),
      trailing: Text(_poderSeleccionado),
    );
  }

  Widget _crearEmail() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Email',
          labelText: 'Email',
          helperText: 'Escribe tu correo',
          suffixIcon: Icon(Icons.mail),
          icon: Icon(Icons.alternate_email)),
      keyboardType: TextInputType.emailAddress,
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        labelText: 'Contraseña',
        helperText: 'Escribe tu clave',
        suffixIcon: Icon(Icons.vpn_key),
        icon: Icon(Icons.keyboard),
      ),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Fecha',
        labelText: 'Fecha de nacimiento',
        helperText: 'Escribe tu cumpleaño',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_view_day_outlined),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());

        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      locale: Locale('es', 'MX'),
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2026),
    );

    if (picked != null) {
      setState(() {
        _fecha =
            picked.toString().substring(0, 10).split('-').reversed.join('/');
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpt() {
    List<DropdownMenuItem<String>> lista = [];

    _poderes.forEach((poder) {
      lista.add(
        DropdownMenuItem(
          child: Text(poder),
          value: poder,
        ),
      );
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: [
        Icon(Icons.power),
        SizedBox(width: 10.0),
        DropdownButton(
          value: _poderSeleccionado,
          items: getOpt(),
          onChanged: (valor) {
            setState(() {
              _poderSeleccionado = valor;
            });
          },
        ),
      ],
    );
  }
}

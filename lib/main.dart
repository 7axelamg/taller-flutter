import 'package:flutter/material.dart';

class Reserva {
  final String habitacion;
  final String nombreCompleto;
  final String documento;
  final String celular;
  final String fechaEntrada;
  final String fechaSalida;
  final String estado;

  Reserva({
    required this.habitacion,
    required this.nombreCompleto,
    required this.documento,
    required this.celular,
    required this.fechaEntrada,
    required this.fechaSalida,
    required this.estado
  });
}

class ReservasHotel extends StatelessWidget {
  final List<Reserva> reservas = [
    Reserva(habitacion: "Suite Deluxe", nombreCompleto: "Juan Pérez", documento: "1020304050", celular: "3001234567", fechaEntrada: "2025-03-10", fechaSalida: "2025-03-15", estado: "Confirmada"),
    Reserva(habitacion: "Estándar", nombreCompleto: "Ana Gómez", documento: "1122334455", celular: "3109876543", fechaEntrada: "2025-04-01", fechaSalida: "2025-04-05", estado: "Pendiente"),
    Reserva(habitacion: "Suite Presidencial", nombreCompleto: "Carlos Rodríguez", documento: "2233445566", celular: "3205678910", fechaEntrada: "2025-05-20", fechaSalida: "2025-05-25", estado: "Confirmada"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reservas de Hotel")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
              child: Text("Administrador: Milton José Berrio Julio", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: reservas.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Icon(Icons.image, color: Colors.grey[700]))
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Habitación: ${reservas[index].habitacion}", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text("Nombre: ${reservas[index].nombreCompleto}"),
                                  Text("Documento: ${reservas[index].documento}"),
                                  Text("Celular: ${reservas[index].celular}"),
                                  Text("Entrada: ${reservas[index].fechaEntrada}"),
                                  Text("Salida: ${reservas[index].fechaSalida}"),
                                  Text("Estado: ${reservas[index].estado}", style: TextStyle(color: Colors.blue)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Aceptar"),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Cancelar"),
                              ),
                            ],
                          ),
                        ],
                      ),
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
}

void main() {
  runApp(MaterialApp(
    home: ReservasHotel(),
));
}
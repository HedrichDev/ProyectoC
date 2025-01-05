#include <iostream>
#include <vector>
#include <string>
#include <map>

using namespace std;

const int SIZE = 8;

void detectarVillanosYAmigos(const vector<string>& mapa) {
    vector<pair<int, int>> villanos;
    map<string, int> amigosContador; // Contador de amigos de cada villano
    map<string, vector<pair<int, int>>> posicionesVillanos; // Almacenar posiciones de villanos
    int villanosCount = 0; // Contador de villanos totales

    // Verificación de filas para 'XXX' (Harley Quinn)
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j <= SIZE - 3; ++j) {
            if (mapa[i].substr(j, 3) == "XXX") {
                villanos.emplace_back(i, j + 2); // Posición del villano
                posicionesVillanos["Harley Quinn"].emplace_back(i, j + 2);
                amigosContador["Harley Quinn"]++; // Contando amigos de Harley
                villanosCount++;
            }
        }
    }

    // Verificación para el Acertijo y Catwoman
    for (int i = 1; i < SIZE - 1; ++i) {
        for (int j = 1; j < SIZE - 1; ++j) {
            // Verifica el movimiento en 'L' para el Acertijo
            if (mapa[i][j] == 'O') {
                if ((i - 2 >= 0 && j - 1 >= 0 && mapa[i - 2][j - 1] == 'X') || // Arriba izquierda
                    (i - 2 >= 0 && j + 1 < SIZE && mapa[i - 2][j + 1] == 'X') || // Arriba derecha
                    (i + 2 < SIZE && j - 1 >= 0 && mapa[i + 2][j - 1] == 'X') || // Abajo izquierda
                    (i + 2 < SIZE && j + 1 < SIZE && mapa[i + 2][j + 1] == 'X')) { // Abajo derecha
                    amigosContador["Acertijo"]++;
                }

                // Verificación para Catwoman
                if (mapa[i - 1][j - 1] == 'X' && mapa[i - 1][j + 1] == 'X' &&
                    mapa[i + 1][j - 1] == 'X' && mapa[i + 1][j + 1] == 'X') {
                    amigosContador["Catwoman"]++;
                }
            }

            // Verificación del Joker
            if (mapa[i][j] == 'X' && i - 1 >= 0 && j + 1 < SIZE && mapa[i - 1][j + 1] == 'X') {
                posicionesVillanos["El Joker"].emplace_back(i - 1, j + 1);
                amigosContador["El Joker"]++;
            }

            // Verificación de Poison Ivy
            if (mapa[i][j] == 'X') {
                if (j > 0 && j < SIZE - 1 && mapa[i][j - 1] == 'X' && mapa[i][j + 1] == 'X') {
                    amigosContador["Poison Ivy "]++;
                }
            }

            // Verificación del Pingüino
            if (mapa[i][j] == 'O' && i + 1 < SIZE && j + 1 < SIZE && mapa[i + 1][j + 1] == 'O') {
                posicionesVillanos["El Pingüino"].emplace_back(i + 1, j + 1);
                amigosContador["El Pingüino"]++;
            }
        }
    }

    // Imprimir resultados
    cout << "Posiciones y amigos en el mapa (coordenadas empezando desde 1):" << endl;
    for (const auto& entry : posicionesVillanos) {
        cout << entry.first << " encontrados en las posiciones: ";
        for (const auto& pos : entry.second) {
            cout << "(" << pos.first + 1 << ", " << pos.second + 1 << ") "; // Sumar 1 a cada coordenada
        }
        cout << endl;
    }

    cout << "Número total de villanos: " << villanosCount << endl;
    cout << "Número de amigos del Acertijo: " << amigosContador["Acertijo"] << endl;
    cout << "Número de amigos de Catwoman: " << amigosContador["Catwoman"] << endl;
    cout << "Número de amigos de Poison Ivy: " << amigosContador["Poison Ivy"] << endl;
    cout << "Número de amigos del Joker: " << amigosContador["El Joker"] << endl;
    cout << "Número de amigos de Harley Quinn: " << amigosContador["Harley Quinn"] << endl;
    cout << "Número de amigos del Pingüino: " << amigosContador["El Pingüino"] << endl;
}

int main() {
    vector<string> mapa(SIZE);

    cout << "Introduce el mapa de la Ciudad Lego de Batman (8 filas, 8 columnas con 'X' y 'O'):" << endl;
    for (int i = 0; i < SIZE; ++i) {
        cout << "Fila " << i + 1 << ": ";
        cin >> mapa[i];

        // Validar que la entrada tenga la longitud correcta y contenga solo 'X' y 'O'
        while (mapa[i].length() != SIZE || mapa[i].find_first_not_of("XO") != string::npos) {
            cout << "Entrada inválida. Asegúrate de que la fila tenga exactamente " << SIZE << " caracteres ('X' y 'O' solamente): ";
            cin >> mapa[i];
        }
    }

    detectarVillanosYAmigos(mapa);
    return 0;
}
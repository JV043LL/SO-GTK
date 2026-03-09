# GTK-SO: Compilación de Programas GTK3

Este repositorio contiene una colección de ejemplos prácticos en C utilizando la librería **GTK+ 3.0**. Se incluye un script de automatización para facilitar la compilación masiva de los ejercicios.

---

## 📄 Descripción del Script `compilar.sh`

El archivo `compilar.sh` es un script de Bash que automatiza el proceso de compilación utilizando `gcc` y `pkg-config`. Este script compila los siguientes archivos fuente:

* **hello.c** → Genera el ejecutable `hello`.
* **hello-world-gtk.c** → Genera el ejecutable `hello-world-gtk`.
* **hello-button-gtk.c** → Genera el ejecutable `hello-button-gtk`.
* **hello-label-gtk.c** → Genera el ejecutable `hello-label-gtk`.
* **hello-world.c** → Genera el ejecutable `hello-world`.

## 🛠️ Requisitos del Sistema

Para ejecutar este script, asegúrate de tener instaladas las dependencias de desarrollo de GTK3:

```bash
sudo apt update
sudo apt install libgtk-3-dev build-essential pkg-config
```
🚀 Instrucciones de Uso
Dar permisos de ejecución al script:

```Bash
chmod +x compilar.sh
```
Ejecutar la compilación:

```Bash
./compilar.sh
```
Verificar resultados:
El script mostrará un mensaje de confirmación "✔️" por cada archivo compilado con éxito y finalizará con el mensaje: "¡Compilación terminada con éxito!".

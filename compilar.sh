#!/bin/bash

echo "Iniciando la compilación de los programas GTK3..."

# Compilar hello.c
gcc `pkg-config --cflags gtk+-3.0` hello.c -o hello `pkg-config --libs gtk+-3.0`
echo "✔️ hello.c compilado (helloEXE)"

# Compilar hello-world-gtk.c
gcc hello-world-gtk.c `pkg-config --cflags --libs gtk+-3.0` -o hello-world-gtk
echo "✔️ hello-world-gtk.c compilado (hello-world-gtk)"

# Compilar hello-button-gtk.c
gcc `pkg-config --cflags gtk+-3.0` hello-button-gtk.c -o hello-button-gtk `pkg-config --libs gtk+-3.0`
echo "✔️ hello-button-gtk.c compilado (hello-button-gtk)"

# Compilar hello-label-gtk.c
gcc hello-label-gtk.c `pkg-config --cflags --libs gtk+-3.0` -o hello-label-gtk
echo "✔️ hello-label-gtk.c compilado (hello-label-gtk)"

# Compilar hello-world.c
gcc hello-world.c -o hello-world `pkg-config --cflags --libs gtk+-3.0`
echo "✔️ hello-world.c compilado (hello-world)"

echo "¡Compilación terminada con éxito!"
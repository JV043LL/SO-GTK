//gcc hello-label-gtk.c $(pkg-config --cflags --libs gtk+-3.0) -o hello3

#include <gtk/gtk.h>

static void
activate_cb (GtkApplication *app,
             gpointer        user_data)
{
  GtkWidget *window;
  GtkWidget *label;

  window = gtk_application_window_new (app);
  gtk_window_set_title (GTK_WINDOW (window), "Hello World Title!");
  gtk_window_set_default_size (GTK_WINDOW (window), 200, 200);

  label = gtk_label_new ("Hello World label!");
  gtk_container_add (GTK_CONTAINER (window), label);
  gtk_widget_show (label);

  gtk_window_present (GTK_WINDOW (window));
}

int main (int    argc,
          char **argv)
{

  g_autoptr(GtkApplication) app = NULL;

  app = gtk_application_new ("org.sadiqpk.example", G_APPLICATION_FLAGS_NONE);
  g_signal_connect (app, "activate", G_CALLBACK (activate_cb), NULL);
  return g_application_run (G_APPLICATION (app), argc, argv);

}
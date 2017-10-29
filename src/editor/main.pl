
:- use_module('../uml.pl').
:- use_module(library(plgi)).

:- plgi_use_namespace('Gtk').

on_button_pressed(_Button, _UserData) :-
	writeln('Hello World!').

on_delete_window(_Widget, _Event, _UserData, true) :-
	gtk_main_quit.

main :-
	% predicate_property(user:main, file(File)),
	% file_directory_name(File, Directory),
	% format(atom(GladeFile), '~w/36-builder.glade', [Directory]),

	gtk_builder_new(Builder),
	gtk_builder_add_from_file(Builder, 'application_window.glade', _),
	gtk_builder_connect_signals(Builder, {null}),

	gtk_builder_get_object(Builder, 'application_window', Window),
	gtk_widget_show_all(Window),
	gtk_main,
	halt.

:- main.
:- halt.

package MyApp::Controller::Example;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MyApp::Controller::Example - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched MyApp::Controller::Example in Example.');
}

=head2 hello

=cut

sub hello :Path('/example/hello') {
    my ($self, $c) = @_;
    $c->response->body('Hello, Catalyst!');
}

=encoding utf8

=head1 AUTHOR

Thomas A Rio

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;

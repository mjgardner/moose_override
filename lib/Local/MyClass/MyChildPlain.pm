package Local::MyClass::MyChildPlain;

use Moose;
extends 'Local::MyClass';

sub my_method {
    my $self = shift;
    return 'child ' . $self->SUPER::my_method();
}

__PACKAGE__->meta->make_immutable();

1;

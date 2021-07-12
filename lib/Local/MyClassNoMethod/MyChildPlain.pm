package Local::MyClassNoMethod::MyChildPlain;

use Moose;
extends 'Local::MyClassNoMethod';

sub my_method {
    my $self = shift;
    return 'child ' . $self->SUPER::my_method();
}

__PACKAGE__->meta->make_immutable();

1;

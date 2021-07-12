package Local::MyClass::MyChildOverride;

use Moose;
extends 'Local::MyClass';

override my_method => sub {
    my $self = shift;
    return 'child ' . super;
};

__PACKAGE__->meta->make_immutable();

1;

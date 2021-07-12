package Local::MyClassNoMethod::MyChildOverride;

use Moose;
extends 'Local::MyClassNoMethod';

override my_method => sub {
    my $self = shift;
    return 'child ' . super;
};

__PACKAGE__->meta->make_immutable();

1;

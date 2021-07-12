package Local::MyClass;

use Moose;

sub my_method {
    return blessed $_[0];
}

__PACKAGE__->meta->make_immutable();

1;

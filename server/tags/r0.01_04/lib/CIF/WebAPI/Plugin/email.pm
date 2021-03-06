package CIF::WebAPI::Plugin::email;
use base 'CIF::WebAPI::Plugin';

sub prepare {
    my $self = shift;
    my $frag = shift;

    return unless(isEmail($frag));
    return(1);
}

sub buildNext {
    my ($self,$frag,$req) = @_;

    if(isEmail($frag)){
        $self->{'query'} = $frag;
        return $self;
    } else {
        return $self->SUPER::buildNext($frag,$req);
    }
}

sub isEmail {
    my $e = shift;
    return unless(lc($e) =~ /^[a-z0-9_.-]+\@[a-z0-9.-]+\.[a-z0-9.-]{2,5}$/);
    return(1);
}

1;

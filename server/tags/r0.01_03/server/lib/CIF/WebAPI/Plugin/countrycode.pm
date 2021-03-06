package CIF::WebAPI::Plugin::countrycode;
use base 'CIF::WebAPI::Plugin';

sub prepare {
    my $self = shift;
    my $frag = shift;

    return unless(lc($frag) =~ /^[a-z]{2,2}$/);
    return(1);
}

sub buildNext {
    my ($self,$frag,$req) = @_;

    my $subh;
    if(uc($frag) =~ /^[a-zA-Z]{2,2}$/){
        $self->{'query'} = $frag;
        return $self;
    } else {
        return $self->SUPER::buildNext($frag,$req);
    }
}

1;

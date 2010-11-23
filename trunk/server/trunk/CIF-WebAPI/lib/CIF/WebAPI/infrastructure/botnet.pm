package CIF::WebAPI::infrastructure::botnet;
use base 'CIF::WebAPI';

use strict;
use warnings;

sub GET {
    my ($self, $request, $response) = @_;
    my @recs = $self->SUPER::GET($request,$response);
    return CIF::WebAPI::infrastructure::generateFeed($response,@recs);
}

1;

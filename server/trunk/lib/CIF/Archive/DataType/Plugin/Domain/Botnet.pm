package CIF::Archive::DataType::Plugin::Domain::Botnet;
use base 'CIF::Archive::DataType::Plugin::Domain';

__PACKAGE__->table('domain_botnet');

sub prepare {
    my $class = shift;
    my $info = shift;
    return unless($info->{'impact'});
    return(0) unless($info->{'impact'} =~ /botnet/);
    return('botnet');
}

1;

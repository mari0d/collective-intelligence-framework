package CIF::Archive::DataType::Plugin::Email::Search;
use base 'CIF::Archive::DataType::Plugin::Email';

__PACKAGE__->table('email_search');

sub prepare {
    my $class = shift;
    my $info = shift;

    return unless($info->{'impact'} =~ /search/);
    return('search');
}
1;

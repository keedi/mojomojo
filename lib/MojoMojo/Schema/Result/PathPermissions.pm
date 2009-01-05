package MojoMojo::Schema::Result::PathPermissions;

use strict;
use warnings;
use Data::Dumper;

use base qw/MojoMojo::Schema::Base::Result/;

__PACKAGE__->load_components( "PK::Auto", "Core" );
__PACKAGE__->table("path_permissions");
__PACKAGE__->add_columns(
    "path",               { data_type => "VARCHAR", is_nullable => 0, size => 255 },
    "role",               { data_type => "INTEGER", is_nullable => 0, size => undef },
    "apply_to_subpages",  { data_type => "VARCHAR", is_nullable => 0, size => 3 },
    "create_allowed",     { data_type => "VARCHAR", is_nullable => 1, size => 3 },
    "delete_allowed",     { data_type => "VARCHAR", is_nullable => 1, size => 3 },
    "edit_allowed",       { data_type => "VARCHAR", is_nullable => 1, size => 3 },
    "view_allowed",       { data_type => "VARCHAR", is_nullable => 1, size => 3 },
    "attachment_allowed", { data_type => "VARCHAR", is_nullable => 1, size => 3 },
);
__PACKAGE__->set_primary_key( "path", "role", "apply_to_subpages" );
__PACKAGE__->belongs_to( "role", "Role", { id => "role" } );

=head1 NAME

MojoMojo::Schema::Result::PathPermissions

=head1 LICENSE

This library is free software . You can redistribute it and/or modify 
it under the same terms as perl itself.

=cut

1;

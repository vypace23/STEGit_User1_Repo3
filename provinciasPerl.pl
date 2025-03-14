#!/usr/bin/perl
use strict;
use warnings;
use CGI;

# Lista de provincias con su población (según el censo 2022 aproximado)
my %provincias = (
    'Buenos Aires'      => 17500000,
    'Córdoba'           => 3900000,
    'Santa Fe'          => 3500000,
    'Mendoza'           => 2000000,
    'Tucumán'           => 1700000,
    'Entre Ríos'        => 1400000,
    'Salta'             => 1400000,
    'Misiones'          => 1300000,
    'Chaco'             => 1200000,
    'Corrientes'        => 1200000,
    'Santiago del Estero' => 1100000,
    'San Juan'          => 850000,
    'Jujuy'             => 800000,
    'Río Negro'         => 750000,
    'Neuquén'           => 700000,
    'Formosa'           => 600000,
    'Chubut'            => 600000,
    'San Luis'          => 550000,
    'Catamarca'         => 400000,
    'La Rioja'          => 400000,
    'La Pampa'          => 350000,
    'Santa Cruz'        => 350000,
    'Tierra del Fuego'  => 200000,
);

my $cgi = CGI->new;

# Generar HTML
print $cgi->header(-type => 'text/html', -charset => 'UTF-8');
print "<html><head><title>Provincias de Argentina</title></head><body>";
print "<h1>Provincias de Argentina y su población</h1><ul>";

foreach my $provincia (sort keys %provincias) {
    my $habitantes = $provincias{$provincia};
    print "<li>$provincia - $habitantes habitantes</li>";
}

print "</ul></body></html>";

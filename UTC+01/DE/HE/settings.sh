#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-HE-NVV"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Kassel|Werra-Meißner-Kreis|Schwalm-Eder-Kreis|Waldeck-Frankenberg|Hersfeld-Rotenburg)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Nordhessischer VerkehrsVerbund"
NETWORK_SHORT="NVV"

ANALYSIS_PAGE="Kassel/Transportation/Analyse"
ANALYSIS_TALK="Talk:Kassel/Transportation/Analyse"
WIKI_ROUTES_PAGE="Kassel/Transportation/Analyse/DE-HE-NVV-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --expect-network-short --ptv1-compatibility=allow --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

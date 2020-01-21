#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-DING"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Ulm|Landkreis Sigmaringen|Landkreis Neu-Ulm|Landkreis Biberach|Alb-Donau-Kreis|Landkreis Göppingen|Landkreis Heidenheim|Landkreis Ravensburg|Landkreis Reutlingen)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Donau-Iller-Nahverkehrsverbund"
NETWORK_SHORT="DING"

ANALYSIS_PAGE="DING/Transportation/DING-Analyse"
ANALYSIS_TALK="Talk:DING/Transportation/DING-Analyse"
WIKI_ROUTES_PAGE="DING/Transportation/DING-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Region Donau-Iller"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27(Ulm%7CLandkreis%20Sigmaringen%7CLandkreis%20Neu-Ulm%7CLandkreis%20Biberach%7CAlb-Donau-Kreis%7CLandkreis%20G%C3%B6ppingen%7CLandkreis%20Heidenheim%7CLandkreis%20Ravensburg%7CLandkreis%20Reutlingen)%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Donau-Iller-Nahverkehrsverbund-GmbH"
PTNA_WWW_NETWORK_LINK=""

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="DING Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"


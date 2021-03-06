##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "simpleSAMLphp" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-01-18
version "0.1"
description "A PHP implementation of SAML 2.0 service provider and identity provider functionality. - Homepage: http://simplesamlphp.org"

# Google results as at 2012-01-18 #
# 29 for intitle:"simpleSAMLphp installation page"
# 13 for inurl:"module.php/core/frontpage_welcome.php"
#  9 for intitle:"simpleSAMLphp installation page" "Congratulations, you have successfully installed simpleSAMLphp"

# Dorks #
dorks [
'intitle:"simpleSAMLphp installation page"'
]

# Examples #
examples %w|
https://kimlik.ulakbim.gov.tr/simplesaml/module.php/core/frontpage_welcome.php?language=tr
https://openidp.feide.no/simplesaml/module.php/core/frontpage_welcome.php?language=se
http://sir.rediris.es/simplesaml/?language=no
https://ldap.testlogin.kb.dk/module.php/core/frontpage_federation.php?language=en
http://discotango.test.wayf.dk/module.php/core/frontpage_config.php
https://hosted.wayf.dk/ku/
https://beargw.mcc.edu/simplesamlphp/?language=lb
https://ldap.testlogin.kb.dk/
|

# Matches #
matches [

# Title
{ :text=>'<title>simpleSAMLphp installation page</title>' },

# simpleSAMLphp installation page
{ :regexp=>/<h1><a style="text-decoration: none; color: white" href="[^"]+">simpleSAMLphp installation page<\/a><\/h1>/ },

# Homepage Link
{ :text=>'<a href="http://rnd.feide.no/simplesamlphp">SimpleSAMLPhp </a>' },

# HTML Comment
{ :certainty=>75, :text=>'<!-- Grey header bar below -->' },

]

end


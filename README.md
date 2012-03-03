Prefixr RubyGem
===============

The prefixr gem is a simple command line utility to use for adding css3 vendor prefixes to css files.
It uses the [Prefixr API](http://www.prefixr.com/api/usage/) from the Nettuts+ [Prefixr](http://prefixr.com) web utility.

Installation
------------

	$ [sudo] gem install prefixr

Usage
-----

The prefixr command accepts two arguments

	$ prefixr [input] [output]

Output argument is optional, if missing, the input file will be overwritten.
If the input is a directory, prefixes will be added to all css files inside the directory, all css files are overwritten.

Example
-------

Before: 

	.box {
	   opacity: .5;
	}

	.container {
	   box-shadow: 20px;
	   -moz-transition: -moz-box-shadow 2s;
	   -webkit-border-radius: 4px;
	   animation: slide 1s alternate;
	   background: linear-gradient(top, #e3e3e3 10%, white);
	   display: -moz-box;
	}


After: 

	.box {
		-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
		filter: alpha(opacity=50);
		opacity: .5;
	}

	.container {
		-webkit-box-shadow: 20px;
		-moz-box-shadow: 20px;
		box-shadow: 20px;

		-webkit-transition: -webkit-box-shadow 2s;
		-moz-transition: -moz-box-shadow 2s;
		-o-transition: box-shadow 2s;
		-ms-transition: box-shadow 2s;
		transition: box-shadow 2s;

		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px;

		-webkit-animation: slide 1s alternate;
		-moz-animation: slide 1s alternate;
		-ms-animation: slide 1s alternate;
		animation: slide 1s alternate;

		background: -webkit-linear-gradient(top, #e3e3e3 10%, white);
		background: -moz-linear-gradient(top, #e3e3e3 10%, white);
		background: -o-linear-gradient(top, #e3e3e3 10%, white);
		background: -ms-linear-gradient(top, #e3e3e3 10%, white);
		background: linear-gradient(top, #e3e3e3 10%, white);
		display: -webkit-box;
		display: -moz-box;
		display: box;
	}


More informations
-----------------

Make sure to check out Nettuts+ [Prefixr](http://prefixr.com)


use ExtUtils::MakeMaker;
WriteMakefile(
		NAME         => 'Number::Phone',
		VERSION_FROM => 'lib/Number/Phone.pm',
		PREREQ_PM    => {
		        # Storable           => 2.07,
		}
	     );

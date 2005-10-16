use ExtUtils::MakeMaker;
WriteMakefile(
		NAME         => 'Number::Phone',
		VERSION      => 1.5,
		PREREQ_PM    => {
			'Scalar::Util'	=> 0,
                        'DBM::Deep'	=> 0.96, # need to pass filehandle
                        'IO::Scalar'	=> 0
		}
	     );

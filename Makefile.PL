use ExtUtils::MakeMaker;
WriteMakefile(
		NAME         => 'Number::Phone',
		VERSION      => 1.52,
		PREREQ_PM    => {
			'Scalar::Util'	=> 0,
                        'DBM::Deep'	=> 0.97, # need to pass DATA filehandle
		}
	     );

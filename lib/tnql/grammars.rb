require 'treetop'

Treetop.load File.expand_path('grammars/dates', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/diagnosis', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/e_base_records', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/batch_types', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/provider', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/registration_status', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/registry', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/staging', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/treatment', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/tumour_type', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/patient', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/vital_status', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/age', File.dirname(__FILE__))
Treetop.load File.expand_path('grammars/main', File.dirname(__FILE__))

syn match TPIEType /\<\w\+_t\(ype\)\?\>/
syn keyword TPIEType array file_stream tpie file stream temp_file TPIE_FSI
hi def link TPIEType Type

" keywords `new` and `delete` are in class cppStatement
syn keyword TPIEStatement tpie_new tpie_delete
hi def link TPIEStatement cppStatement

syn keyword cStorageClass override

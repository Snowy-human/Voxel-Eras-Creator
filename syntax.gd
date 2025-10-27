extends TextEdit

func _ready() -> void:
	syntax_highlighter.add_color_region('"','"',Color8(206,145,120))
	syntax_highlighter.add_keyword_color('const',Color8(86,156,214))
	syntax_highlighter.add_keyword_color('import',Color8(86,156,214))
	syntax_highlighter.add_keyword_color('as',Color8(86,156,214))
	syntax_highlighter.add_keyword_color('as',Color8(86,156,214))
	syntax_highlighter.add_keyword_color('player',Color8(78,201,176))
	syntax_highlighter.add_keyword_color('event',Color8(78,201,176))
	syntax_highlighter.add_keyword_color('global',Color8(78,201,176))
	syntax_highlighter.add_keyword_color('voxel',Color8(78,201,176))

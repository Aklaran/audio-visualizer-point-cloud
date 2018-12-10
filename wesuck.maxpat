{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 441.0, 85.0, 595.0, 840.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"annotation" : "",
					"comment" : "Score",
					"id" : "obj-17",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 644.5, 31.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Engravers MT",
					"fontsize" : 48.0,
					"id" : "obj-13",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 644.5, 326.565002, 154.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.5, 211.565002, 154.0, 64.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 682.5, 288.940002, 78.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 283.5, 173.940002, 78.0, 34.0 ],
					"style" : "",
					"text" : "Score:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 869.875, 288.940002, 64.0, 64.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 470.875, 173.940002, 64.0, 64.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Difficulty (0: Hard, 1: Easy)",
					"id" : "obj-94",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 476.5, 588.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "New Game (bang)",
					"id" : "obj-88",
					"index" : 3,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 869.875, 588.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Key Index (int)",
					"id" : "obj-86",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 648.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 341.565002, 60.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 226.565002, 60.0, 34.0 ],
					"style" : "",
					"text" : "Key:"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 475.0, 185.440002, 108.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 70.440002, 108.0, 34.0 ],
					"style" : "",
					"text" : "Difficulty:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 30.0,
					"id" : "obj-3",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 607.0, 131.0, 229.0, 110.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 208.0, 16.0, 229.0, 110.0 ],
					"style" : "",
					"text" : "Twinkle-Twinkle Little Rockstar Hero Thing? Idk",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"items" : [ "A", ",", "A#/Bb", ",", "B", ",", "C", ",", "C#/Db", ",", "D", ",", "D#/Eb", ",", "E", ",", "F", ",", "F#/Gb", ",", "G", ",", "G#/Ab" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 499.0, 385.940002, 60.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 270.940002, 60.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 476.5, 224.0, 105.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.5, 109.0, 105.0, 100.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Hard", "Easy" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 836.875, 249.315002, 130.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 437.875, 134.315002, 130.0, 34.0 ],
					"style" : "",
					"text" : "New Game"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"grad1" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"grad2" : [ 0.32549, 0.345098, 0.372549, 0.83 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 462.5, 116.0, 518.5, 312.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.5, 1.0, 518.5, 312.0 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}

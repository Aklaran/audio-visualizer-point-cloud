{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 34.0, 79.0, 1212.0, 687.0 ],
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
					"comment" : "(MIDI) Note of original pitch",
					"id" : "obj-21",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 576.386353, 29.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 576.386353, 232.5, 84.11364, 222.059998 ],
					"presentation" : 1,
					"presentation_rect" : [ 383.386353, 110.5, 84.11364, 222.059998 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 688.875, 232.5, 84.11364, 222.059998 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.875, 110.5, 84.11364, 222.059998 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 683.931824, 203.059998, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 490.931824, 81.059998, 94.0, 20.0 ],
					"style" : "",
					"text" : "Corrected pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 832.75, 229.059998, 103.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 639.75, 107.059998, 103.0, 20.0 ],
					"style" : "",
					"text" : "Restart Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 872.25, 251.059998, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 679.25, 129.059998, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Playback length",
					"id" : "obj-96",
					"index" : 11,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1010.5, 691.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Playback speed",
					"id" : "obj-95",
					"index" : 9,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 925.5, 691.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Mode (Live:0, Record:1, Playback:2)",
					"id" : "obj-94",
					"index" : 10,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 969.5, 618.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Freeze playback",
					"id" : "obj-93",
					"index" : 6,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 838.0, 743.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Resume playback",
					"id" : "obj-92",
					"index" : 7,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 869.25, 691.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Direction of playback",
					"id" : "obj-91",
					"index" : 5,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.5, 630.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Start/stop recording",
					"id" : "obj-88",
					"index" : 8,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 872.25, 586.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Note selections index",
					"id" : "obj-87",
					"index" : 3,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 681.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Tonal Center index",
					"id" : "obj-86",
					"index" : 4,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.5, 635.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "File player signal",
					"id" : "obj-85",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.5, 681.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "Input Index (Mic:0, File:1)",
					"id" : "obj-84",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.5, 625.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "(Signal) Final audio",
					"id" : "obj-82",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 274.5, 29.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "(MIDI) Note of corrected pitch",
					"id" : "obj-81",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 688.875, 29.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 578.193176, 203.059998, 80.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 385.193176, 81.059998, 80.5, 20.0 ],
					"style" : "",
					"text" : "Original pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 323.0, 350.059998, 152.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 130.0, 228.059998, 152.0, 20.0 ],
					"style" : "",
					"text" : "Post-processed sonogram"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 625.5, 173.0, 95.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 432.5, 51.0, 95.0, 20.0 ],
					"style" : "",
					"text" : "by: Alec Albright"
				}

			}
, 			{
				"box" : 				{
					"domain" : [ 0.0, 5000.0 ],
					"id" : "obj-20",
					"maxclass" : "spectroscope~",
					"monochrome" : 0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 274.5, 380.059998, 249.0, 71.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.5, 261.559998, 249.0, 71.0 ],
					"sono" : 1,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1010.5, 432.559998, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 817.5, 310.559998, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 925.5, 432.559998, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 732.5, 310.559998, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.75, 201.0, 95.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.75, 79.0, 95.5, 20.0 ],
					"style" : "",
					"text" : "Note Selections"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 134.0, 81.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 12.0, 81.0, 20.0 ],
					"style" : "",
					"text" : "Tonal Center"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.5, 269.059998, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.5, 147.059998, 100.0, 20.0 ],
					"style" : "",
					"text" : "File to Be Played"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1002.0, 136.059998, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 809.0, 14.059998, 40.0, 20.0 ],
					"style" : "",
					"text" : "Mode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 308.0, 134.0, 38.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 115.0, 12.0, 38.0, 20.0 ],
					"style" : "",
					"text" : "Input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 589.5, 144.0, 167.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 396.5, 22.0, 167.0, 27.0 ],
					"style" : "",
					"text" : "Auto-Tuner Module"
				}

			}
, 			{
				"box" : 				{
					"clipheight" : 31.0,
					"data" : 					{
						"clips" : [ 							{
								"filename" : "/Users/siritembunkiart/Documents/CMU/18090 Twisted Signals/Project 2/audio-visualizer-point-cloud/fool-me-once.mp3",
								"filekind" : "audiofile",
								"loop" : 0,
								"content_state" : 								{
									"followglobaltempo" : [ 0 ],
									"timestretch" : [ 0 ],
									"formant" : [ 1.0 ],
									"quality" : [ "basic" ],
									"mode" : [ "basic" ],
									"formantcorrection" : [ 0 ],
									"originallengthms" : [ 0.0 ],
									"play" : [ 0 ],
									"slurtime" : [ 0.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"originaltempo" : [ 120.0 ],
									"speed" : [ 1.0 ],
									"basictuning" : [ 440 ],
									"pitchcorrection" : [ 0 ],
									"pitchshift" : [ 1.0 ]
								}

							}
 ]
					}
,
					"id" : "obj-180",
					"maxclass" : "playlist~",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"patching_rect" : [ 274.5, 300.0, 150.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.5, 178.0, 150.0, 32.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"items" : [ "Chromatic", ",", "Major", "Scale", ",", "Minor", "Scale", ",", "I", "chord", ",", "ii0", "chord", ",", "iii", "chord", ",", "IV", "chord", ",", "V", "chord", ",", "vi", "chord", ",", "vii0", "chord" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.0, 232.5, 89.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 217.0, 110.5, 89.5, 22.0 ],
					"style" : ""
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
					"patching_rect" : [ 420.5, 166.0, 60.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 227.5, 44.0, 60.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 274.5, 156.0, 105.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.5, 34.0, 105.0, 100.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[1]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Microphone", "File" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 969.5, 158.059998, 105.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 776.5, 36.059998, 105.0, 100.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Live", "Record", "Playback" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 807.5, 380.059998, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 614.5, 258.059998, 100.0, 20.0 ],
					"style" : "",
					"text" : "Freeze Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 812.375, 182.559998, 143.75, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 619.375, 60.559998, 143.75, 20.0 ],
					"style" : "",
					"text" : "Begin/Resume Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 825.25, 136.059998, 121.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 632.25, 14.059998, 121.5, 20.0 ],
					"style" : "",
					"text" : "Start/Stop Recording"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.5, 308.059998, 125.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 597.5, 186.059998, 125.0, 20.0 ],
					"style" : "",
					"text" : "Direction of Playback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 822.5, 336.059998, 39.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 629.5, 214.059998, 39.0, 22.0 ],
					"style" : "",
					"text" : "down"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 790.5, 336.059998, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 597.5, 214.059998, 29.5, 22.0 ],
					"style" : "",
					"text" : "up"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 986.5, 262.059998, 98.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 793.5, 140.059998, 98.0, 33.0 ],
					"style" : "",
					"text" : "Length of Playback Loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 888.0, 276.059998, 98.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 695.0, 154.059998, 98.0, 20.0 ],
					"style" : "",
					"text" : "Playback Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1010.5, 303.559998, 23.0, 113.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 817.5, 181.559998, 23.0, 113.0 ],
					"size" : 10000.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 872.25, 203.059998, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 679.25, 81.059998, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 838.0, 408.559998, 39.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 645.0, 286.559998, 39.0, 22.0 ],
					"style" : "",
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 925.5, 303.559998, 23.0, 113.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 732.5, 181.559998, 23.0, 113.0 ],
					"size" : 60.0,
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 862.5, 336.059998, 53.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 669.5, 214.059998, 53.0, 22.0 ],
					"style" : "",
					"text" : "updown"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 872.25, 158.059998, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 679.25, 36.059998, 24.0, 24.0 ],
					"style" : ""
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
					"patching_rect" : [ 256.0, 121.0, 834.0, 350.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, -1.0, 834.0, 350.0 ],
					"proportion" : 0.39,
					"style" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-82", 0 ]
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

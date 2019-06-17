LIBRARY_DIR = $(ROOT_DIR)/../LilypondTemplates
LIBRARY_FILES = $(LIBRARY_DIR)/functions.ly $(LIBRARY_DIR)/hymns.ly $(LIBRARY_DIR)/standard-elements.ly
LILYPOND = lilypond.exe
LILYPOND_PROD_OPTIONS = -dno-point-and-click -ddelete-intermediate-files
COMMON_DEPS = Words-and-music.ly $(ROOT_DIR)/Source/$(HYMNAL)/hymn_settings.ly $(LIBRARY_FILES)
MIDI_FILES = Audio_all.mid Audio_soprano.mid Audio_alto.mid Audio_tenor.mid Audio_bass.mid
BUILD_DIR = $(ROOT_DIR)/docs/Source/$(HYMNAL)/$(ACCESS)/$(STATUS)/$(PROD_BASE_NAME)
PUBLIC_BUILD_DIR = $(ROOT_DIR)/docs/Source/$(HYMNAL)/public/$(STATUS)/$(PROD_BASE_NAME)
SLIDE_DIR = $(ROOT_DIR)/../publishedbumbyhymnals/$(HYMNAL)/$(HYMNAL_VERSION)/$(HYMN_NUMBER)
PROD_SHEET_MUSIC = $(BUILD_DIR)/$(PROD_BASE_NAME)_sheet_music.pdf
PROD_SHEET_MUSIC_THUMBNAIL = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_sheet_music_thumbnail.png
PROD_SLIDES_MUSIC = $(BUILD_DIR)/$(PROD_BASE_NAME)_slides.pdf
PROD_SLIDES_MUSIC_THUMBNAIL = $(PUBLIC_BUILD_DIR)/$(PROD_BASE_NAME)_slides_thumbnail.png
THUMBNAIL_RESOLUTION = x500
SLIDE_RESOLUTION = 3000x2250
SOUNDFONT = /usr/share/sounds/sf2/FluidR3_GM.sf2
PROD_ALL_MUSIC = $(PUBLIC_BUILD_DIR)/all_audio_$(PROD_BASE_NAME).mp3
PROD_SOPRANO_MUSIC = $(PUBLIC_BUILD_DIR)/soprano_audio_$(PROD_BASE_NAME).mp3
PROD_ALTO_MUSIC = $(PUBLIC_BUILD_DIR)/alto_audio_$(PROD_BASE_NAME).mp3
PROD_TENOR_MUSIC = $(PUBLIC_BUILD_DIR)/tenor_audio_$(PROD_BASE_NAME).mp3
PROD_BASS_MUSIC = $(PUBLIC_BUILD_DIR)/bass_audio_$(PROD_BASE_NAME).mp3


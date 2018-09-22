#
# Empty Makefile
#

LIBRARY_DIR = ../../../LilypondTemplates

LIBRARY_FILES = $(LIBRARY_DIR)/functions.ly $(LIBRARY_DIR)/hymns.ly $(LIBRARY_DIR)/standard-elements.ly
LILYPOND = lilypond-windows.exe
LILYPOND_PROD_OPTIONS = -dno-point-and-click -ddelete-intermediate-files
COMMON_DEPS = Words-and-music.ly ../hymn_settings.ly $(LIBRARY_FILES)
MIDI_FILES = Audio_all.mid Audio_soprano.mid Audio_alto.mid Audio_tenor.mid Audio_bass.mid
STATUS = review

BUILD_DIR = ../../docs/Source/$(STATUS)/abide_with_me

PROD_SHEET_MUSIC = $(BUILD_DIR)/abide_with_me_sheet_music.pdf
PROD_SHEET_MUSIC_THUMBNAIL = $(BUILD_DIR)/abide_with_me_sheet_music_thumbnail.png

PROD_SLIDES_MUSIC = $(BUILD_DIR)/abide_with_me_slides.pdf
PROD_SLIDES_MUSIC_THUMBNAIL = $(BUILD_DIR)/abide_with_me_slides_thumbnail.png

THUMBNAIL_RESOLUTION = x500
SOUNDFONT = ../../media/KBH_Real_and_Swell_Choir.sf2
# /usr/share/sounds/sf2/FluidR3_GM.sf2 myfile.mid

PROD_ALL_MUSIC = $(BUILD_DIR)/abide_with_me_audio_all.mp3
PROD_SOPRANO_MUSIC = $(BUILD_DIR)/abide_with_me_audio_soprano.mp3
PROD_ALTO_MUSIC = $(BUILD_DIR)/abide_with_me_audio_alto.mp3
PROD_TENOR_MUSIC = $(BUILD_DIR)/abide_with_me_audio_tenor.mp3
PROD_BASS_MUSIC = $(BUILD_DIR)/abide_with_me_audio_bass.mp3

.PHONY: local prod clean

clean:
	rm *.pdf
	rm *.mid

local: Sheet-Music.pdf Slides.pdf $(MIDI_FILES)

prod:	$(PROD_SHEET_MUSIC) \
	$(PROD_SHEET_MUSIC_THUMBNAIL) \
	$(PROD_SLIDES_MUSIC) \
	$(PROD_SLIDES_MUSIC_THUMBNAIL) \
	$(PROD_ALL_MUSIC) \
	$(PROD_SOPRANO_MUSIC) \
	$(PROD_ALTO_MUSIC) \
	$(PROD_TENOR_MUSIC) \
	$(PROD_BASS_MUSIC)

Sheet-Music.pdf: Sheet-Music.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Sheet-Music.ly

Slides.pdf: Slides.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Slides.ly

$(MIDI_FILES): Audio.ly $(COMMON_DEPS) $(LIBRARY_DIR)/midi.ly
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Audio.ly

$(PROD_SHEET_MUSIC): Sheet-Music.pdf
	cp Sheet-Music.pdf $(PROD_SHEET_MUSIC)

$(PROD_SHEET_MUSIC_THUMBNAIL): Sheet-Music.pdf
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove Sheet-Music.pdf[0] $(PROD_SHEET_MUSIC_THUMBNAIL)

$(PROD_SLIDES_MUSIC): Slides.pdf
	pdftk Slides.pdf multibackground ../../media/slide_background_4x3.pdf output $(PROD_SLIDES_MUSIC)

$(PROD_SLIDES_MUSIC_THUMBNAIL): $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[0] $(PROD_SLIDES_MUSIC_THUMBNAIL)

$(PROD_ALL_MUSIC): Audio_all.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_all.mid
	lame --preset standard out.wav $(PROD_ALL_MUSIC)

$(PROD_SOPRANO_MUSIC): Audio_soprano.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_soprano.mid
	lame --preset standard out.wav $(PROD_SOPRANO_MUSIC)

$(PROD_ALTO_MUSIC): Audio_alto.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_alto.mid
	lame --preset standard out.wav $(PROD_ALTO_MUSIC)

$(PROD_TENOR_MUSIC): Audio_tenor.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_tenor.mid
	lame --preset standard out.wav $(PROD_TENOR_MUSIC)

$(PROD_BASS_MUSIC): Audio_bass.mid
	fluidsynth -F out.wav $(SOUNDFONT) Audio_bass.mid
	lame --preset standard out.wav $(PROD_BASS_MUSIC)

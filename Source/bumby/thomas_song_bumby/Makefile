#
# Standard Makefile for a hymn
#

#
# The following two variables are probably all that needs to be customized for any hymn
#
PROD_BASE_NAME = thomas_song_bumby
STATUS = review
ACCESS = private
SLIDE_NAME = THOMAS\ SONG
HYMN_NUMBER = B-018
ROOT_DIR = $(realpath ../../..)

include ../common.mk

.PHONY: local prod clean prodclean

prod:	$(PROD_SHEET_MUSIC) \
	$(PROD_SHEET_MUSIC_THUMBNAIL) \
	$(PROD_SLIDES_MUSIC) \
	$(PROD_SLIDES_MUSIC_THUMBNAIL) \
	$(PROD_ALL_MUSIC) \
	$(PROD_SOPRANO_MUSIC) \
	$(PROD_ALTO_MUSIC) \
	$(PROD_TENOR_MUSIC) \
	$(PROD_BASS_MUSIC)

local: Sheet-Music.pdf Slides.pdf $(MIDI_FILES)

slides: $(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ TITLE.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.1.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.2.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.3.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.4.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.1.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.2.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.3.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.4.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.5.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.6.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.7.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.8.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.9.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.10.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.1.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.2.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.3.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.4.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.1.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.2.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.3.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.4.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.5.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.6.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.7.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.8.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.9.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.10.png \
	$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ CODA.1.png \
	$(SLIDE_DIR)/hymn_info.hixml

clean:
	-rm *.pdf
	-rm *.mid
	-rm *.mp3
	-rm *.wav

prodclean:
	-rm $(PROD_SHEET_MUSIC)
	-rm $(PROD_SHEET_MUSIC_THUMBNAIL)
	-rm $(PROD_SLIDES_MUSIC)
	-rm $(PROD_SLIDES_MUSIC_THUMBNAIL)
	-rm $(PROD_ALL_MUSIC)
	-rm $(PROD_SOPRANO_MUSIC)
	-rm $(PROD_ALTO_MUSIC)
	-rm $(PROD_TENOR_MUSIC)
	-rm $(PROD_BASS_MUSIC)

Sheet-Music.pdf: Sheet-Music.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Sheet-Music.ly

Slides.pdf: Slides.ly $(COMMON_DEPS)
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Slides.ly

$(MIDI_FILES): Audio.ly $(COMMON_DEPS) $(LIBRARY_DIR)/midi.ly
	$(LILYPOND) $(LILYPOND_PROD_OPTIONS) Audio.ly

$(PROD_SHEET_MUSIC): $(BUILD_DIR) Sheet-Music.pdf
	cp Sheet-Music.pdf $(PROD_SHEET_MUSIC)

$(PROD_SHEET_MUSIC_THUMBNAIL): $(PUBLIC_BUILD_DIR) Sheet-Music.pdf
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove Sheet-Music.pdf[0] $(PROD_SHEET_MUSIC_THUMBNAIL)

$(PROD_SLIDES_MUSIC): $(BUILD_DIR) Slides.pdf
	pdftk Slides.pdf multibackground $(ROOT_DIR)/media/slide_background_4x3.pdf output $(PROD_SLIDES_MUSIC)

$(PROD_SLIDES_MUSIC_THUMBNAIL): $(PUBLIC_BUILD_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(THUMBNAIL_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[0] $(PROD_SLIDES_MUSIC_THUMBNAIL)

Audio_all.wav: Audio_all.mid
	fluidsynth -F $@ $(SOUNDFONT) $<

Audio_all.mp3: Audio_all.wav
	lame -V2 $< $@

Audio_soprano.wav: Audio_soprano.mid
	fluidsynth -F $@ $(SOUNDFONT) $<

Audio_soprano.mp3: Audio_soprano.wav
	lame -V2 $< $@

Audio_alto.wav: Audio_alto.mid
	fluidsynth -F $@ $(SOUNDFONT) $<

Audio_alto.mp3: Audio_alto.wav
	lame -V2 $< $@

Audio_tenor.wav: Audio_tenor.mid
	fluidsynth -F $@ $(SOUNDFONT) $<

Audio_tenor.mp3: Audio_tenor.wav
	lame -V2 $< $@

Audio_bass.wav: Audio_bass.mid
	fluidsynth -F $@ $(SOUNDFONT) $<

Audio_bass.mp3: Audio_bass.wav
	lame -V2 $< $@

$(PROD_ALL_MUSIC): Audio_all.mp3 $(PUBLIC_BUILD_DIR)
	cp $< $@

$(PROD_SOPRANO_MUSIC): Audio_soprano.mp3 $(PUBLIC_BUILD_DIR)
	cp $< $@

$(PROD_ALTO_MUSIC): Audio_alto.mp3 $(PUBLIC_BUILD_DIR)
	cp $< $@

$(PROD_TENOR_MUSIC): Audio_tenor.mp3 $(PUBLIC_BUILD_DIR)
	cp $< $@

$(PROD_BASS_MUSIC): Audio_bass.mp3 $(PUBLIC_BUILD_DIR)
	cp $< $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(PUBLIC_BUILD_DIR):
	mkdir -p $(PUBLIC_BUILD_DIR)

$(SLIDE_DIR):
	mkdir -p $(SLIDE_DIR)

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ TITLE.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[0] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.1.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[1] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.2.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[2] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.3.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[3] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.4.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[4] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.1.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[5] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.2.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[6] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.3.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[7] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.4.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[8] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.5.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[9] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.6.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[10] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.7.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[11] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.8.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[12] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.9.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[13] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.10.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[14] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.1.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[15] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.2.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[16] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.3.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[17] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.4.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[18] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.1.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[19] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.2.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[20] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.3.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[21] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.4.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[22] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.5.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[23] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.6.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[24] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.7.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[25] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.8.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[26] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.9.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[27] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 4.10.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[28] '$@'

$(SLIDE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ CODA.1.png: $(SLIDE_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[29] '$@'

$(SLIDE_DIR)/hymn_info.hixml: $(SLIDE_DIR) hymn_info.hixml
	cp hymn_info.hixml $@

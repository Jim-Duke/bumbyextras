#
# Standard Makefile for a hymn
#

#
# The following two variables are probably all that needs to be customized for any hymn
#
PROD_BASE_NAME = all_glory_laud_and_honor_bumby
STATUS = review
ACCESS = public
SLIDE_NAME = All\ Glory\ Laud\ And\ Honor
HYMN_NUMBER = 2028
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

package: $(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ TITLE.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.1.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.2.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.3.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.4.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.1.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.2.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.3.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.4.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.1.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.2.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.3.png \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.4.png \
	$(HYMN_PC_DIR)/Information.hixml \
	$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ Print\ Large.pdf \
	$(PACKAGE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ Letter.pdf

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

$(HYMN_PC_SLIDES_DIR):
	mkdir -p $(HYMN_PC_SLIDES_DIR)

$(HYMN_PC_DIR):
	mkdir -p $(HYMN_PC_DIR)

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ TITLE.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[0] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.1.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[1] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.2.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[2] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.3.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[3] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 1.4.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[4] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.1.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[5] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.2.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[6] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.3.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[7] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 2.4.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[8] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.1.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[9] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.2.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[10] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.3.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[11] '$@'

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ 3.4.png: $(HYMN_PC_SLIDES_DIR) $(PROD_SLIDES_MUSIC)
	convert -thumbnail $(SLIDE_RESOLUTION) -background white -alpha remove $(PROD_SLIDES_MUSIC)[12] '$@'

$(HYMN_PC_DIR)/Information.hixml: $(HYMN_PC_DIR) hymn_info.hixml
	cat ../slide_info_front.hixml hymn_info.hixml ../slide_info_back.hixml > $@

$(HYMN_PC_SLIDES_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ Print\ Large.pdf: $(HYMN_PC_DIR) Sheet-Music.pdf
	cp Sheet-Music.pdf "$@"

$(PACKAGE_DIR)/$(HYMN_NUMBER)\ -\ $(SLIDE_NAME)\ -\ Letter.pdf: $(PACKAGE_DIR) Sheet-Music.pdf
	cp Sheet-Music.pdf "$@"

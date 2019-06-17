TOPTARGETS := clean prodclean local prod slides

SUBDIRS := $(wildcard */.)
ROOT_DIR := $(realpath ../..)
include common.mk

PUBLISH_DIR := $(ROOT_DIR)/../publishedbumbyhymnals/$(HYMNAL)/$(HYMNAL_VERSION)
BASE_WEB_DIR := $(ROOT_DIR)/docs/Source/$(HYMNAL)
PUBLIC_WEB_DIR := $(BASE_WEB_DIR)/public/review
PRIVATE_WEB_DIR := $(BASE_WEB_DIR)/private/review

let_the_whole_creation_cry_phss_number = "P-076"
BOOK_FILES := $(PUBLIC_WEB_DIR)/let_the_whole_creation_cry_phss/let_the_whole_creation_cry_phss_sheet_music.pdf

SLIDE_FILES := $(PUBLIC_WEB_DIR)/let_the_whole_creation_cry_phss/let_the_whole_creation_cry_phss_slides.pdf

$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: $(TOPTARGETS) $(SUBDIRS) book

book: $(PUBLISH_DIR)/hymnal.pdf

$(PUBLISH_DIR)/hymnal.pdf: $(BOOK_FILES)
	pdftk $(BOOK_FILES) cat output $@ compress

$(PUBLISH_DIR)/slides.pdf: $(SLIDE_FILES)
	pdftk $(SLIDE_FILES) cat output $@ compress

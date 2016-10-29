\version "2.18.2"

setSystemOffset =
#(define-music-function (parser location offset)
   (number?)
  #{
     \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details.Y-offset #offset
  #})

%setSystemOffset =
%#(define-music-function (parser location offset)
%   (number?)
%   #{
%       \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . #offset))
%   #})

defaultTopSystemOffset = #9
defaultBottomSystemOffset = #38

%
% Using this file to set the hymnal numbers used by each song.  The convention is
% to use the directory name as a variable with "_number".  Two additional variables
% will be created to specify which side of the page the number should be on for the
% sheet music.
%

% B-001 - one page
my_shepherd_will_supply_my_need_number = "B-001"
my_shepherd_will_supply_my_need_number_lhs = ""
my_shepherd_will_supply_my_need_number_rhs = \my_shepherd_will_supply_my_need_number

% B-002 - two pages
teach_me_lord_to_wait_number = "B-002"
teach_me_lord_to_wait_number_lhs = \teach_me_lord_to_wait_number
teach_me_lord_to_wait_number_rhs = ""

% B-003 - one page
in_christ_alone_number = "B-003"
in_christ_alone_number_lhs = \in_christ_alone_number
in_christ_alone_number_rhs = ""

% B-004 - one page
% Abide With Me - One Page
abide_with_me_number = "B-004"
abide_with_me_number_lhs = ""
abide_with_me_number_rhs = \abide_with_me_number

% B-005 - Two Pages
% How Beautiful - Two Pages
how_beautiful_number = "B-005"
how_beautiful_number_lhs = \how_beautiful_number
how_beautiful_number_rhs = ""

% B-006 - One Page
% Christ the Lord is Risen Today - Mendelssohn - One Page
christ_the_lord_is_risen_today_mendelssohn_number = "B-006"
christ_the_lord_is_risen_today_mendelssohn_number_lhs = \christ_the_lord_is_risen_today_mendelssohn_number
christ_the_lord_is_risen_today_mendelssohn_number_rhs = ""

% B-007 - One Page
% Hark! I Hear the Harps Eternal - One Page
hark_I_hear_the_harps_eternal_number = "B-007"
hark_I_hear_the_harps_eternal_number_lhs = ""
hark_I_hear_the_harps_eternal_number_rhs = \hark_I_hear_the_harps_eternal_number

% B-008 - Two Pages
% Just As I Am - I Come Broken - Two Pages
just_as_I_am_I_come_broken_number = "B-008"
just_as_I_am_I_come_broken_number_lhs = \just_as_I_am_I_come_broken_number
just_as_I_am_I_come_broken_number_rhs = ##f

% B-009 - Two Pages
% Magnificat - Guess Two Pages
magnificat_number = "B-009"
magnificat_number_lhs = \magnificat_number
magnificat_number_rhs = ""

% B-010 - One Page
% Ah Holy Jesus - Guess One Page
ah_holy_jesus_number = "B-010"
ah_holy_jesus_number_lhs = \ah_holy_jesus_number
ah_holy_jesus_number_rhs = ""
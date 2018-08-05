\version "2.19.49"

\include "../../templates/functions.ly"
\include "../../templates/hymns.ly"
\include "../../templates/midi.ly"

%
% Sets the build directory variable if not already set.  This allows you to
% set an alternative build directory from the command line, or from another
% source.
%
#(if (not (defined? 'build_dir)) (define build_dir ""))

%
% CCLI Licensing Information
%

% South Bumby's license
ccli_license = "2055442"

% Clermont's license
% ccli_license = "2858443"

%
% Using this file to set the hymnal numbers used by each song.  The convention is
% to use the directory name as a variable with "_number".  Two additional variables
% will be created to specify which side of the page the number should be on for the
% sheet music.
%

% Bumby Songs
% Comment out when building for other groups

% B-001 - one page
my_shepherd_will_supply_my_need_number = "B-001"
my_shepherd_will_supply_my_need_number_rhs = ##t

% B-002 - two pages
teach_me_lord_to_wait_number = "B-002"
teach_me_lord_to_wait_number_rhs = ##f

% B-003 - one page
in_christ_alone_number = "B-003"
in_christ_alone_number_rhs = ##f

% B-004 - one page
% Abide With Me - One Page
abide_with_me_number = "B-004"
abide_with_me_number_rhs = ##t

% B-005 - Two Pages
% How Beautiful - Two Pages
how_beautiful_number = "B-005"
how_beautiful_number_rhs = ##f

% B-006 - One Page
% Christ the Lord is Risen Today - Mendelssohn - One Page
christ_the_lord_is_risen_today_mendelssohn_number = "B-006"
christ_the_lord_is_risen_today_mendelssohn_number_rhs = ##f

% B-007 - One Page
% Hark! I Hear the Harps Eternal - One Page
hark_I_hear_the_harps_eternal_number = "B-007"
hark_I_hear_the_harps_eternal_number_rhs = ##t

% B-008 - Two Pages
% Just As I Am - I Come Broken - Two Pages
just_as_I_am_I_come_broken_number = "B-008"
just_as_I_am_I_come_broken_number_rhs = ##f

% B-009 - Two Pages
% Magnificat - Two Pages
magnificat_number = "B-009"
magnificat_number_rhs = ##f

% B-010 - Two Pages
% Just For Today - Two Pages
just_for_today_number = "B-010"
just_for_today_number_rhs = ##f

% B-011 - One Page
% Ah Holy Jesus - Guess One Page
ah_holy_jesus_number = "B-011"
ah_holy_jesus_number_rhs = ##f

%
% Clermont Songs
% Comment out when building for other groups
%

% B-001 - one page
% my_shepherd_will_supply_my_need_number = ""
% my_shepherd_will_supply_my_need_number_rhs = ##t

% B-002 - two pages
% teach_me_lord_to_wait_number = ""
% teach_me_lord_to_wait_number_rhs = ##t

% B-003 - one page
% in_christ_alone_number = "C-001"
% in_christ_alone_number_rhs = ##t

% B-004 - one page
% Abide With Me - One Page
% abide_with_me_number = ""
% abide_with_me_number_rhs = ##t

% B-005 - Two Pages
% How Beautiful - Two Pages
% how_beautiful_number = ""
% how_beautiful_number_rhs = ##t

% B-006 - One Page
% Christ the Lord is Risen Today - Mendelssohn - One Page
% christ_the_lord_is_risen_today_mendelssohn_number = ""
% christ_the_lord_is_risen_today_mendelssohn_number_rhs = ##t

% B-007 - One Page
% Hark! I Hear the Harps Eternal - One Page
% hark_I_hear_the_harps_eternal_number = ""
% hark_I_hear_the_harps_eternal_number_rhs = ##t

% B-008 - Two Pages
% Just As I Am - I Come Broken - Two Pages
% just_as_I_am_I_come_broken_number = "C-002"
% just_as_I_am_I_come_broken_number_rhs = ##f

% B-009 - Two Pages
% Magnificat - Two Pages
% magnificat_number = ""
% magnificat_number_rhs = ##f

% B-010 - Two Pages
% Just For Today - Two Pages
% just_for_today_number = ""
% just_for_today_number_rhs = ##f

% B-011 - One Page
% Ah Holy Jesus - Guess One Page
% ah_holy_jesus_number = ""
% ah_holy_jesus_number_rhs = ##f

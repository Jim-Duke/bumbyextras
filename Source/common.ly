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